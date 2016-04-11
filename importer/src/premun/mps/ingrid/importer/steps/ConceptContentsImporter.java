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
                    ParserRule child = (ParserRule) childRef.rule;

                    // List of rules that this child breaks into
                    List<SNode> grandChildren = this.findChildConcepts(child);

                    String childName = rule.name + "_" + (altIndex + 1) + "_" + (elemIndex + 1);

                    // Either link child directly or create an interface if more concepts can be inserted
                    if (grandChildren.size() == 1) {
                        NodeHelper.addChildToNode(parent, grandChildren.get(0), child.name + "_" + (++childIndex), childRef.quantity);
                    } else {
                        String ifaceName = this.namingService.generateName("I" + childName);
                        SNode iface = this.nodeFactory.createInterface(ifaceName, "Interfaces." + rule.name);
                        this.structureModel.addRootNode(iface);

                        // Link interface to all possible children
                        for (SNode grandChild : grandChildren) {
                            NodeHelper.linkInterfaceToConcept(grandChild, iface);
                        }

                        NodeHelper.addChildToNode(parent, iface, child.name + "_" + (++childIndex), childRef.quantity);
                    }
                }
            }
        }
    }

    /**
     * Searches for all concepts that could inherit given interface.
     * That means all that given rule breaks into, effectively skipping empty levels.
     *
     * @param rule Root rule where search starts.
     */
    private List<SNode> findChildConcepts(ParserRule rule) {
        List<SNode> result = new ArrayList<>();

        for (int i = 0; i < rule.alternatives.size(); i++) {
            List<RuleReference> alternative = rule.alternatives.get(i);

            // Try to skip levels that are not important
            if (alternative.size() == 1) {
                Rule r = alternative.get(0).rule;

                if (r instanceof ParserRule) {
                    result.addAll(findChildConcepts((ParserRule) r));
                    continue;
                }
            }

            SNode child = this.findConceptByName(rule.name + "_" + (i + 1));
            result.add(child);
        }

        return result;
    }
}
