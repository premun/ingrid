package premun.mps.ingrid.parser.grammar;

import java.util.*;

public class ParserResult {
    public String grammarName;
    public Map<String, Rule> rules;
    public String rootRule;

    public ParserResult(String grammarName, Map<String, Rule> rules, String rootRule) {
        this.grammarName = grammarName;
        this.rules = rules;
        this.rootRule = rootRule;
    }
}
