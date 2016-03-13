package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.TerminalContext;

public class TerminalRule extends Rule {
    public TerminalRule(TerminalContext context) {
        super(context.getText());
    }
}
