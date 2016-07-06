package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.grammar.*;

public class Main {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.err.println("No arguments supplied. Arguments must be names of grammar files.");
            return;
        }

        GrammarParser parser = new GrammarParser();

        for (String file : args) {
            parser.parseFile(file);
        }

        GrammarInfo grammar = parser.resolveGrammar();
        System.out.println(grammar != null ? grammar.toString() : null);
    }
}
