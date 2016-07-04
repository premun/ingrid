package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

import java.util.*;

/**
 * Import step that links concepts together by creating properties and children.
 */
public class ConceptLinker extends ImportStep {

    private Shortcuts shortcuts = new Shortcuts();

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::createConceptFields);

        addInterfacesToEndNodes();
    }

    /**
     * Imports rule's alternatives (children and properties linking to different concepts).
     *
     * @param rule Rule to be imported.
     */
    private void createConceptFields(ParserRule rule) {
        // For each alternative..
        for (int altIndex = 0; altIndex < rule.alternatives.size(); altIndex++) {
            Alternative alternative = rule.alternatives.get(altIndex);

            // Concept representing current alternative
            SNode parent = alternative.node;

            int childIndex = 0;
            int propertyIndex = 0;

            // For each element of that alternative..
            for (RuleReference childRef : alternative.elements) {
                if (childRef.rule instanceof LiteralRule) {
                    // Literal rule will only appear in editor
                } else if (childRef.rule instanceof RegexRule) {
                    // Create concept for token, if referenced for the first time
                    RegexRule regexRule = ((RegexRule) childRef.rule);
                    if (regexRule.node == null) {
                        regexRule.name = this.namingService.generateName(regexRule.name);
                        SNode node = this.nodeFactory.createConstraintDataType(regexRule.name, regexRule.regexp, "Tokens");
                        this.structureModel.addRootNode(node);
                        regexRule.node = node;
                    }

                    // Find regex type and create property for it
                    String linkName = regexRule.name + "_" + (++propertyIndex);
                    SNode tokenRule = regexRule.node;
                    childRef.nodeReference = NodeHelper.addPropertyToNode(parent, linkName, tokenRule);
                } else if (childRef.rule instanceof ParserRule) {
                    // Find referenced interface / concept
                    ParserRule child = (ParserRule) childRef.rule;
                    SNode childConcept = child.node;
                    childRef.nodeReference = NodeHelper.addChildToNode(parent, childConcept, child.name + "_" + (++childIndex), childRef.quantity);
                }
            }
        }
    }

    /**
     * Finds all paths from interfaces to end nodes and link interfaces there.
     */
    private void addInterfacesToEndNodes() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::findEndNodes);

        for (ParserRule key : this.shortcuts.keySet()) {
            for (Shortcut shortcut : this.shortcuts.get(key)) {
                // Last node is the target node, nodes before represent interfaces bound to parser rules
                SNode endNode = shortcut.path.get(shortcut.path.size() - 1);

                for (int i = 0; i < shortcut.path.size() - 1; i++) {
                    NodeHelper.linkInterfaceToConcept(endNode, shortcut.path.get(i));
                }
            }
        }
    }

    /**
     * Finds a list of shortcuts for given rule and saves it into the shortcuts field.
     *
     * @param rule Rule
     */
    private void findEndNodes(ParserRule rule) {
        List<Shortcut> result = findEndNodes(rule, new ArrayList<>());

        // Rules without shortcuts, are rules that all have paths of length 1
        // If one of them had length > 1, we need to create the menu because of that
        if (result.stream().allMatch(s -> s.path.size() == 1)) return;

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
     * Then findEndNodes(s) will find 3 different paths:
     *   1) s -> STRING (s->a_1->c)
     *   2) s -> DIGIT  (s->a_2->d)
     *   3) s -> 'xxx'  (s->a_3)
     *
     * @param rule Rule for which we want to find shortcuts.
     * @param path Alternatives that lead to that end node.
     * @return List of shortcuts.
     */
    private List<Shortcut> findEndNodes(ParserRule rule, List<SNode> path) {
        List<Shortcut> result = new ArrayList<>();

        // Interface - we need to find implementors
        for (Alternative alternative : rule.alternatives) {
            List<RuleReference> elements = alternative.elements;

            // Each alternative needs it's own path
            List<SNode> clonedPath = clonePath(path);

            if (elements.size() == 1 && elements.get(0).rule instanceof ParserRule && elements.get(0).quantity == Quantity.EXACTLY_ONE) {
                // A single parser rule reference (shortcut)
                ParserRule next = (ParserRule) elements.get(0).rule;

                // Add current rule to path
                clonedPath.add(rule.node);

                // Recursively find all end nodes
                result.addAll(this.findEndNodes(next, clonedPath));
            } else {
                // More elements in an alternative -> not a shortcut but an end node
                clonedPath.add(rule.node);
                if (clonedPath.isEmpty() || clonedPath.get(clonedPath.size() - 1) != alternative.node){
                    clonedPath.add(alternative.node);
                }

                Shortcut shortcut = new Shortcut(clonedPath);
                result.add(shortcut);
            }
        }

        return result;
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
