package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.import_process.utility.*;

/**
 * Import step that closes the gap between ANTLRv4 regexes and MPS's format.
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
        SNode concept = this.findConceptByRule(rule);

        String constraint = rule.regexp;

        // Regex is stored as a string inside the constraint data type,
        // so slashes need to be double-escaped..
        constraint = constraint.replaceAll("\\\\", "\\\\\\\\");

        // All-except-from has different notation
        constraint = constraint.replaceAll("~\\[", "[^");

        // TODO: more escape sequences (\uXXX) etc.

        NodeHelper.setConstraint(concept, constraint);
    }
}
