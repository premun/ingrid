package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.import_process.utility.*;

import java.util.*;

public class ConceptContentsImporter extends ImportStep {

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::importRuleContents);
    }

    /**
     * Imports rule's alternatives (children and properties linking to different concepts).
     *
     * @param rule Rule to be imported.
     */
    private void importRuleContents(ParserRule rule) {
        // For each alternative..
        for (int altIndex = 0; altIndex < rule.alternatives.size(); altIndex++) {
            // Concept representing current alternative
            String conceptName = rule.name;
            if (rule.alternatives.size() > 1) {
                conceptName += "_" + (altIndex + 1);
            }
            
            SNode parent = this.findConceptByName(conceptName);

            List<RuleReference> alternative = rule.alternatives.get(altIndex);
            int childIndex = 0;
            int propertyIndex = 0;

            // For each element of that alternative..
            for (int elemIndex = 0; elemIndex < alternative.size(); elemIndex++) {
                RuleReference childRef = alternative.get(elemIndex);

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
