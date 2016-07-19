package premun.mps.ingrid.importer;

/**
 * Data object containing grammar statistics.
 */
public class ImportInfo {
    public int rules;

    public int tokens;

    public int interfaces;

    public String rootRuleName;

    public ImportInfo(String rootRuleName) {
        this.rootRuleName = rootRuleName;
    }
}
