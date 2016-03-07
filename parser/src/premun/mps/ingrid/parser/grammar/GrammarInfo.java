package premun.mps.ingrid.parser.grammar;

import java.util.HashMap;
import java.util.Map;

public class GrammarInfo {
    public String name;
    public Map<String, Rule> rules;

    public GrammarInfo(String name) {
        this.rules = new HashMap<>();
        this.name = name;
    }
}
