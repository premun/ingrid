package premun.mps.ingrid.parser.grammar;

import static premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

public abstract class LexerRule extends Rule {
    public LexerRule(String name) {
        super(name);
    }

    public static LexerRule ParseLexerRule(LexerRuleSpecContext context) {
        // TODO: Parse rule and either create Plain/Regex/Unresolved lexer rule
        return new UnresolvedLexerRule(context.TOKEN_REF().getText());
    }
}
