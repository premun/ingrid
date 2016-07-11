package premun.mps.ingrid.parser;

import org.junit.*;
import premun.mps.ingrid.model.*;
import premun.mps.ingrid.model.Rule;

import java.util.*;

import static org.junit.Assert.*;

public class GrammarParserTest {
    @Test
    public void testFullGrammar() throws Exception {
        String filePath = getClass().getResource("/SimpleXML.g4").getPath();

        GrammarParser parser = new GrammarParser();
        parser.parseFile(filePath);
        GrammarInfo grammar = parser.resolveGrammar();

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
        Alternative alternative = document.alternatives.get(0);
        assertEquals(2, alternative.elements.size());
        assertEquals(Quantity.MAX_ONE, alternative.elements.get(0).quantity);
        assertEquals(Quantity.EXACTLY_ONE, alternative.elements.get(1).quantity);
        assertTrue(alternative.elements.get(1).rule instanceof ParserRule);

        ParserRule element = (ParserRule) alternative.elements.get(1).rule;
        assertEquals("element", element.name);
        assertEquals(2, element.alternatives.size());
        assertEquals("FullElement", element.alternatives.get(0).comment);
        assertEquals("SelfclosingElement", element.alternatives.get(1).comment);

        assertTrue(grammar.rules.get("LT") instanceof LiteralRule);
        assertTrue(grammar.rules.get("Content") instanceof RegexRule);

        // Test the rule block that was inside first alternative
        RuleReference block = ((ParserRule) grammar.rules.get("element")).alternatives.get(0).elements.get(3);
        assertEquals(Quantity.ANY, block.quantity);

        ParserRule blockRule = (ParserRule) block.rule;

        Rule contentAlternative = blockRule.alternatives.get(0).elements.get(0).rule;
        assertEquals(grammar.rules.get("Content").getClass(), contentAlternative.getClass());
        assertTrue(grammar.rules.get("Content") == contentAlternative);

        Rule elementAlternative = blockRule.alternatives.get(1).elements.get(0).rule;
        assertEquals(grammar.rules.get("element").getClass(), elementAlternative.getClass());
        assertTrue(grammar.rules.get("element") == elementAlternative);

        RegexRule nameRule = (RegexRule) grammar.rules.get("Name");
        assertEquals("[:a-zA-Z](([:a-zA-Z]|(((\\-)?|(_|\\.)+)*)|(([0-9]|[0-9]))))*", nameRule.regexp);

        assertEquals(2, ((ParserRule) grammar.rules.get("actionRule")).alternatives.get(0).elements.size());
        assertEquals("[ \\t\\r\\n]", ((RegexRule) grammar.rules.get("S")).regexp);
    }

    @Test
    public void testMultipleFiles() throws Exception {
        String filePath1 = getClass().getResource("/MySQLLexer.g4").getPath();
        String filePath2 = getClass().getResource("/MySQLParser.g4").getPath();

        GrammarParser parser = new GrammarParser();
        parser.parseFile(filePath1);
        parser.parseFile(filePath2);
        GrammarInfo grammar = parser.resolveGrammar();

        assertEquals(5, grammar.rules.size());
        assertNotNull(grammar.rules.get("select_clause"));

        assertNotNull(grammar.rules.get("SELECT"));
        assertNotNull(grammar.rules.get("ASTERISK"));
        assertNotNull(grammar.rules.get("FROM"));
        assertNotNull(grammar.rules.get("TableName"));
    }

    @Test
    public void testMultipleFilesReverseOrder() throws Exception {
        String filePath1 = getClass().getResource("/MySQLLexer.g4").getPath();
        String filePath2 = getClass().getResource("/MySQLParser.g4").getPath();

        GrammarParser parser = new GrammarParser();
        parser.parseFile(filePath2);
        parser.parseFile(filePath1);
        GrammarInfo grammar = parser.resolveGrammar();

        assertEquals(5, grammar.rules.size());
        assertNotNull(grammar.rules.get("select_clause"));

        assertNotNull(grammar.rules.get("SELECT"));
        assertNotNull(grammar.rules.get("ASTERISK"));
        assertNotNull(grammar.rules.get("FROM"));
        assertNotNull(grammar.rules.get("TableName"));
    }
}