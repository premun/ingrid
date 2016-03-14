package premun.mps.ingrid.parser.grammar;

public class LiteralRule extends LexerRule {
    public String value;

    public LiteralRule(String name, String value) {
        super(name);
        this.value = value;
    }

    public LiteralRule(String value) {
        // TODO: naming service
        this(java.util.UUID.randomUUID().toString(), value);
    }

    @Override
    public String toString() {
        return this.name
            + ":\t"
            + this.value
            + System.lineSeparator()
            + "\t\t;"
            + System.lineSeparator();
    }
}
