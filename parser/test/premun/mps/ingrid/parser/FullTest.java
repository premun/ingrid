package premun.mps.ingrid.parser;

import org.junit.*;
import premun.mps.ingrid.parser.grammar.*;

import java.net.*;
import java.util.*;

import static org.junit.Assert.*;

public class FullTest {
    @Test
    public void testGenerateGrammar() throws Exception {
        String filePath = getClass().getResource("/SimpleXML.g4").getPath();
        GrammarInfo grammar = GrammarParser.parseFile(filePath);

        assertNotNull(grammar);
        assertEquals("SimpleXML", grammar.name);

        String[] parserRules = {"document", "comment", "element"};
        // All present
        assertTrue(Arrays.stream(parserRules).allMatch(r -> grammar.rules.containsKey(r)));
        // All resolved
        assertTrue(Arrays.stream(parserRules).allMatch(r -> grammar.rules.get(r) instanceof ParserRule));

        String[] lexerRules = {"Content", "Name", "NameChar", "LT"};
        // All present
        assertTrue(Arrays.stream(lexerRules).allMatch(r -> grammar.rules.containsKey(r)));
        // All resolved
        assertTrue(Arrays.stream(lexerRules).allMatch(r -> grammar.rules.get(r) instanceof FlatLexerRule));

        // Random specific tests:

        assertEquals("document", grammar.rootRule.name);
        assertTrue(grammar.rootRule instanceof ParserRule);

        ParserRule document = (ParserRule) grammar.rootRule;

        // document: comment? element
        List<RuleReference> ruleRefs = document.alternatives.get(0);
        assertEquals(2, ruleRefs.size());
        assertEquals(Quantity.MAX_ONE, ruleRefs.get(0).quantity);
        assertEquals(Quantity.EXACTLY_ONE, ruleRefs.get(1).quantity);
        assertTrue(ruleRefs.get(1).rule instanceof ParserRule);

        ParserRule element = (ParserRule) ruleRefs.get(1).rule;
        assertEquals("element", element.name);
        assertEquals(2, element.alternatives.size());

        assertTrue(grammar.rules.get("LT") instanceof LiteralRule);
        assertTrue(grammar.rules.get("Content") instanceof RegexRule);
    }
}