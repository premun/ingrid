package premun.mps.ingrid.parser.grammar;

public enum Quantity {
    EXACTLY_ONE,
    MAX_ONE,
    AT_LEAST_ONE,
    ANY;

    public static Quantity FromString(String quantifier) {
        switch (quantifier) {
            case "?":
                return MAX_ONE;
            case "*":
                return ANY;
            case "+":
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
