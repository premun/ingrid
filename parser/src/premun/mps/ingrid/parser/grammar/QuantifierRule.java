package premun.mps.ingrid.parser.grammar;

import premun.mps.ingrid.parser.antlr.ANTLRv4Parser.*;

public class QuantifierRule extends Rule {
    public Quantity quantity;

    public QuantifierRule(EbnfSuffixContext context) {
        super(context.getText());

        switch (this.name) {
            case "?":
                this.quantity = Quantity.MAX_ONE;
                break;

            case "*":
                this.quantity = Quantity.ANY;
                break;

            case "+":
                this.quantity = Quantity.AT_LEAST_ONE;
                break;

            default:
                throw new IllegalArgumentException("Unknown quantification '" + this.name + "'");
        }
    }
}
