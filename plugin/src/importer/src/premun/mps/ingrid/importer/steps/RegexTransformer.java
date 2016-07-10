package premun.mps.ingrid.importer.steps;

import premun.mps.ingrid.parser.grammar.*;

/**
 * Import step that closes the gap between ANTLRv4 regexes and MPS's format (Java).
 * https://github.com/antlr/antlr4/blob/master/doc/lexer-rules.md#lexer-rule-elements
 */
public class RegexTransformer extends ImportStep {
    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof RegexRule)
            .map(r -> (RegexRule) r)
            .forEach(this::transformRegex);
    }

    /**
     * Transforms a regex into a form that is valid inside MPS.
     *
     * @param rule Constraint data type's rule.
     */
    private void transformRegex(RegexRule rule) {
        // Regex is stored as a string inside the constraint data type,
        // so slashes need to be doubly-escaped..
        rule.regexp = rule.regexp
            .replaceAll("\\\\", "\\\\\\\\")

        // All-except-from has different notation
            .replaceAll("~\\[", "[^")
            .replaceAll("~ \\[", "[^");
    }
}
