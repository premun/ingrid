package premun.mps.ingrid.parser.grammar;

/**
 * Class wrapper used inside Rule alternatives.
 * Holds information about referenced rule and a quantifier.
 */
public class RuleReference {
    public Rule rule;
    public Quantity quantity = Quantity.ONE;

    public RuleReference(Rule rule) {
        this.rule = rule;
    }

    public RuleReference(Rule rule, Quantity quantity) {
        this.rule = rule;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return this.rule.toString() + this.quantity.toString();
    }
}
