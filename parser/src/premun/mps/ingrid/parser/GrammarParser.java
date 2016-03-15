package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import premun.mps.ingrid.parser.antlr.*;
import premun.mps.ingrid.parser.grammar.*;

import java.io.*;

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

        ParserResult parseResult = listener.getParseResult();

        return GrammarResolver.generateGrammar(parseResult);
    }
}
