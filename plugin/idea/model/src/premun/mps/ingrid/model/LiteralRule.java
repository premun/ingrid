package premun.mps.ingrid.model;

public class LiteralRule extends FlatLexerRule {
    public String value;

    public LiteralRule(String name, String value) {
        super(name);
        // Strip apostrophes 'foo' -> foo
        if (value.startsWith("'")) {
            this.value = value.substring(1, value.length() - 1);
        } else {
            this.value = value;
        }
    }

    public LiteralRule(String value) {
        // TODO: naming service
        this(java.util.UUID.randomUUID().toString(), value);
    }

    @Override
    public String getContent() {
        return value;
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
