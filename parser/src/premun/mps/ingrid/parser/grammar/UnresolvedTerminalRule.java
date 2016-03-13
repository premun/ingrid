package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.TerminalContext;

public class UnresolvedTerminalRule extends Rule {
    public UnresolvedTerminalRule(TerminalContext context) {
        super(context.getText());
    }

    @Override
    public String toString() {
        return "Terminal rule: " + this.name;
    }
}
