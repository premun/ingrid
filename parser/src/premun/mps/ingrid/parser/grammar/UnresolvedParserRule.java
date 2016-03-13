package premun.mps.ingrid.parser.grammar;

public class UnresolvedParserRule extends Rule {
    public UnresolvedParserRule(String name) {
        super(name);
    }

    @Override
    public String toString() {
        return "Unresolved rule: " + this.name;
    }
}
