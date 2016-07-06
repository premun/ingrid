package premun.mps.ingrid.parser.grammar;

import org.jetbrains.mps.openapi.model.*;

/**
 * Class wrapper used inside rule alternatives. Represents a single alternative element.
 */
public class RuleReference {
    /**
     * Referenced rule
     */
    public Rule rule;

    /**
     * Cardinality of the element
     */
    public Quantity quantity = Quantity.EXACTLY_ONE;

    /**
     * Holds the MPS reference - either a PropertyDeclaration or a LinkDeclaration node.
     * This is not the target (referenced) concept, but the reference itself!
     */
    public SNode nodeReference = null;

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
