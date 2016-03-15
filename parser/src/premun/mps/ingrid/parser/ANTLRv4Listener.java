package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.tree.*;
import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;
import premun.mps.ingrid.parser.antlr.*;
import premun.mps.ingrid.parser.grammar.*;

import java.util.*;
import java.util.stream.*;

/**
 * Class that handles walking through imported grammar and constructs the tree.
 * <p>
 * After the grammar is parsed:
 * 1) References inside parser rules are resolved.
 * 2) Lexer rules are flattened into a single regex or a string literal.
 * <p>
 * Parsed grammar representation is then available.
 */
public class ANTLRv4Listener extends ANTLRv4ParserBaseListener {
    private GrammarInfo grammar;
    private Map<String, Rule> rules;

    private ParserRule currentParserRule;
    private LexerRule currentLexerRule;

    @Override
    public void enterGrammarSpec(GrammarSpecContext context) {
        this.grammar = new GrammarInfo(context.id().getText());
        this.rules = new HashMap<>();
    }

    /**
     * Last action after grammar was walked through. Resolve + flatten rules.
     *
     * @param context Parser context
     */
    @Override
    public void exitGrammarSpec(GrammarSpecContext context) {
        this.buildGrammar();

        System.out.println(this.grammar.toString());
    }

    /**
     * Resolves rules that weren't resolved during first parsing. That means
     * that everything that was discovered during first walk and is saved as
     * a string name will be replaced by reference to the this.rules element.
     * Flattens lexer rules so that they become either strings or regexs.
     */
    private void buildGrammar() {
        // Lexer rules must be resolved first so that parser rules can reference them
        // Lexer rules do not contain references to parser rules
        // We need to copy the array because we are changing it inside forEach
        new ArrayList<>(this.rules.keySet())
            .stream()
            .filter(name -> this.rules.get(name) instanceof LexerRule)
            .forEach(name -> {
                // We always get updated Rule from rule set again, because we might have
                // updated it
                FlatLexerRule flatRule = flattenLexerRule(this.rules.get(name));
                this.grammar.rules.put(name, flatRule);
            });

        // We need to copy the array because we are changing it inside forEach
        new ArrayList<>(this.rules.values())
            .stream()
            .filter(r -> r instanceof ParserRule)
            .forEach(rule -> {
                resolveParserRule((ParserRule) rule);
                this.grammar.rules.put(rule.name, rule);
            });
    }

    /**
     * Flattens rule into a regex or string literal.
     * TODO: Cyclic (faulty) ANTLR definition will cause endless loop and stack overflow.
     *
     * @param rule Rule to be resolved.
     */
    private FlatLexerRule flattenLexerRule(Rule rule) {
        // Because some rules were resolved as a dependency of another rule,
        // it might happen that it is already flattened.
        if (rule instanceof FlatLexerRule) {
            return (FlatLexerRule) rule;
        }

        if (rule instanceof UnresolvedLexerRule) {
            throw new UnsupportedOperationException(
                "Rule '" + rule.name + "' must be resolved before flattening");
        }

        LexerRule lexerRule = (LexerRule) rule;

        // If we have only one element, we might be looking at a literal rule..
        // We count all elements of all alternatives:
        if (lexerRule.alternatives.size() == 1 && lexerRule.alternatives.get(0).size() == 1) {
            Rule only = lexerRule.alternatives.get(0).get(0);
            if (only instanceof LiteralRule) {
                return new LiteralRule(rule.name, ((LiteralRule) only).value);
            }
        }

        // We can construct one big regex out of sub rules
        List<List<String>> regexs = new ArrayList<>();

        // Gather all sub rule contents (or resolve them, if wasn't resolved before)
        for (List<Rule> alternative : lexerRule.alternatives) {
            List<String> subRegex = new ArrayList<>();

            for (Rule element : alternative) {
                // Is each sub element already resolved?
                if (!(element instanceof FlatLexerRule)) {
                    if (element instanceof QuantifierRule) {
                        int lastIndex = subRegex.size() - 1;

                        if (lastIndex < 0) {
                            throw new UnsupportedOperationException("Quantifier suffix found with no prefix regex");
                        }

                        // We append it to the previous rule
                        String quantifier = ((QuantifierRule) element).quantity.toString();
                        subRegex.set(lastIndex, subRegex.get(lastIndex) + quantifier);

                    } else if (element instanceof UnresolvedLexerRule) {
                        if (!this.rules.containsKey(element.name)) {
                            throw new UnsupportedOperationException("Failed to resolve lexer rule '" + element.name + "'");
                        }

                        FlatLexerRule flatRule = flattenLexerRule(this.rules.get(element.name));
                        this.rules.put(element.name, flatRule);
                        subRegex.add(flatRule.getContent());
                    } else {
                        throw new UnsupportedOperationException(
                            "Rule '" + element.name + "' (" + element.getClass().getSimpleName() + ") failed to be flattened");
                    }
                } else {
                    subRegex.add(((FlatLexerRule) element).getContent());
                }
            }

            regexs.add(subRegex);
        }

        // Build regex from gathered strings
        return new RegexRule(rule.name, buildLexerRegex(regexs));
    }

    /**
     * Helper method that turns {{a,b,c}, {d,e}} into ((a|b|c)|(d|e)).
     *
     * @param alternatives Array of arrays of strings.
     * @return Flattened string ready for regex.
     */
    private String buildLexerRegex(List<List<String>> alternatives) {
        StringBuilder expression = new StringBuilder();

        if (alternatives.size() == 1) {
            expression.append(String.join("", alternatives.get(0)));
        } else {
            for (List<String> alt : alternatives) {
                if (expression.length() == 0) {
                    expression.append('(');
                } else {
                    expression.append('|');
                }

                expression
                    .append('(')
                    .append(String.join("", alt))
                    .append(')');
            }

            expression.append(')');
        }

        return expression.toString();
    }

    /**
     * Matches (string) references inside rule alternatives with actual
     * pointers to rule definitions.
     *
     * @param rule Rule to be resolved
     */
    private void resolveParserRule(ParserRule rule) {
        // For each alternative line..
        for (List<RuleReference> alternative : rule.alternatives) {
            // For each element on the line..
            for (int i = 0; i < alternative.size(); ++i) {
                RuleReference ref = alternative.get(i);

                // Rule referenced in this alternative element
                Rule r = ref.rule;

                if (r instanceof UnresolvedRule) {
                    // Lexer rules were resolved first, so they are ready to be referenced
                    if (this.rules.containsKey(r.name)) {
                        Rule lookedUpRule = this.rules.get(r.name);
                        alternative.set(i, new RuleReference(lookedUpRule, ref.quantity));
                    } else {
                        throw new UnsupportedOperationException(
                            "Couldn't resolve rule '" + r.name + "' (inside " + rule.name + ")");
                    }
                } else if (r instanceof QuantifierRule) {
                    if (i == 0) {
                        throw new UnsupportedOperationException(
                            "Quantifier suffix found with no previous reference");
                    }

                    // Apply quantifier to previous element of alternative
                    alternative.get(i - 1).quantity = ((QuantifierRule) r).quantity;
                    // Remove quantifier itself
                    alternative.remove(i);
                    i--;
                }
            }
        }
    }

    @Override
    public void enterParserRuleSpec(ParserRuleSpecContext context) {
        /*
        parserRuleSpec
            :	DOC_COMMENT?
                ruleModifiers? RULE_REF argActionBlock? ruleReturns? throwsSpec?
                localsSpec?
                rulePrequel*
                COLON
                ruleBlock
                SEMI
                exceptionGroup
            ;
        */
        currentParserRule = new ParserRule(context);

        // First rule in file is the root rule
        if (grammar.rootRule == null) {
            grammar.rootRule = currentParserRule;
        }

        this.rules.put(currentParserRule.name, currentParserRule);
    }

    /**
     * Parses possible alternatives that the rule can split into.
     *
     * @param context Parser context.
     */
    @Override
    public void enterAlternative(AlternativeContext context) {
        ArrayList<Rule> elements = new ArrayList<>();

        // Rules that can dissolve into empty string
        if (context.children == null) {
            elements.add(new LiteralRule(""));
            return;
        }

        // Recursively recognize elements
        for (ParseTree element : context.children) {
            parseAlternativeElement(element, elements);
        }

        // Transform rules into references
        List<RuleReference> references = elements
            .stream()
            .map(RuleReference::new)
            .collect(Collectors.toList());

        currentParserRule
            .alternatives
            .add(references);
    }

    /**
     * Called when a new lexer rule is met.
     *
     * @param context Parser context
     */
    @Override
    public void enterLexerRuleSpec(LexerRuleSpecContext context) {
        /*
        lexerRuleSpec
            :	DOC_COMMENT? FRAGMENT?
                TOKEN_REF COLON lexerRuleBlock SEMI
            ;
        */
        currentLexerRule = new LexerRule(context);
        this.rules.put(currentLexerRule.name, currentLexerRule);
    }

    /**
     * Parses alternative branches of a lexer rule.
     *
     * @param context Parser context.
     */
    @Override
    public void enterLexerAlt(LexerAltContext context) {
        ArrayList<Rule> elements = new ArrayList<>();

        // Rules that can dissolve into empty string
        if (context.children == null) {
            elements.add(new LiteralRule(""));
            return;
        }

        // Recursively recognize elements
        for (ParseTree element : context.children) {
            parseAlternativeElement(element, elements);
        }

        currentLexerRule.alternatives.add(elements);
    }

    /**
     * Explores the full tree of a node, finds all token types
     * and transforms them into Rule objects.
     *
     * @param node     Starting tree node
     * @param elements Output parameter containing all found Rule objects
     */
    private void parseAlternativeElement(ParseTree node, List<Rule> elements) {
        // Either a lexer rule name, regex or 'string'
        if (node instanceof LexerAtomContext || node instanceof TerminalContext) {
            String name = node.getText();

            Rule rule;

            char first = name.charAt(0);
            if ('A' <= first && first <= 'Z') {
                rule = new UnresolvedLexerRule(name);
            } else if (first == '\'') {
                rule = new LiteralRule(name);
            } else {
                rule = new RegexRule(name);
            }

            elements.add(rule);
            return;
        }

        // ? * +
        if (node instanceof EbnfSuffixContext) {
            Rule rule = new QuantifierRule((EbnfSuffixContext) node);
            elements.add(rule);
            return;
        }

        // Reference to another rule, we save it's name
        if (node instanceof RulerefContext) {
            Rule rule = new UnresolvedParserRule(node.getChild(0).getText());
            elements.add(rule);
            return;
        }

        // Recursively explore further
        for (int i = 0; i < node.getChildCount(); i++) {
            parseAlternativeElement(node.getChild(i), elements);
        }
    }

    public GrammarInfo getGrammar() {
        return grammar;
    }
}
