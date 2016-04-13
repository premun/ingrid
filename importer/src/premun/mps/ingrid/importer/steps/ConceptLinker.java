package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

import java.util.*;

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
            // Concept representing current alternative
            SNode parent = this.findAlternativeConcept(rule, altIndex);

            List<RuleReference> alternative = rule.alternatives.get(altIndex);
            int childIndex = 0;
            int propertyIndex = 0;

            // For each element of that alternative..
            for (RuleReference childRef : alternative) {
                if (childRef.rule instanceof LiteralRule) {
                    // Literal rule will only appear in editor
                } else if (childRef.rule instanceof RegexRule) {
                    // Find regex type and create property for it
                    String linkName = childRef.rule.name + "_" + (++propertyIndex);
                    SNode tokenRule = this.findConceptByRule(childRef.rule);
                    NodeHelper.addPropertyToNode(parent, linkName, tokenRule);
                } else if (childRef.rule instanceof ParserRule) {
                    // Find referenced interface / concept
                    ParserRule child = (ParserRule) childRef.rule;
                    SNode childConcept = this.findConceptByRule(child);
                    NodeHelper.addChildToNode(parent, childConcept, child.name + "_" + (++childIndex), childRef.quantity);
                }
            }
        }
    }
}
