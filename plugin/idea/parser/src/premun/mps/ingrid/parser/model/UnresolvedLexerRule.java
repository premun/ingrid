package premun.mps.ingrid.parser.model;

/**
 * Class represents a placeholder that is placed inside a grammar tree
 * during the first walk, before the grammar rules are fully resolved.
 */
public class UnresolvedLexerRule extends UnresolvedRule {
    public UnresolvedLexerRule(String name) {
        super(name);
    }

    @Override
    public String toString() {
        return "[Unresolved lexer rule " + this.name + "]";
    }
}
