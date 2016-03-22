package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.grammar.*;

// TODO: Delete Main
public class Main {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println("No arguments supplied. First argument must be name of the grammar file.");
            return;
        }

        GrammarInfo grammar = GrammarParser.parseFile(args[0]);
        System.out.println(grammar != null ? grammar.toString() : null);
    }
}
