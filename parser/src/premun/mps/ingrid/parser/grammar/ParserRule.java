package premun.mps.ingrid.parser.grammar;

import org.antlr.v4.runtime.tree.ParseTree;
import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

import java.util.ArrayList;
import java.util.List;

public class ParserRule extends Rule {
    public List<List<Rule>> alternatives = new ArrayList<>();

    private ParserRuleSpecContext context;

    public ParserRule(ParserRuleSpecContext ruleContext) {
        super(ruleContext.RULE_REF().getText());
        this.context = ruleContext;
        this.parseAlternatives();
    }

    /**
     * Parses possible alternatives that the rule can split into.
     */
    private void parseAlternatives() {
        if (this.context.ruleBlock() != null) {
            RuleAltListContext alternatives = this.context.ruleBlock().ruleAltList();

            if (alternatives != null) {
                // We increment index by two so we skip OR (|) tokens
                for (int i = 0; i < alternatives.getChildCount(); i += 2) {
                    ParseTree alternative = alternatives.getChild(i);
                    List<Rule> parsedAlternatives = new ArrayList<>();

                    // For every token inside an alternative...
                    for (int j = 0; j < alternative.getChildCount(); j++) {
                        // We explore the full tree (e.g. "| rule? element" are three tokens)
                        // and add it to a list
                        parseAlternative(alternative.getChild(j), parsedAlternatives);
                    }

                    this.alternatives.add(parsedAlternatives);
                }
            }
        }
    }

    /**
     * Explores the full tree of a node, finds all token types
     * and transforms them into Rule objects.
     * @param node Starting tree node
     * @param result Output parameter containing all found Rule objects
     */
    private void parseAlternative(ParseTree node, List<Rule> result) {
        // Either a token rule or 'string'
        if (node instanceof TerminalContext) {
            Rule rule = new UnresolvedTerminalRule((TerminalContext) node);
            result.add(rule);
            return;
        }

        // ?,* or +
        if (node instanceof EbnfSuffixContext) {
            Rule rule = new RuleQuantifier((EbnfSuffixContext) node);
            result.add(rule);
            return;
        }

        // Reference to another rule, we save it's name
        if (node instanceof RulerefContext) {
            Rule rule = new UnresolvedParserRule(node.getChild(0).getText());
            result.add(rule);
            return;
        }

        // Recursively explore further
        for (int i = 0; i < node.getChildCount(); i++) {
            parseAlternative(node.getChild(i), result);
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb
            .append(this.name)
            .append("\t:")
            .append(System.lineSeparator());

        for (List<Rule> alternatives : this.alternatives) {
            sb.append("\t\t|   ");

            for (Rule rule : alternatives) {
                sb
                    .append(rule.name)
                    .append(" ");
            }

            sb.append(System.lineSeparator());
        }

        return sb.toString();
    }

    /*
    private void printTree(ParseTree tree, int indent) {
        System.out.print(new String(new char[indent]).replace("\0", " "));

        String classname = tree
                .getClass()
                .toString()
                .replace("class premun.mps.ingrid.parser.antlr.ANTLRv4Parser$", "")
                .replace("class org.antlr.v4.runtime.tree.", "");

        if (classname.equals("TerminalNodeImpl")) {
            classname += " (" + tree.getText() + ")";
        }

        System.out.println(classname);

        for (int i = 0; i < tree.getChildCount(); i++) {
            ParseTree child = tree.getChild(i);
            printTree(child, indent + 4);
        }
    }*/
}
