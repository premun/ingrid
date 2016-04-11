package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.exceptions.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.import_process.utility.*;

/**
 * Import step that creates projectional editors for all concepts.
 */
public class EditorBuilder extends ImportStep {

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::buildEditor);
    }

    /**
     * Builds an editor for given rule.
     *
     * @param rule Rule for which the editor is built
     */
    private void buildEditor(ParserRule rule) {
        if (rule.alternatives.size() > 1) {
            // Interface - we need to find implementors
            for (int i = 0; i < rule.alternatives.size(); i++) {
                SNode concept = this.findAlternativeConcept(rule, i);
                SNode editor = EditorHelper.createEditor(concept, rule.alternatives.get(i));
                this.editorModel.addRootNode(editor);
            }
        } else {
            SNode concept = this.findConceptByRule(rule);

            if (concept == null) {
                throw new IngridException("Concept " + rule.name + " not found!");
            } else {
                SNode editor = EditorHelper.createEditor(concept, rule.alternatives.get(0));
                this.editorModel.addRootNode(editor);
            }
        }
    }
}
