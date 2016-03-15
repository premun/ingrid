package premun.mps.ingrid.parser;

import org.junit.*;
import premun.mps.ingrid.parser.grammar.*;

import static org.junit.Assert.*;

public class FullTest {
    @Test
    @Ignore
    public void testGenerateGrammar() throws Exception {
        // TODO: Resources path
        GrammarInfo grammarInfo = GrammarParser.parseFile("SimpleXML.g4");

        assertNotNull(grammarInfo);
        assertEquals("SimpleXML", grammarInfo.name);

        // TODO: verify structure
    }
}