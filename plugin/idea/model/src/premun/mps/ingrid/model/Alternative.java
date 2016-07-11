package premun.mps.ingrid.model;

import org.jetbrains.mps.openapi.model.*;

import java.util.*;

public class Alternative {
    public List<RuleReference> elements = new ArrayList<>();

    public String comment;

    public SNode node = null;

    public String alias = null;
}
