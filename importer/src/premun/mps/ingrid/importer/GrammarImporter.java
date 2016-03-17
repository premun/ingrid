package premun.mps.ingrid.importer;

import jetbrains.mps.lang.smodel.generator.smodelAdapter.*;
import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.*;
import premun.mps.ingrid.parser.grammar.*;

public class GrammarImporter {
    private SModel structureModel;
    private GrammarInfo grammar;

    public GrammarImporter(SModel structureModel) {
        this.structureModel = structureModel;
    }

    private void initializeLanguage() {
        // Delete all nodes
        SModelOperations
            .nodes(this.structureModel, null)
            .stream()
            .forEach(SNodeOperations::deleteNode);
    }

    public void importGrammar(String fileName) {
        initializeLanguage();

        this.grammar = GrammarParser.parseFile(fileName);

        this.importTokens();
        this.importRules();
    }

    private void importRules() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .forEach(r -> this.importRule((ParserRule) r));
    }

    private void importTokens() {
        this.grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof FlatLexerRule)
            .forEach(r -> this.importToken((FlatLexerRule) r));
    }

    private void importRule(ParserRule rule) {
        SNode node = null;

        if (rule.alternatives.size() > 1) {
            // Split rule - we will create an interface
            node = NodeHelper.createNode(NodeType.Interface, rule.name, rule.name, "Interfaces", this.structureModel);
        } else {
            // Concrete element, we can create a concept
            node = NodeHelper.createNode(NodeType.Concept, rule.name, rule.name, "Rules", this.structureModel);

            if (rule.equals(this.grammar.rootRule)) {
                NodeHelper.setProperty(node, Properties.ROOTABLE, "true");
            }
        }

        this.structureModel.addRootNode(node);
    }

    private void importToken(FlatLexerRule rule) {
        if (rule instanceof RegexRule) {
            SNode node = NodeHelper.createNode(NodeType.ConstraintDataType, rule.name, rule.name, "Tokens", this.structureModel);
            NodeHelper.setProperty(node, Properties.CONSTRAINT, ((RegexRule) rule).regexp);
            this.structureModel.addRootNode(node);
        }
    }
}
