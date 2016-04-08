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
            .forEach(r -> this.importRuleContents((ParserRule) r));
    }

    /**
     * Imports rule's alternatives (children and properties linking to different concepts).
     *
     * @param rule Rule to be imported.
     */
    private void importRuleContents(ParserRule rule) {
        // For each alternative..
        for (int altIndex = 0; altIndex < rule.alternatives.size(); altIndex++) {
            List<RuleReference> alternative = rule.alternatives.get(altIndex);
            int childIndex = 0;
            int propertyIndex = 0;

            // Concept representing current alternative
            SNode parent = this.findConceptByName(rule.name + "_" + (altIndex + 1));

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
                    // Either directly insert child if one, or create an interface if more concepts can be inserted
                    ParserRule child = (ParserRule) childRef.rule;

                    if (child.alternatives.size() > 1) {
                        // Split rule? More children?
                        // We create an interface and find all children and assign it to them..
                        String ifaceName = this.namingService.generateName("I" + rule.name + "_" + (altIndex + 1) + "_" + (elemIndex + 1));
                        SNode iface = this.nodeFactory.createInterface(ifaceName, "Interfaces." + rule.name);
                        this.structureModel.addRootNode(iface);

                        // TODO: find all concepts that will implements this interface

                        NodeHelper.addChildToNode(parent, iface, ifaceName + "_" + (++childIndex), childRef.quantity);
                    } else {
                        // TODO: find concept, that will be the child
                        SNode childConcept = null;
                        String linkName = child.name + "_" + (++childIndex);

                        NodeHelper.addChildToNode(parent, childConcept, linkName, childRef.quantity);
                    }
                }
            }
        }
    }
}
