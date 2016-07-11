package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import premun.mps.ingrid.model.*;
import premun.mps.ingrid.parser.antlr.*;
import premun.mps.ingrid.parser.exception.*;

import java.io.*;
import java.util.*;

public class GrammarParser {
    private ParserResult data = new ParserResult();

    public void parseFile(String fileName) {
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

        parseString(new String(data));
    }

    public void parseString(String grammar) {
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

        // Merge results with previous results
        if (parseResult.grammarName != null) {
            this.data.grammarName = parseResult.grammarName;
        }

        if (parseResult.rootRule != null) {
            this.data.rootRule = parseResult.rootRule;
        }

        for (Map.Entry<String, Rule> entry : parseResult.rules.entrySet()) {
            this.data.rules.put(entry.getKey(), entry.getValue());
        }
    }

    public GrammarInfo resolveGrammar() {
        return GrammarResolver.generateGrammar(this.data);
    }
}
