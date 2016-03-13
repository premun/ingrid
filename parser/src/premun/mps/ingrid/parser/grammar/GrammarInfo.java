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

    public void debugPrint() {
        System.out.println("grammar " + this.name + ";\n");

        for (Map.Entry<String, Rule> entry : this.rules.entrySet()) {
            System.out.println(entry.getKey());

            Rule value = entry.getValue();

            if (value instanceof ParserRule) {
                for (List<Rule> alternatives : ((ParserRule) value).alternatives) {
                    System.out.print("\t\t|   ");

                    for (Rule rule : alternatives) {
                        System.out.print(rule.name + " ");
                    }

                    System.out.println();
                }
            } else if (value instanceof LexerRule) {
                // System.out.println(((LexerRule) value).name);
            }
            
            System.out.println("\t\t;\n");
        }
    }
}
