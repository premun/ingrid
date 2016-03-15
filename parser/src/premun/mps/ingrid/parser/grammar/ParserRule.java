package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

import java.util.ArrayList;
import java.util.List;

public class ParserRule extends Rule {
    public List<List<Rule>> alternatives = new ArrayList<>();

    public ParserRule(ParserRuleSpecContext ruleContext) {
        super(ruleContext.RULE_REF().getText());
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb
            .append(this.name)
            .append(System.lineSeparator());

        for (List<Rule> alternatives : this.alternatives) {
            sb.append("\t\t|   ");

            for (Rule rule : alternatives) {
                if (rule instanceof FlatLexerRule) {
                    sb.append(((FlatLexerRule) rule).getContent());
                } else {
                    sb.append(rule.name);
                }

                sb.append(" ");
            }

            sb.append(System.lineSeparator());
        }

        return sb.toString();
    }
}
