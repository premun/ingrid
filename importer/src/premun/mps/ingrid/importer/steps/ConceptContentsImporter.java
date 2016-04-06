package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.import_process.utility.*;

import java.util.*;

public class ConceptContentsImporter extends ImportStep {

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .forEach(r -> this.importRuleContents((ParserRule) r));
    }

    /**
     * Imports rule's alternatives (children and properties linking to different concepts).
     *
     * @param rule Rule to be imported.
     */
    private void importRuleContents(ParserRule rule) {
        if (rule.alternatives.size() > 1) {
            // Interface - we need to find implementors
            for (int i = 0; i < rule.alternatives.size(); i++) {
                String name = rule.name + "_" + (i + 1);
                // TODO: catch exception
                SNode concept = this.findConceptByName(name);
                this.importConceptContent(concept, rule.alternatives.get(i));
            }
        } else {
            // TODO: catch exception
            SNode concept = this.findConceptByRule(rule);
            this.importConceptContent(concept, rule.alternatives.get(0));
        }
    }

    /**
     * Parses alternative's structure and imports children of a single alternative.
     *
     * @param parent Parent rule, whose alternative we are parsing
     * @param children Alternative's content
     */
    private void importConceptContent(SNode parent, List<RuleReference> children) {
        int propertyIndex = 0;
        int childIndex = 0;

        for (RuleReference reference : children) {
            Rule childRule = reference.rule;
            SNode child = this.findConceptByRule(childRule);
            if (childRule instanceof ParserRule) {
                String name = childRule.name + "_" + (++childIndex);
                NodeHelper.addChildToNode(parent, child, name, reference.quantity);
            } else if (childRule instanceof RegexRule) {
                String name = childRule.name + "_" + (++propertyIndex);
                NodeHelper.addPropertyToNode(parent, name, child);
            }
        }
    }
}
