package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GrammarInfo {
    public String name;
    public Map<String, Rule> rules = new HashMap<>();
    public Rule rootRule = null;

    public GrammarInfo(ANTLRv4Parser.GrammarSpecContext context) {
        this.name = context.id().getText();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        sb
            .append("grammar ")
            .append(this.name)
            .append(";")
            .append(System.lineSeparator());

        for (Rule rule : this.rules.values()) {
            sb
                .append(rule.toString())
                .append(System.lineSeparator())
                .append(System.lineSeparator());
        }

        return sb.toString();
    }
}
