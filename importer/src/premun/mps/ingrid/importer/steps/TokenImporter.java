package premun.mps.ingrid.importer.steps;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.grammar.*;

public class TokenImporter extends ImportStep {

    @Override
    public void Execute() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof RegexRule)
            .forEach(r -> this.importToken((RegexRule) r));
    }

    /**
     * Imports a regex rule as a constraint data type element.
     *
     * @param rule Rule to be imported.
     */
    private void importToken(RegexRule rule) {
        rule.name = this.namingService.generateName(rule.name);
        SNode node = this.nodeFactory.createConstraintDataType(rule.name, rule.regexp, "Tokens");
        this.structureModel.addRootNode(node);
    }
}
