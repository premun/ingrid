package premun.mps.ingrid.parser.grammar;

/**
 * Class represents a placeholder that is placed inside a grammar tree
 * during the first walk, before the grammar rules are fully resolved.
 */
public class UnresolvedParserRule extends Rule {
    public UnresolvedParserRule(String name) {
        super(name);
    }

    @Override
    public String toString() {
        return "[Unresolved parser rule " + this.name + "]";
    }
}
