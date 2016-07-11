package premun.mps.ingrid.model;

public enum Quantity {
    EXACTLY_ONE,
    MAX_ONE,
    AT_LEAST_ONE,
    ANY;

    public String getCardinality() {
        switch (this) {
            case EXACTLY_ONE:
                return "1";

            case ANY:
                return "0..n";

            case AT_LEAST_ONE:
                return "1..n";

            case MAX_ONE:
                return "0..1";

            default:
                throw new IllegalArgumentException();
        }
    }

    public static Quantity FromString(String quantifier) {
        switch (quantifier) {
            case "?":
            case "??": // non-greedy (https://github.com/antlr/antlr4/blob/master/doc/wildcard.md)
                return MAX_ONE;

            case "*":
            case "*?": // non-greedy (https://github.com/antlr/antlr4/blob/master/doc/wildcard.md)
                return ANY;

            case "+":
            case "+?": // non-greedy (https://github.com/antlr/antlr4/blob/master/doc/wildcard.md)
                return AT_LEAST_ONE;

            default:
                throw new IllegalArgumentException("Unknown quantification character '" + quantifier + "'");
        }
    }

    @Override
    public String toString() {
        switch (this) {
            case EXACTLY_ONE:
                return "";

            case ANY:
                return "*";

            case AT_LEAST_ONE:
                return "+";

            case MAX_ONE:
                return "?";

            default:
                throw new IllegalArgumentException();
        }
    }
}
