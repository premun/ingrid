package premun.mps.ingrid.parser.grammar;

import org.jetbrains.mps.openapi.model.*;
import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

import java.util.*;

public class ParserRule extends Rule {
    public List<Alternative> alternatives = new ArrayList<>();

    public SNode node = null;

    public ParserRule(String name) {
        super(name);
    }

    public ParserRule(ParserRuleSpecContext ruleContext) {
        super(ruleContext.RULE_REF().getText().trim());
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb
            .append(this.name)
            .append(System.lineSeparator());

        for (Alternative alternative : this.alternatives) {
            sb.append("\t\t|   ");

            for (RuleReference ref : alternative.elements) {
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
