package premun.mps.ingrid.model;

public class QuantifierRule extends Rule {
    public Quantity quantity;

    public QuantifierRule(Quantity quantity) {
        super(quantity.toString());
        this.quantity = quantity;
    }

    public QuantifierRule(String quantity) {
        this(Quantity.FromString(quantity));
    }
}
