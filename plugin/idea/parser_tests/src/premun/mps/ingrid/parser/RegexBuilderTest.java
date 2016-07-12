package premun.mps.ingrid.parser;

import org.junit.*;
import premun.mps.ingrid.model.*;
import premun.mps.ingrid.parser.exception.*;

import static org.junit.Assert.*;

public class RegexBuilderTest {
    @Test
    public void FlattenRulesTest() {
        GrammarParser parser = new GrammarParser();
        parser.parseString(
            "grammar foo; " +
                "Name        :   NameStartChar NameChar*\n" +
                "            ;\n" +
                "fragment\n" +
                "DIGIT       :   '0'..'9'\n" +
                "            ;\n" +
                "fragment\n" +
                "NameChar    :   NameStartChar\n" +
                "            |   '-' | '_' | '.'\n" +
                "            |   DIGIT\n" +
                "            ;\n" +
                "fragment\n" +
                "NameStartChar\n" +
                "            :   [:a-zA-Z]\n" +
                "            ;");

        GrammarInfo grammarInfo = parser.resolveGrammar();

        RegexRule rule = (RegexRule) grammarInfo.rules.get("Name");
        assertNotNull(rule);
        assertEquals("[:a-zA-Z](([:a-zA-Z]|\\-|_|\\.|[0-9]))*", rule.regexp);
    }

    @Test
    public void SpecialCharEscapeTest() {
        GrammarParser parser = new GrammarParser();
        parser.parseString(
            "grammar foo; " +
                "Tag: '.jpg' [0-9]+ '\\\\';");
        GrammarInfo grammarInfo = parser.resolveGrammar();

        RegexRule rule = (RegexRule) grammarInfo.rules.get("Tag");
        assertNotNull(rule);
        assertEquals("\\.jpg([0-9])+\\\\\\\\", rule.regexp);
    }

    @Test(expected = IngridParserException.class)
    public void CyclicRuleTest() {
        GrammarParser parser = new GrammarParser();
        parser.parseString(
            "grammar foo; " +
                "Foo\n" +
                "   :   Foo '_'\n" +
                "   |   '.'\n" +
                ";");
        parser.resolveGrammar();
    }
}
