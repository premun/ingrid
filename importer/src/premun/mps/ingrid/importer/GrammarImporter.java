package premun.mps.ingrid.importer;

import jetbrains.mps.internal.collections.runtime.*;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.*;
import jetbrains.mps.smodel.adapter.structure.*;
import org.jetbrains.mps.openapi.language.*;
import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.*;
import premun.mps.ingrid.parser.grammar.*;

import java.util.*;

public class GrammarImporter {
    private SModel structureModel;
    private GrammarInfo grammar;

    public GrammarImporter(SModel structureModel) {
        this.structureModel = structureModel;
    }

    /**
     * Prepares the target language for import (clears it away).
     */
    private void initializeLanguage() {
        // TODO: Check if language exists and create it if it doesn't (or delete it and create it every time)
        // Delete all nodes
        SModelOperations
            .nodes(this.structureModel, null)
            .stream()
            .forEach(SNodeOperations::deleteNode);
    }

    /**
     * Main method of the import process.
     * @param fileName Name of the ANTLR grammar file to be imported.
     */
    public void importGrammar(String fileName) {
        // TODO: should receive name of the language too
        initializeLanguage();

        this.grammar = GrammarParser.parseFile(fileName);

        this.importTokens();
        this.importRules();

        // Set root rule's concept as rootable
        SNode rootConcept = this.translateRuleToConcept(this.grammar.rootRule);
        NodeHelper.setProperty(rootConcept, Properties.ROOTABLE, "true");
    }

    /**
     * Imports all regex lexer rules as constraint data type concepts.
     */
    private void importTokens() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof RegexRule)
            .forEach(r -> this.importToken((RegexRule) r));
    }

    /**
     * Import all parser rules as either interfaces (split rules) or actual concepts.
     */
    private void importRules() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .forEach(r -> this.importRule((ParserRule) r));
    }

    private void importRule(ParserRule rule) {
        if (rule.alternatives.size() > 1) {
            // Rule with more alternatives - we will create an interface
            // and a child for each alternative that will inherit this interface
            SNode iface = NodeHelper.createNode(NodeType.Interface, rule.name, rule.name, "Interfaces", this.structureModel);
            this.structureModel.addRootNode(iface);

            // For each alternative, there will be a concept
            for (int i = 0; i < rule.alternatives.size(); ++i) {
                // TODO: if only one element is contained inside, we can flatten this rule and delete this intermediate step by advancing to the next step
                String name = rule.name + "_" + (i + 1);
                SNode alternativeNode = this.importAlternative(rule.alternatives.get(i), name);
                this.linkInterfaceToConcept(iface, alternativeNode);
            }
        } else {
            this.importAlternative(rule.alternatives.get(0), rule.name);
        }
    }

    private void importToken(RegexRule rule) {
        SNode node = NodeHelper.createNode(NodeType.ConstraintDataType, rule.name, rule.name, "Tokens", this.structureModel);
        NodeHelper.setProperty(node, Properties.CONSTRAINT, ((RegexRule) rule).regexp);
        this.structureModel.addRootNode(node);
    }

    /**
     * Imports an alternative, which is a real concept containing several rules.
     *
     * Alternative is imported together with editor, that contains literal rules.
     * All children rules are set as children
     * Example:
     * element   :   '<' Name '>' Content '</' Name '>'
                 |   '<' Name '/>'
                 ;
     *
     * There will be created two concepts for this rule (two alternatives).
     *
     * @param alternative List of elements of given alternative.
     * @param name Name of the concept.
     * @return Created concept's node.
     */
    private SNode importAlternative(List<RuleReference> alternative, String name) {
        // Concrete element, we can create a concept
        SNode node = NodeHelper.createNode(NodeType.Concept, name, name, "Rules", this.structureModel);

        // TODO: add children elements (ParserRule/RegexRule children)
        // TODO: create editor
        // TODO: add literal rules into editor aspect

        this.structureModel.addRootNode(node);

        return node;
    }

    /**
     * Links an interface node and a concept node together (adds the interface to "implements" field).
     * @param iface Interface to be added.
     * @param concept Target concept node.
     */
    private void linkInterfaceToConcept(SNode iface, SNode concept) {
        // Create interface link
        SNode interfaceReference = NodeHelper.createNode(NodeType.InterfaceReference, null, null, null, null);
        SReferenceLink interfaceLink = MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x110356fc618L, 0x110356fe029L, "intfc");
        SLinkOperations.setTarget(interfaceReference, interfaceLink, iface);

        // Implements field of the concept
        SContainmentLink implementsLink = MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, 0x110358d693eL, "implements");
        // Add interface to implements field
        ListSequence.fromList(SLinkOperations.getChildren(concept, implementsLink)).addElement(interfaceReference);
    }

    /**
     * Finds a concept that was created for given rule.
     * @param rule Rule to be matched.
     * @return Concept node belonging to given rule.
     */
    private SNode translateRuleToConcept(Rule rule) {
        for (SNode node : this.structureModel.getRootNodes()) {
            if (rule.name.equals(node.getName())) {
                return node;
            }
        }

        return null;
    }
}
