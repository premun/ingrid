package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.*;
import premun.mps.ingrid.importer.exceptions.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

import java.util.*;

/**
 * Import step that creates projection editors for all concepts.
 */
public class EditorBuilder extends ImportStep {
    private Shortcuts shortcuts = new Shortcuts();

    @Override
    public void Execute() {
        /*this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::findShortcuts);*/

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
     * @param rule Rule for which the editor is built.
     */
    private void buildEditor(ParserRule rule) {
        if (rule.alternatives.size() > 1) {
            // Interface - we need to find implementors
            for (Alternative alternative : rule.alternatives) {
                SNode editor = EditorHelper.createEditor(alternative, shortcuts);
                this.editorModel.addRootNode(editor);
            }
        } else {
            SNode concept = rule.node;

            if (concept == null) {
                throw new IngridException("Concept " + rule.name + " not found!");
            } else {
                SNode editor = EditorHelper.createEditor(rule.alternatives.get(0), shortcuts);
                this.editorModel.addRootNode(editor);
            }
        }
    }

    /*private void findShortcuts(ParserRule rule) {
        List<ShortcutItem> result = findEndNodes(rule);

        // Rules without shortcuts
        if (result.size() == 1) return;


        // Debug
        {
            StringBuilder sb = new StringBuilder();
            for (ShortcutItem item : result) {
                sb
                    .append("\n")
                    .append(rule.name)
                    .append(" (")
                    .append(item.description)
                    .append(")")
                    .append("\n");

                item.path.stream().forEach(
                    n -> sb
                        .append("  ")
                        .append(NodeHelper.getProperty(n, Property.Alias))
                        .append("\n")
                );
            }
            sb.append("#####################");

            GrammarImporter.LOGGER.info(sb.toString());
        }

        this.shortcuts.put(rule, result);
    }

    // TODO: better name
    private List<ShortcutItem> findEndNodes(ParserRule rule) {
        return this.findEndNodes(rule, new ArrayList<>());
    }

    private List<ShortcutItem> findEndNodes(ParserRule rule, List<SNode> path) {
        List<ShortcutItem> result = new ArrayList<>();

        // Interface - we need to find implementors
        for (Alternative alternative : rule.alternatives) {
            List<RuleReference> elements = alternative.elements;
            List<SNode> clonedPath = clonePath(path);

            // Is it a single parser rule reference (shortcut) or complicated rule with multiple elements (end rule)?
            if (elements.size() == 1 && elements.get(0).rule instanceof ParserRule && elements.get(0).quantity == Quantity.EXACTLY_ONE) {
                RuleReference onlyChild = elements.get(0);

                // Add current rule to path
                SNode concept = this.findConceptByRule(onlyChild.rule);
                clonedPath.add(concept);

                // Recursively find all end nodes
                result.addAll(this.findEndNodes((ParserRule) onlyChild.rule, clonedPath));
            } else {
                // More elements in an alternative -> not a shortcut
                clonedPath.add(alternative.node);
                result.add(new ShortcutItem(clonedPath));
            }
        }

        return result;
    }

    private static List<SNode> clonePath(List<SNode> list) {
        List<SNode> clone = new ArrayList<>(list.size());
        clone.addAll(list);
        return clone;
    }*/
}
