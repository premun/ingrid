package premun.mps.ingrid.parser.grammar;

public abstract class FlatLexerRule extends Rule {
    public FlatLexerRule(String name) {
        super(name);
    }

    public abstract String getContent();
}
