package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import premun.mps.ingrid.parser.antlr.*;
import premun.mps.ingrid.parser.grammar.*;
import premun.mps.ingrid.parser.grammar.exception.*;

import java.io.*;

public class GrammarParser {
    public static GrammarInfo parseFile(String fileName) {
        File file = new File(fileName);

        FileInputStream fis;
        try {
            fis = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            throw new IngridParserException("File '" + fileName + "' not found");
        }

        byte[] data = new byte[(int) file.length()];

        try {
            fis.read(data);
            fis.close();
        } catch (IOException e) {
            e.printStackTrace();
            throw new IngridParserException("Error while reading the file: " + e.getMessage());
        }

        return parseString(new String(data));
    }

    public static GrammarInfo parseString(String grammar) {
        ANTLRv4Lexer lexer = new ANTLRv4Lexer(new ANTLRInputStream(grammar));

        // Get a list of matched tokens
        CommonTokenStream tokens = new CommonTokenStream(lexer);

        // Pass the tokens to the parser
        ANTLRv4Parser parser = new ANTLRv4Parser(tokens);

        // Walk it and attach our listener
        ParseTreeWalker walker = new ParseTreeWalker();
        GrammarWalker listener = new GrammarWalker();
        walker.walk(listener, parser.grammarSpec());

        ParserResult parseResult = listener.getParseResult();

        return GrammarResolver.generateGrammar(parseResult);
    }
}
