package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.importer.exceptions.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

import java.util.*;

/**
 * Step tries to build an alias for each concept out of literals contained inside.
 */
public class AliasFinder extends ImportStep {
    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::findAlias);
    }

    /**
     * Tries to build an alias out of literals inside of the given rule.
     *
     * @param rule Rule for which we are building the alias.
     */
    private void findAlias(ParserRule rule) {
        for (int i = 0; i < rule.alternatives.size(); i++) {
            Alternative alternative = rule.alternatives.get(i);
            SNode concept = alternative.node;

            StringBuilder alias = new StringBuilder();

            // Try to find a literals inside
            alternative.elements
                .stream()
                .filter(r -> r.rule instanceof LiteralRule)
                .map(r -> (LiteralRule) r.rule)
                .forEach(r -> alias.append(alias.length() == 0 ? "" : " ").append(r.value));

            if (alias.length() == 0) {
                if(alternative.elements.size() == 1) {
                    alias
                        .append(this.capitalize(alternative.elements.get(0).rule.name))
                        .append(" ")
                        .append(rule.name.toLowerCase());
                }
            }

            if(alias.length() > 0) {
                String newAlias = alias.toString();
                NodeHelper.setProperty(concept, Property.Alias, newAlias);
                alternative.alias = newAlias;
            }
        }
    }

    private String capitalize(String s) {
        return s.substring(0, 1).toUpperCase() + s.substring(1).toLowerCase();
    }
}
