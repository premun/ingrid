package premun.mps.ingrid.importer;

import premun.mps.ingrid.parser.*;
import premun.mps.ingrid.parser.grammar.*;

import java.util.*;

// TODO: Delete Main
public class Main {
    public static void main(String[] args) {
        GrammarInfo grammar = GrammarParser.parseFile("/home/premun/Diplomka/ingrid/grammars/SimpleXML.g4");
    }
}
