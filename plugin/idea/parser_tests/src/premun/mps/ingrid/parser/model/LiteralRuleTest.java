package premun.mps.ingrid.parser.model;

import org.junit.*;
import premun.mps.ingrid.model.*;

import static org.junit.Assert.*;

public class LiteralRuleTest {
    @Test
    public void testInitialization() {
        LiteralRule rule = new LiteralRule("'<'");
        assertEquals("<", rule.getContent());

        rule = new LiteralRule(">");
        assertEquals(">", rule.getContent());

        rule = new LiteralRule("");
        assertEquals("", rule.getContent());
    }
}