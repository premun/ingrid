package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

import java.util.*;
import java.util.function.*;

/**
 * Import step that creates projection editors for all concepts.
 */
public class EditorBuilder extends ImportStep {
    private Shortcuts shortcuts = new Shortcuts();
    private EditorHelper editorHelper;

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::findShortcuts);

        // Creates the backspace Action, that is used together with the shortcut autocomplete
        SNode backspaceAction = ShortcutActionHelper.createBackspaceAction(this.structureModel);
        this.editorModel.addRootNode(backspaceAction);

        this.editorHelper = new EditorHelper(this.structureModel, this.shortcuts, backspaceAction);

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
        // Interface - we need to find implementors
        for (Alternative alternative : rule.alternatives) {
            SNode editor = this.editorHelper.createEditor(alternative);
            this.editorModel.addRootNode(editor);
        }
    }

    /**
     * Finds a list of shortcuts for given rule and saves it into the shortcuts field.
     *
     * @param rule Rule
     */
    private void findShortcuts(ParserRule rule) {
        List<ShortcutItem> result = findShortcuts(rule, new ArrayList<>());

        // Rules without shortcuts, are rules that all have paths of length 1
        // If one of them had length > 1, we need to create the menu because of that
        if (result.stream().allMatch(s -> s.path.size() == 1)) return;

        this.findMatchingTexts(result);

        // Save all shortcuts for this rule
        this.shortcuts.put(rule, result);
    }

    /**
     * Finds a list of paths that lead from a rule to an end node
     * (a rule represented by a classic concept).
     *
     * Example:
     *           s :  a;
     *
     *           a :  c
     *             |  d
     *             |  'xxx'
     *             ;
     *
     *           c :  STRING;
     *           d :  DIGIT;
     *
     *           STRING : .+;
     *           DIGIT  : [0-9]+;
     *
     * Then findShortcuts(s) will find 3 different paths:
     *   1) s -> STRING (s->a_1->c)
     *   2) s -> DIGIT  (s->a_2->d)
     *   3) s -> 'xxx'  (s->a_3)
     *
     * @param rule Rule for which we want to find shortcuts.
     * @param path Alternatives that lead to that end node.
     * @return List of shortcuts.
     */
    private List<ShortcutItem> findShortcuts(ParserRule rule, List<SNode> path) {
        List<ShortcutItem> result = new ArrayList<>();

        // Interface - we need to find implementors
        for (Alternative alternative : rule.alternatives) {
            List<RuleReference> elements = alternative.elements;

            // Each alternative needs it's own path
            List<SNode> clonedPath = clonePath(path);

            if (elements.size() == 1 && elements.get(0).rule instanceof ParserRule && elements.get(0).quantity == Quantity.EXACTLY_ONE) {
                // A single parser rule reference (shortcut)
                ParserRule next = (ParserRule) elements.get(0).rule;

                // Add current rule to path
                clonedPath.add(alternative.node);

                // Recursively find all end nodes
                result.addAll(this.findShortcuts(next, clonedPath));
            } else {
                // More elements in an alternative -> not a shortcut but an end node
                if (clonedPath.isEmpty() || clonedPath.get(clonedPath.size() - 1) != alternative.node){
                    clonedPath.add(alternative.node);
                }

                ShortcutItem shortcut = new ShortcutItem(clonedPath);
                result.add(shortcut);
            }
        }

        return result;
    }

    /**
     * Finds the shortest unique description prefix for each item of a shortcut list
     * and saves it to the matchingText field.
     *
     * @param items Shortcut items.
     */
    private void findMatchingTexts(List<ShortcutItem> items) {
        for (ShortcutItem item : items) {
            int length = 1;

            while (length < item.description.length()) {
                String prefix = item.description.substring(0, length);

                final int finalLength = length;

                boolean samePrefixExists = items
                    .stream()
                    .filter(i -> i != item && i.description.length() >= finalLength)
                    .anyMatch(i -> prefix.equals(i.description.substring(0, finalLength)));

                if (samePrefixExists) {
                    ++length;
                } else {
                    break;
                }
            }

            item.matchingText = item.description.substring(0, length);
        }
    }

    /**
     * Makes a shallow copy of a List.
     *
     * @param list List to be copied.
     * @return Input copy.
     */
    private static List<SNode> clonePath(List<SNode> list) {
        List<SNode> clone = new ArrayList<>(list.size());
        clone.addAll(list);
        return clone;
    }
}
