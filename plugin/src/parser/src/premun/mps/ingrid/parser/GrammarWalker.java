package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.tree.*;
import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;
import premun.mps.ingrid.parser.antlr.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.parser.grammar.exception.*;

import java.util.*;

/**
 * Class that handles walking through imported grammar and constructs the tree.
 * <p>
 * After the grammar is parsed:
 * 1) References inside parser rules are resolved.
 * 2) Lexer rules are flattened into a single regex or a string literal.
 * <p>
 * Parsed grammar representation is then available.
 */
class GrammarWalker extends ANTLRv4ParserBaseListener {
    private ParserRule currentParserRule;
    private LexerRule currentLexerRule;

    private String grammarName;
    private Map<String, Rule> rules;
    private String rootRule;

    public ParserResult getParseResult() {
        return new ParserResult(grammarName, rules, rootRule);
    }

    @Override
    public void enterGrammarSpec(GrammarSpecContext context) {
        this.grammarName = context.id().getText();
        this.rules = new HashMap<>();
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
        if (rootRule == null) {
            rootRule = currentParserRule.name;
        }

        this.rules.put(currentParserRule.name, currentParserRule);
    }

    @Override
    public void enterLabeledAlt(LabeledAltContext context) {
        Alternative alternative = parseParserAlternative(context.alternative());

        if (context.children.size() > 0) {
            ParseTree lastChild = context.children.get(context.children.size() - 1);
            if (lastChild instanceof IdContext) {
                alternative.comment = lastChild.getText();
            }
        }

        currentParserRule.alternatives.add(alternative);
    }

    /**
     * Parses an alternative of a parser rule (the whole rule line).
     *
     * @param context Rule alternative
     * @return List of elements that make up the alternative
     */
    private Alternative parseParserAlternative(AlternativeContext context) {
        Alternative alternative = new Alternative();

        if (context == null || context.children == null) {
            // TODO: warning?
            return alternative;
        }

        // Parse every element into a RuleReference
        context
            .children
            .stream()
            .map(c -> parseParserAlternativeElement((ElementContext) c))
            .filter(ref -> ref != null)
            .forEach(alternative.elements::add);

        return alternative;
    }

    /**
     * Parses an element of an alternative into a RuleReference.
     *
     * Example:
     *     rule : a (b | (c | d))* DIGIT?
     *          ;
     *
     * Will be parsed into 3 references:
     *   1) Reference to a parser rule 'a'
     *   2) Reference to a newly created block rule for the middle part
     *   3) Reference to a lexer rule 'DIGIT'
     *
     * There will be following quantities:
     *   1) Exactly one
     *   2) Any number
     *   3) Max one
     *
     * @param element Element context
     * @return A rule reference representing element
     */
    private RuleReference parseParserAlternativeElement(ElementContext element) {
        Quantity quantity;

        // Do we have a quantifier in the end?
        if (element.ebnfSuffix() == null) {
            quantity = Quantity.EXACTLY_ONE;
        } else {
            quantity = Quantity.FromString(element.ebnfSuffix().getText());
        }

        Rule rule = null;

        for (ParseTree child : element.children) {
            if (child instanceof AtomContext) {
                ParseTree grandChild = child.getChild(0);
                String name = grandChild.getText();

                if (grandChild instanceof RulerefContext) {
                    // Parser rule name
                    rule = new UnresolvedParserRule(name);
                } else if (grandChild instanceof LexerAtomContext || grandChild instanceof TerminalContext) {
                    // A literal/regex/lexer rule name
                    char first = name.charAt(0);

                    if ('A' <= first && first <= 'Z') {
                        rule = new UnresolvedLexerRule(name);
                    } else if (first == '\'') {
                        rule = new LiteralRule(name);
                    } else {
                        rule = new RegexRule(name);
                    }
                }
            } else if (child instanceof EbnfContext) {
                EbnfContext blockRule = (EbnfContext) child;

                // We encountered a block rule inside alternative!
                // We need to create a new rule that will represent this..
                //
                // Example:
                //     rule : a (b | (c | d))* DIGIT?
                //          ;
                // Inside first alternative there is a block '(b | (c | d))*'
                rule = createBlockRule(blockRule);

                // For block rules, quantifier is bound to block suffix, not element ebnf suffix...
                if (blockRule.blockSuffix() == null) {
                    quantity = Quantity.EXACTLY_ONE;
                } else {
                    quantity = Quantity.FromString(blockRule.blockSuffix().getText());
                }
            }
        }

        if (rule == null) {
            // This happens, when rule contains some action block, such as:
            // actionRule  : {_input.LT(1).getText().equals("set")}? Name LT ;
            return null;
        }

        return new RuleReference(rule, quantity);
    }

    /**
     * When a rule contains a block inside its alternative, we need to create a special block rule.
     *
     * Example:
     *     rule : a (b | (c | d))* DIGIT?
     *          ;
     * Inside first alternative there is a block '(b | (c | d))*'
     *
     * @param context Block context
     * @return Newly created rule
     */
    private Rule createBlockRule(EbnfContext context) {
        // Generate a new name in the form of [RULE]_block_[A]_[I], where:
        //   RULE is name of the parent rule
        //   A is index of alternative inside rule
        //   I is index of block inside alternative
        int a = currentParserRule.alternatives.size() + 1;
        String name = currentParserRule.name + "_block_" + a + "_";
        int i = 1;
        while (this.rules.containsKey(name + i)) {
            i++;
        }
        name += i;

        // Create the rule itself
        ParserRule rule = new ParserRule(name);
        this.rules.put(name, rule);

        // Parse every alternative of this block rule recursively
        // The rule usually looks like (a | b | c)
        // We want to skip terminals '(', '|', ')' so we filter
        context
            .block()
            .altList()
            .children
            .stream()
            .filter(n -> n instanceof AlternativeContext)
            .map(n -> parseParserAlternative((AlternativeContext) n))
            .forEach(alt -> rule.alternatives.add(alt));

        return rule;
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

        // Parse all alternatives of this rule
        context
            .lexerRuleBlock()
            .lexerAltList()
            .children
            .stream()
            .filter(alternative -> alternative instanceof LexerAltContext)
            .forEach(alternative ->
                this.parseLexerRule((LexerAltContext) alternative)
            );
    }

    /**
     * Parses alternative branches of a lexer rule.
     *
     * @param context Parser context.
     */
    public void parseLexerRule(LexerAltContext context) {
        ArrayList<Rule> elements = new ArrayList<>();

        // Rules that can dissolve into empty string
        if (context.children == null) {
            elements.add(new LiteralRule(""));
            currentLexerRule.alternatives.add(elements);
            return;
        }

        // Recursively recognize elements
        for (ParseTree element : context.children) {
            parseLexerAlternativeElement(element, elements);
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
    private void parseLexerAlternativeElement(ParseTree node, List<Rule> elements) {
        // Either a lexer rule name, regex (range) or 'string'
        if (node instanceof LexerAtomContext || node instanceof TerminalContext) {
            Rule rule;

            if (node.getChildCount() == 1 && node.getChild(0) instanceof RangeContext) {
                ParseTree range = node.getChild(0);
                String rangeStart = range.getChild(0).getText();
                String rangeEnd = range.getChild(2).getText();

                // We have quoted literals, we need to strip quotes (apostrophes)
                rangeStart = rangeStart.substring(1, rangeStart.length() - 1);
                rangeEnd = rangeEnd.substring(1, rangeEnd.length() - 1);

                rule = new RegexRule("[" + rangeStart + "-" + rangeEnd + "]");
            } else {
                String value = node.getText();

                char first = value.charAt(0);
                if ('A' <= first && first <= 'Z') {
                    rule = new UnresolvedLexerRule(value);
                } else if (first == '\'') {
                    rule = new LiteralRule(value);
                } else {
                    rule = new RegexRule(value);
                }
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

        // Subrule blocks
        // Name : NonDigit (NonDigit | Digit)* ;
        //                 ^         ^      ^
        // When we meet this block, we just surround it with ()
        // Then, whenever we meet the | character, we know, we are inside a block,
        // because top level | are ignored in the enterLexerRuleSpec() method.
        if (node instanceof TerminalNodeImpl) {
            if (node.getText().equals("(")) {
                elements.add(new BlockStartRule());
                return;
            }

            if (node.getText().equals(")")) {
                elements.add(new BlockEndRule());
                return;
            }

            if (node.getText().equals("|")) {
                elements.add(new BlockAltRule());
                return;
            }
        }

        // Recursively explore further
        for (int i = 0; i < node.getChildCount(); i++) {
            parseLexerAlternativeElement(node.getChild(i), elements);
        }
    }

    /**
     * Method useful for debugging - prints the full AST, that ANTLR parsed.
     *
     * @param tree AST to be printed
     */
    private static void debugPrintANTLRTree(ParseTree tree) {
        debugPrintANTLRTree(tree, 0);
    }

    private static void debugPrintANTLRTree(ParseTree tree, int indent) {
        System.out.print(new String(new char[indent]).replace("\0", " "));

        String classname = tree.getClass().getSimpleName();

        if (classname.equals("TerminalNodeImpl")) {
            classname += " (" + tree.getText() + ")";
        }

        System.out.println(classname);

        for (int i = 0; i < tree.getChildCount(); i++) {
            ParseTree child = tree.getChild(i);
            debugPrintANTLRTree(child, indent + 4);
        }
    }
}
