package premun.mps.ingrid.model;

public abstract class Rule {
    public String name;

    public Rule(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return this.name;
    }
}
