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
class ANTLRv4Listener extends ANTLRv4ParserBaseListener {
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
}
