package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.GrammarSpecContext;
import premun.mps.ingrid.parser.antlr.ANTLRv4ParserBaseListener;
import premun.mps.ingrid.parser.grammar.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

public class ANTLRv4Listener extends ANTLRv4ParserBaseListener {
    private GrammarInfo grammar;

    @Override
    public void enterGrammarSpec(GrammarSpecContext ctx) {
        grammar = new GrammarInfo(ctx);
    }

    @Override
    public void exitGrammarSpec(GrammarSpecContext ctx) {
        this.processGrammar();

        System.out.println(this.grammar.toString());
    }

    /**
     * Resolves rules that weren't resolved during first parsing. That means
     * that everything that was discovered during first walk and is saved as
     * a string name will be replaced by reference to the grammar.rules element.
     * Flattens lexer rules so that they become either strings or regexes.
     */
    private void processGrammar() {
        Map<String, Rule> rules = this.grammar.rules;

        // We need to copy the array because we are changing it inside
        new ArrayList<>(rules.values())
                .stream()
                .filter(x -> x instanceof ParserRule)
                .forEach(rule -> resolveParserRule((ParserRule) rule));
    }

    /**
     * Matches (string) references inside rule alternatives with actual
     * pointers to rule definitions.
     * @param rule Rule to be
     */
    private void resolveParserRule(ParserRule rule) {
        Map<String, Rule> rules = this.grammar.rules;

        // For each alternative line..
        for (List<Rule> alternative : rule.alternatives) {
            // For each element on the line..
            for (int i = 0; i < alternative.size(); ++i) {
                Rule element = alternative.get(i);

                if (element instanceof UnresolvedParserRule) {
                    if (rules.containsKey(element.name)) {
                        alternative.set(i, rules.get(element.name));
                    } else {
                        throw new UnsupportedOperationException("Couldn't resolve rule '" + element.name + "'");
                    }
                } else if (element instanceof UnresolvedTerminalRule) {
                    // String literal, e.g. '<' and '>' inside:
                    // rule: '<' Name '>';
                    if (element.name.startsWith("'")) {
                        // Either link reference
                        if (!rules.containsKey(element.name)) {
                            // Or create new Rule item
                            rules.put(element.name, new PlainLexerRule(element.name));
                        }

                        alternative.set(i, rules.get(element.name));
                    } else {
                        // TODO: Resolve lexer rules
                    }
                }
            }
        }
    }

    @Override
    public void enterLexerRuleSpec(LexerRuleSpecContext ctx) {
        /*
        lexerRuleSpec
            :	DOC_COMMENT? FRAGMENT?
                TOKEN_REF COLON lexerRuleBlock SEMI
            ;
        */
        LexerRule rule = LexerRule.ParseLexerRule(ctx);
        grammar.rules.put(rule.name, rule);
    }

    @Override
    public void enterParserRuleSpec(ParserRuleSpecContext ctx) {
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
        ParserRule rule = new ParserRule(ctx);

        // First rule in file is the root rule
        if (grammar.rootRule == null) {
            grammar.rootRule = rule;
        }

        grammar.rules.put(rule.name, rule);
    }

    public GrammarInfo getGrammar() {
        return grammar;
    }
}

