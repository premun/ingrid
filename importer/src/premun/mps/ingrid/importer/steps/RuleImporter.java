package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.import_process.utility.*;

public class RuleImporter extends ImportStep {

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .forEach(r -> this.importRule((ParserRule) r));
    }

    /**
     * Imports parser rule as an interface or a concept (not their children or editors).
     *
     * For split rules, all alternatives are imported as empty concepts.
     * Example:
     * element:   '<' Name '>' Content '</' Name '>'
     *        |   '<' Name '/>'
     *        ;
     *
     * There will be created one interface and two concepts for this rule that will implements this concept.
     * They will be named element (interface) and element_1 and element_2 (concepts).
     *
     * @param rule Rule to be imported.
     */
    private void importRule(ParserRule rule) {
        // Generate unique name
        rule.name = this.namingService.generateName(rule.name);

//        if (rule.alternatives.size() > 1) {
            // Rule with more alternatives - we will create an interface
            // and a child for each alternative that will inherit this interface
//            SNode iface = this.nodeFactory.createInterface(rule.name, "Rules." + rule.name);
//            this.structureModel.addRootNode(iface);

            // For each alternative, there will be a concept
            for (int i = 0; i < rule.alternatives.size(); ++i) {
                String name = this.namingService.generateName(rule.name + "_" + (i + 1));

                // Concrete element, we can create a concept
                SNode concept = this.nodeFactory.createConcept(name, name, "Rules." + rule.name, rule.equals(this.grammar.rootRule));

                // Link the parent split rule interface to this rule
//                NodeHelper.linkInterfaceToConcept(concept, iface);
                this.structureModel.addRootNode(concept);
            }
//        } else {
            // Not a rule that splits into more rules - we create it directly
//            SNode concept = this.nodeFactory.createConcept(rule.name, rule.name, "Rules." + rule.name, rule.equals(this.grammar.rootRule));
//            this.structureModel.addRootNode(concept);
//        }
    }
}
