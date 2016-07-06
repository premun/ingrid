package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.grammar.*;

import java.util.*;

class ParserResult {
    public String grammarName;
    public Map<String, Rule> rules;
    public String rootRule;

    public ParserResult() {
        this.rules = new HashMap<>();
    }

    public ParserResult(String grammarName, Map<String, Rule> rules, String rootRule) {
        this.grammarName = grammarName;
        this.rules = rules;
        this.rootRule = rootRule;
    }
}
