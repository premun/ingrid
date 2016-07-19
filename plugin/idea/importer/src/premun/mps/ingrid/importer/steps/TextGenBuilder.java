package premun.mps.ingrid.importer.steps;

import premun.mps.ingrid.library.*;
import premun.mps.ingrid.model.*;

import java.util.*;
import java.util.regex.*;

/**
 * Step tries to generate TextGen aspects for all alternatives (concepts).
 */
public class TextGenBuilder extends ImportStep {
    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .map(r -> (ParserRule) r)
            .forEach(this::buildTextGen);
    }

    private void buildTextGen(ParserRule rule) {
        for (Alternative alternative : rule.alternatives) {
            TextGenHelper textGen = new TextGenHelper(alternative.node);

            // Go one by one element and create append statements for them
            List<RuleReference> elements = alternative.elements;
            for (int i = 0; i < elements.size(); i++) {
                RuleReference element = elements.get(i);

                if (element.rule instanceof LiteralRule) {
                    // Add constant content, no space needed
                    textGen.appendString(((LiteralRule) element.rule).value);
                } else {
                    // Will there be a space in front of us?
                    boolean prependSpace = false;
                    if(i > 0) {
                        // Are we neighbours with literal token?
                        Rule prevRule = elements.get(i - 1).rule;
                        if(prevRule instanceof LiteralRule) {
                            // We will only put space when tokens like "function" or "return" are present
                            // We check, whether the last character is alphabetic
                            // Turns out it works nice in a lot of cases, since user usually inserts alphanumeric content
                            prependSpace = Pattern.matches(".*[a-zA-Z_]$", ((LiteralRule) prevRule).value);
                        } else {
                            prependSpace = true;
                        }
                    }

                    if (element.rule instanceof RegexRule) {
                        // Add property value
                        textGen.appendProperty(element, prependSpace);
                    } else if (element.rule instanceof ParserRule) {
                        // Add child value
                        textGen.appendChild(element, prependSpace);
                    }
                }
            }

            // Root rule needs some extra information about output format
            if (rule == this.grammar.rootRule) {
                textGen.setupAsRootConcept(rule.name, "");
            }

            this.textGenModel.addRootNode(textGen.getTextGen());
        }
    }
}
