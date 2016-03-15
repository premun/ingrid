package premun.mps.ingrid.parser.grammar;

public enum Quantity {
    ONE,
    MAX_ONE,
    AT_LEAST_ONE,
    ANY;

    @Override
    public String toString() {
        switch (this) {
            case ONE:
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
