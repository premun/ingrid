package premun.mps.ingrid.parser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import premun.mps.ingrid.parser.antlr.ANTLRv4Lexer;
import premun.mps.ingrid.parser.antlr.ANTLRv4Parser;
import premun.mps.ingrid.parser.grammar.GrammarInfo;

public class GrammarParser {
    public GrammarInfo parseFile(String fileName) {
        File file = new File(fileName);

        FileInputStream fis;
        try {
            fis = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
            return null;
        }

        byte[] data = new byte[(int) file.length()];

        try {
            fis.read(data);
            fis.close();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

        ANTLRv4Lexer lexer = new ANTLRv4Lexer(new ANTLRInputStream(new String(data)));

        // Get a list of matched tokens
        CommonTokenStream tokens = new CommonTokenStream(lexer);

        // Pass the tokens to the parser
        ANTLRv4Parser parser = new ANTLRv4Parser(tokens);

        // Walk it and attach our listener
        ParseTreeWalker walker = new ParseTreeWalker();
        ANTLRv4Listener listener = new ANTLRv4Listener();
        walker.walk(listener, parser.grammarSpec());

        return listener.getGrammar();
    }
}
