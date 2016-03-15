package premun.mps.ingrid.parser;

import org.junit.*;
import premun.mps.ingrid.parser.grammar.*;

import static org.junit.Assert.*;

public class GrammarParserTest {

    @Test
    public void testParseString() {
        String grammar = "grammar Foo;";
        GrammarInfo grammarInfo = GrammarParser.parseString(grammar);

        assertEquals("Foo", grammarInfo.name);
    }
}