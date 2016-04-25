package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.plugin.library.*;

/**
 * Step tries to generate text_gen aspects of the language.
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

        // TODO: create special concept for root rule (with filename etc.)
    }

    private void buildTextGen(ParserRule rule) {
        for (Alternative alternative : rule.alternatives) {
            SNode textGen = TextGenHelper.buildTextGen(alternative.node, alternative.elements);
            this.textGenModel.addRootNode(textGen);
        }
    }
}
