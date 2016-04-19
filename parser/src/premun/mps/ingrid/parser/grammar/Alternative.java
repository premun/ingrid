package premun.mps.ingrid.parser.grammar;

import org.jetbrains.mps.openapi.model.*;

import java.util.*;

public class Alternative {
    public List<RuleReference> elements = new ArrayList<>();

    public SNode node = null;

    public String alias = null;
}
