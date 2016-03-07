package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser;
import premun.mps.ingrid.parser.antlr.ANTLRv4ParserBaseListener;
import premun.mps.ingrid.parser.grammar.*;

public class ANTLRv4Listener extends ANTLRv4ParserBaseListener {
    private GrammarInfo grammar;

    @Override
    public void enterGrammarSpec(ANTLRv4Parser.GrammarSpecContext ctx) {
        grammar = new GrammarInfo(ctx.id().getText());
    }

    @Override
    public void exitGrammarSpec(ANTLRv4Parser.GrammarSpecContext ctx) {
        System.out.println(grammar);
    }

    @Override
    public void enterLexerRuleSpec(ANTLRv4Parser.LexerRuleSpecContext ctx) {
        /*
        lexerRuleSpec
            :	DOC_COMMENT? FRAGMENT?
                TOKEN_REF COLON lexerRuleBlock SEMI
            ;
        */
        LexerRule rule = new LexerRule(ctx.TOKEN_REF().getText());
        grammar.rules.put(rule.name, rule);
        System.out.println("Found lexer rule: " + rule.name);
    }

    @Override
    public void enterParserRuleSpec(ANTLRv4Parser.ParserRuleSpecContext ctx) {
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
        ParserRule rule = new ParserRule(ctx.RULE_REF().getText());
        grammar.rules.put(rule.name, rule);
        System.out.println("Found parser rule: " + rule.name);
    }

    public GrammarInfo getGrammar() {
        return grammar;
    }
}

