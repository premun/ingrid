package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

/**
 * Import step that links concepts together by creating properties and children.
 */
public class ConceptLinker extends ImportStep {

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::linkRuleChildren);
    }

    /**
     * Imports rule's alternatives (children and properties linking to different concepts).
     *
     * @param rule Rule to be imported.
     */
    private void linkRuleChildren(ParserRule rule) {
        // For each alternative..
        for (int altIndex = 0; altIndex < rule.alternatives.size(); altIndex++) {
            Alternative alternative = rule.alternatives.get(altIndex);

            // Concept representing current alternative
            SNode parent = alternative.node;

            int childIndex = 0;
            int propertyIndex = 0;

            // For each element of that alternative..
            for (RuleReference childRef : alternative.elements) {
                if (childRef.rule instanceof LiteralRule) {
                    // Literal rule will only appear in editor
                } else if (childRef.rule instanceof RegexRule) {
                    // Find regex type and create property for it
                    String linkName = childRef.rule.name + "_" + (++propertyIndex);
                    SNode tokenRule = ((RegexRule) childRef.rule).node;
                    childRef.nodeReference = NodeHelper.addPropertyToNode(parent, linkName, tokenRule);
                } else if (childRef.rule instanceof ParserRule) {
                    // Find referenced interface / concept
                    ParserRule child = (ParserRule) childRef.rule;
                    SNode childConcept = child.node;
                    childRef.nodeReference = NodeHelper.addChildToNode(parent, childConcept, child.name + "_" + (++childIndex), childRef.quantity);
                }
            }
        }
    }
}
