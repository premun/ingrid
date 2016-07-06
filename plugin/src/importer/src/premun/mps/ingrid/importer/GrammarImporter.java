package premun.mps.ingrid.importer;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.*;
import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.steps.*;
import premun.mps.ingrid.parser.*;
import premun.mps.ingrid.parser.grammar.*;

import java.io.*;

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
        // Delete all nodes
        SModelOperations
            .nodes(this.structureModel, null)
            .stream()
            .forEach(SNodeOperations::deleteNode);

        SModelOperations
            .nodes(this.editorModel, null)
            .stream()
            .forEach(SNodeOperations::deleteNode);

        SModelOperations
            .nodes(this.textGenModel, null)
            .stream()
            .forEach(SNodeOperations::deleteNode);
    }

    /**
     * Main method of the import process.
     *
     * @param fileName Name of the ANTLR grammar file to be imported.
     */
    public void importGrammars(File[] files) {
        initializeLanguage();

        GrammarParser parser = new GrammarParser();

        for (File f : files) {
            parser.parseFile(f.getPath());
        }

        this.grammar = parser.resolveGrammar();

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
