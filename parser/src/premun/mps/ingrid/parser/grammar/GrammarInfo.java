package premun.mps.ingrid.parser.grammar;

import java.util.*;

public class GrammarInfo {
    public String name;
    public Map<String, Rule> rules = new HashMap<>();
    public Rule rootRule = null;

    public GrammarInfo(String name) {
        this.name = name;
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
