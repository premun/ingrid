package premun.mps.ingrid.importer;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.*;
import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.steps.*;
import premun.mps.ingrid.parser.*;
import premun.mps.ingrid.parser.grammar.*;

public class GrammarImporter {
    private SModel editorModel;
    private SModel structureModel;
    private SModel textGenModel;

    private GrammarInfo grammar;

    public GrammarImporter(SModel structureModel, SModel editorModel, SModel textGenModel) {
        this.editorModel = editorModel;
        this.structureModel = structureModel;
        this.textGenModel = textGenModel;
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

        SModelOperations
            .nodes(this.editorModel, null)
            .stream()
            .forEach(SNodeOperations::deleteNode);
    }

    /**
     * Main method of the import process.
     *
     * @param fileName Name of the ANTLR grammar file to be imported.
     */
    public void importGrammar(String fileName) {
        // TODO: should receive name of the language too
        initializeLanguage();

        this.grammar = GrammarParser.parseFile(fileName);

        ImportStep[] steps = new ImportStep[] {
            new ConceptImporter(),
            new RegexTransformer(),
            new ConceptLinker(),
            new AliasFinder(),
            new EditorBuilder(),
            new TextGenBuilder()
        };

        this.executeSteps(steps);
    }

    private void executeSteps(ImportStep[] steps) {
        // Initialize steps with data
        for (ImportStep step : steps) {
            step.Initialize(this.grammar, this.structureModel, this.editorModel, this.textGenModel);
        }

        // Execute steps
        for (ImportStep step : steps) {
            step.Execute();
        }
    }
}
