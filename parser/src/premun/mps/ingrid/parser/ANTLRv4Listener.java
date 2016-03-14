package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import premun.mps.ingrid.parser.antlr.*;
import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.GrammarSpecContext;
import premun.mps.ingrid.parser.grammar.*;

import java.util.*;

import static premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

/**
 * Class that handles walking through imported grammar and constructs the tree.
 *
 * After the grammar is parsed:
 * 1) References inside parser rules are resolved.
 * 2) Lexer rules are flattened into a single regexp or a string literal.
 *
 * Parsed grammar representation is then available.
 */
public class ANTLRv4Listener extends ANTLRv4ParserBaseListener {
    private GrammarInfo grammar;
    private Map<String, Rule> rules;

    private ParserRule currentParserRule;
    private LexerRule currentLexerRule;

    @Override
    public void enterGrammarSpec(GrammarSpecContext context) {
        this.grammar = new GrammarInfo(context);
        this.rules = new HashMap<>();
    }

    /**
     * Last action after grammar was walked through. Resolve + flatten rules.
     * @param context Parser context
     */
    @Override
    public void exitGrammarSpec(GrammarSpecContext context) {
        this.processGrammar();

        for (Rule r : this.rules.values()) {
            System.out.println(r.toString());
        }
    }

    /**
     * Resolves rules that weren't resolved during first parsing. That means
     * that everything that was discovered during first walk and is saved as
     * a string name will be replaced by reference to the this.rules element.
     * Flattens lexer rules so that they become either strings or regexps.
     */
    private void processGrammar() {
        // Lexer rules must be resolved first so that parser rules can reference them
        // Lexer rules do not contain references to parser rules
        // We need to copy the array because we are changing it inside forEach
        new ArrayList<>(this.rules.keySet())
            .stream()
            .filter(key -> rules.get(key) instanceof LexerRule)
            .forEach(key -> flattenLexerRule(rules.get(key)));

        // We need to copy the array because we are changing it inside forEach
        new ArrayList<>(this.rules.values())
            .stream()
            .filter(x -> x instanceof ParserRule)
            .forEach(rule -> resolveParserRule((ParserRule) rule));
    }

    /**
     * Flattens rule into a regexp or string literal.
     * TODO: Cyclic (faulty) ANTLR definition will cause endless loop and stack overflow.
     * @param rule Rule to be resolved.
     */
    private void flattenLexerRule(Rule rule) {
        // Because some rules were resolved as a dependency of another rule,
        // it might happen that it
        if (!(rule instanceof LexerRule)) return;

        LexerRule lexerRule = (LexerRule) rule;
        StringBuilder expression = new StringBuilder();

        // If we have only one element, we might be looking at a literal rule..
        // We count all elements of all alternatives:
        int totalElements = lexerRule
            .alternatives
            .stream()
            .mapToInt(List::size)
            .sum();

        if (totalElements == 1) {
            Rule only = lexerRule.alternatives.get(0).get(0);
            if (only instanceof LiteralRule) {
                Rule newRule = new LiteralRule(rule.name, ((LiteralRule) only).value);
                this.rules.put(rule.name, newRule);
                return;
            }
        }

        // Indicates whether a rule will be a plain rule or a regex rule
        /*boolean isRegexp = lexerRule.alternatives.size() == 1;

        for (List<Rule> alternative : lexerRule.alternatives) {
            for (Rule element : alternative) {
            }
        }

        LexerRule flatRule = isRegexp
            ? new RegexRule(rule.name, expression.toString())
            : new LiteralRule(rule.name, expression.toString());

        rules.put(rule.name, flatRule);*/
    }

    /**
     * Matches (string) references inside rule alternatives with actual
     * pointers to rule definitions.
     * @param rule Rule to be resolved
     */
    private void resolveParserRule(ParserRule rule) {
        // For each alternative line..
        for (List<Rule> alternative : rule.alternatives) {
            // For each element on the line..
            for (int i = 0; i < alternative.size(); ++i) {
                Rule element = alternative.get(i);

                if (element instanceof UnresolvedParserRule) {
                    if (this.rules.containsKey(element.name)) {
                        alternative.set(i, this.rules.get(element.name));
                    } else {
                        throw new UnsupportedOperationException(
                            "Couldn't resolve  Parser rule '" + element.name + "'");
                    }

                } else if (element instanceof UnresolvedLexerRule) {
                    String lexerRule = element.name;

                    // Name of a Lexer rule
                    // Lexer rules were resolved first, so they are ready to be referenced
                    if (this.rules.containsKey(lexerRule)) {
                        alternative.set(i, this.rules.get(lexerRule));
                    } else {
                        throw new UnsupportedOperationException(
                            "Couldn't resolve Lexer rule '" + lexerRule + "' (inside " + rule.name + ")");
                    }
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
     * @param context Parser context.
     */
    @Override
    public void enterAlternative(AlternativeContext context) {
        ArrayList<Rule> elements = new ArrayList<>();

        // Recursively recognize elements
        for (ParseTree element : context.children) {
            parseAlternativeElement(element, elements);
        }
        
        currentParserRule.alternatives.add(elements);
    }

    /**
     * Called when a new lexer rule is met.
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

    @Override
    public void enterLexerAlt(LexerAltContext context) {
        ArrayList<Rule> elements = new ArrayList<>();

        // Recursively recognize elements
        for (ParseTree element : context.children) {
            parseAlternativeElement(element, elements);
        }

        currentLexerRule.alternatives.add(elements);
    }

    /**
     * Explores the full tree of a node, finds all token types
     * and transforms them into Rule objects.
     * @param node Starting tree node
     * @param elements Output parameter containing all found Rule objects
     */
    private void parseAlternativeElement(ParseTree node, List<Rule> elements) {
        // Either a lexer rule name, regexp or 'string'
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
            Rule rule = new RuleQuantifier((EbnfSuffixContext) node);
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

    // TODO: delete this debug method
    private void printTree(String name, RuleContext context) {
        System.out.println("------------------------------");
        System.out.println("TREE " + name);
        for (int i = 0; i < context.getChildCount(); ++i) {
            printTree(context.getChild(i), 2);
        }
        System.out.println("------------------------------");
    }

    // TODO: delete this debug method
    private void printTree(ParseTree tree, int indent) {
        System.out.print(new String(new char[indent]).replace("\0", " "));

        String classname = tree
            .getClass()
            .toString()
            .replace("class premun.mps.ingrid.parser.antlr.ANTLRv4Parser$", "")
            .replace("class org.antlr.v4.runtime.tree.", "");

        if (classname.equals("TerminalNodeImpl")) {
            classname += " (" + tree.getText() + ")";
        }

        System.out.println(classname);

        for (int i = 0; i < tree.getChildCount(); i++) {
            ParseTree child = tree.getChild(i);
            printTree(child, indent + 4);
        }
    }

    public GrammarInfo getGrammar() {
        return grammar;
    }
}

