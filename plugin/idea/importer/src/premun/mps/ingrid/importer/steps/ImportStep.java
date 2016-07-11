package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.*;
import premun.mps.ingrid.importer.exceptions.*;
import premun.mps.ingrid.library.*;
import premun.mps.ingrid.model.*;

/**
 * Abstract import step.
 */
public abstract class ImportStep {
    GrammarInfo grammar;
    SModel structureModel;
    SModel editorModel;
    SModel textGenModel;
    NodeFactory nodeFactory;
    NamingService namingService;

    public void Initialize(GrammarInfo grammar, SModel structureModel, SModel editorModel, SModel textGenModel) {
        this.grammar = grammar;
        this.structureModel = structureModel;
        this.editorModel = editorModel;
        this.textGenModel = textGenModel;

        this.namingService = new NamingService(structureModel);
        this.nodeFactory = new NodeFactory(structureModel);
    }

    public abstract void Execute();

    /**
     * Finds a concept by it's name.
     *
     * @param name Concept to be matched.
     * @return Concept node belonging to given rule.
     */
    final SNode findConceptByName(String name) throws IngridException {
        for (SNode node : this.structureModel.getRootNodes()) {
            if (name.equals(node.getName())) {
                return node;
            }
        }

        throw new IngridException("Concept " + name + " not found!");
    }

    /**
     * Finds a concept that was created for given rule.
     *
     * @param rule Rule to be matched.
     * @return Concept node belonging to given rule.
     */
    final SNode findConceptByRule(Rule rule) throws IngridException {
        for (SNode node : this.structureModel.getRootNodes()) {
            if (rule.name.equals(node.getName()) || (rule.name + "_1").equals(node.getName())) {
                return node;
            }
        }

        throw new IngridException("Concept for rule " + rule.name + " not found!");
    }

    /**
     * Finds a concept representing given alternative.
     *
     * @param rule Rule whose alternative we are resolving.
     * @param index Index of the alternative.
     * @return Concept node belonging to given alternative.
     * @throws IngridException
     */
    protected final SNode findConceptByAlternative(ParserRule rule, int index) throws IngridException {
        if (rule.alternatives.size() == 1) {
            return this.findConceptByRule(rule);
        } else {
            return this.findConceptByName(rule.name + "_" + (index + 1));
        }
    }
}
