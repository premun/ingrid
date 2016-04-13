package premun.mps.ingrid.importer;

import premun.mps.ingrid.parser.*;
import premun.mps.ingrid.parser.grammar.*;

import java.util.*;

// TODO: Delete Main
public class Main {
    public static void main(String[] args) {
        GrammarInfo grammar = GrammarParser.parseFile("/home/premun/Diplomka/ingrid/grammars/XML.g4");

        grammar.rules
            .values()
            .stream()
            .filter(r -> r instanceof ParserRule)
            .forEach(r -> importRuleContents((ParserRule) r));
    }

    private static void importRuleContents(ParserRule rule) {
        System.out.println("RULE " + rule.name);

        for (List<RuleReference> alternative : rule.alternatives) {
            for (RuleReference reference : alternative) {
                if (reference.rule instanceof ParserRule) {
                    System.out.println("  CHILD " + reference.rule.name);
                }
            }

            System.out.println("  --------------");
        }

        System.out.println("################");
    }
}
