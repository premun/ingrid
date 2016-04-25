package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;

/**
 * Import step that creates concepts, constraint data concepts and interface concepts for grammar rules.
 */
public class ConceptImporter extends ImportStep {

    @Override
    public void Execute() {
        // Creates constraint data concepts
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof RegexRule)
            .map(r -> (RegexRule) r)
            .forEach(this::importToken);

        // Creates interfaces for parser rules and concepts for alternatives
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::importRule);
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

        if (rule.alternatives.size() > 1) {
            // Rule with more alternatives - we will create an interface
            // and a child for each alternative that will inherit this interface
            SNode iface = this.nodeFactory.createInterface(rule.name, "Interfaces." + rule.name);
            this.structureModel.addRootNode(iface);
            rule.node = iface;

            // For each alternative, there will be a concept
            for (int i = 0; i < rule.alternatives.size(); ++i) {
                String name = this.namingService.generateName(rule.name + "_" + (i + 1));

                // Concrete element, we can create a concept
                SNode concept = this.nodeFactory.createConcept(name, name, rule.name, "Rules." + rule.name, rule.equals(this.grammar.rootRule));
                rule.alternatives.get(i).node = concept;

                // Link the parent split rule interface to this rule
                // NodeHelper.linkInterfaceToConcept(concept, iface);
                this.structureModel.addRootNode(concept);
            }
        } else {
            // Not a rule that splits into more rules - we create it directly
            SNode concept = this.nodeFactory.createConcept(rule.name, rule.name, rule.name, "Rules." + rule.name, rule.equals(this.grammar.rootRule));
            this.structureModel.addRootNode(concept);
            rule.node = concept;
            rule.alternatives.get(0).node = concept;
        }
    }

    /**
     * Imports a regex rule as a constraint data type element.
     *
     * @param rule Rule to be imported.
     */
    private void importToken(RegexRule rule) {
        rule.name = this.namingService.generateName(rule.name);
        SNode node = this.nodeFactory.createConstraintDataType(rule.name, rule.regexp, "Tokens");
        this.structureModel.addRootNode(node);
        rule.node = node;
    }
}
