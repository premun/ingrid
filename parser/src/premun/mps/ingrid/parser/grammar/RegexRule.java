package premun.mps.ingrid.parser.grammar;

public class RegexRule extends FlatLexerRule {
    public String regexp;

    public RegexRule(String name, String regexp) {
        super(name);
        this.regexp = regexp;
    }

    public RegexRule(String regexp) {
        // TODO: naming service
        this(java.util.UUID.randomUUID().toString(), regexp);
    }

    @Override
    public String getContent() {
        return regexp;
    }

    @Override
    public String toString() {
        return this.name
            + ":\t"
            + this.regexp
            + System.lineSeparator()
            + "\t\t;"
            + System.lineSeparator();
    }
}
