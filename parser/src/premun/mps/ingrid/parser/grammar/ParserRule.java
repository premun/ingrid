package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

import java.util.*;

public class ParserRule extends Rule {
    public List<List<RuleReference>> alternatives = new ArrayList<>();

    public ParserRule(String name) {
        super(name);
    }

    public ParserRule(ParserRuleSpecContext ruleContext) {
        super(ruleContext.RULE_REF().getText());
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb
            .append(this.name)
            .append(System.lineSeparator());

        for (List<RuleReference> alternatives : this.alternatives) {
            sb.append("\t\t|   ");

            for (RuleReference ref : alternatives) {
                if (ref.rule instanceof FlatLexerRule) {
                    sb
                        .append(((FlatLexerRule) ref.rule).getContent())
                        .append(ref.quantity.toString());
                } else {
                    sb
                        .append(ref.rule.name)
                        .append(ref.quantity.toString());
                }

                sb.append(" ");
            }

            sb.append(System.lineSeparator());
        }

        return sb.toString();
    }
}
