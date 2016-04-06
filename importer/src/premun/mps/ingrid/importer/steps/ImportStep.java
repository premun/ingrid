package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.import_process.utility.*;

public abstract class ImportStep {
    protected GrammarInfo grammar;
    protected SModel structureModel;
    protected SModel editorModel;
    protected NodeFactory nodeFactory;
    protected NamingService namingService;

    public void Initialize(GrammarInfo grammar, SModel structureModel, SModel editorModel) {
        this.grammar = grammar;
        this.structureModel = structureModel;
        this.editorModel = editorModel;

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
    protected SNode findConceptByName(String name) {
        for (SNode node : this.structureModel.getRootNodes()) {
            if (name.equals(node.getName())) {
                return node;
            }
        }

        throw new RuntimeException("Concept " + name + " not found!");
    }

    /**
     * Finds a concept that was created for given rule.
     *
     * @param rule Rule to be matched.
     * @return Concept node belonging to given rule.
     */
    protected SNode findConceptByRule(Rule rule) {
        for (SNode node : this.structureModel.getRootNodes()) {
            if (rule.name.equals(node.getName())) {
                return node;
            }
        }

        throw new RuntimeException("Concept for rule " + rule.name + " not found!");
    }
}
