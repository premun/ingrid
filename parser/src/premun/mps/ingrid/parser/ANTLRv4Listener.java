package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.GrammarSpecContext;
import premun.mps.ingrid.parser.antlr.ANTLRv4ParserBaseListener;
import premun.mps.ingrid.parser.grammar.*;

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

        this.grammar.debugPrint();
    }

    /**
     * Resolves rules that weren't resolved during first parsing.
     * Flattens lexer rules so that they become either strings or regexes.
     */
    private void processGrammar() {
        Map<String, Rule> rules = this.grammar.rules;

        rules
                .values()
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
                Rule r = alternative.get(i);

                if (r instanceof UnresolvedRule) {
                    if (rules.containsKey(r.name)) {
                        alternative.set(i, rules.get(r.name));
                    } else {
                        System.err.println("Couldn't resolve rule '" + r.name + "'");
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
        LexerRule rule = new LexerRule(ctx.TOKEN_REF().getText());
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

