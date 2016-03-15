package premun.mps.ingrid.parser.grammar;

public enum Quantity {
    MAX_ONE,
    AT_LEAST_ONE,
    ANY;

    public char getQuantifierChar() {
        switch (this) {
            case ANY:
                return '*';

            case AT_LEAST_ONE:
                return '+';

            case MAX_ONE:
                return '?';

            default:
                throw new IllegalArgumentException();
        }
    }
}
