package premun.mps.ingrid.parser;

import org.junit.*;
import premun.mps.ingrid.model.*;

import java.util.*;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class AdvancedFeaturesTest {
    @Test
    public void LabeledElementTest() {
        GrammarParser parser = new GrammarParser();
        parser.parseString(
            "grammar foo; " +
                "int_result : left_operand=int_result op=(MUL | DIV | MOD) right_operand=int_result\n" +
                "           | INT\n" +
                "           ;\n" +

                "MUL        : '*';\n" +
                "DIV        : '/';\n" +
                "MOD        : '%';\n" +

                "INT        : '-'? [0-9]+;\n"
        );

        GrammarInfo grammar = parser.resolveGrammar();
        ParserRule rule = (ParserRule) grammar.rules.get("int_result");

        assertNotNull(rule);
        assertEquals(2, rule.alternatives.size());


        List<RuleReference> elements = rule.alternatives.get(0).elements;
        assertEquals(3, elements.size());
        assertEquals(grammar.rules.get("int_result"), elements.get(0).rule);
        assertTrue(elements.get(1).rule instanceof ParserRule);
        assertTrue(elements.get(1).rule.name.contains("block_"));
        assertEquals(grammar.rules.get("int_result"), elements.get(2).rule);
    }

    @Test
    public void ActionTest() {
        GrammarParser parser = new GrammarParser();
        parser.parseString(
            "grammar foo; " +
                "actionRule  : {_input.LT(1).getText().equals(\"set\")}? 'foo' 'bar'\n" +
                "            ;\n" +

                "S           :   [ \\t\\r\\n]               -> skip\n" +
                "            ;"
        );

        GrammarInfo grammar = parser.resolveGrammar();

        ParserRule actionRule = (ParserRule) grammar.rules.get("actionRule");
        RegexRule s = (RegexRule) grammar.rules.get("S");

        assertNotNull(actionRule);
        assertNotNull(s);

        assertEquals(2, actionRule.alternatives.get(0).elements.size());
        assertEquals("[ \\t\\r\\n]", s.regexp);
    }
}
