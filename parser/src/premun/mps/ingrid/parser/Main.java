package premun.mps.ingrid.parser;

import premun.mps.ingrid.parser.grammar.GrammarInfo;

public class Main {
    public static void main(String[] args) {
        if(args.length != 1) {
            System.out.println("No arguments supplied. First argument must be name of the grammar file.");
            return;
        }

        GrammarParser parser = new GrammarParser();
        GrammarInfo grammar = parser.parseFile(args[0]);
    }
}
