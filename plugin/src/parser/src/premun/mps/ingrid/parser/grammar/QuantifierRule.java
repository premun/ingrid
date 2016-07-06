package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

public class QuantifierRule extends Rule {
    public Quantity quantity;

    public QuantifierRule(Quantity quantity) {
        super(quantity.toString());
        this.quantity = quantity;
    }

    public QuantifierRule(String quantity) {
        this(Quantity.FromString(quantity));
    }

    public QuantifierRule(EbnfSuffixContext context) {
        this(context.getText());
    }
}
