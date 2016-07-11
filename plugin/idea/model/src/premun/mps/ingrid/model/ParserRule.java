package premun.mps.ingrid.model;

import org.jetbrains.mps.openapi.model.*;

import java.util.*;

public class ParserRule extends Rule {
    public List<Alternative> alternatives = new ArrayList<>();

    public SNode node = null;

    public ParserRule(String name) {
        super(name);
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
