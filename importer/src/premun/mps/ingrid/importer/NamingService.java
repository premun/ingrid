package premun.mps.ingrid.importer;

import org.jetbrains.mps.openapi.model.*;

public class NamingService {
    private SModel structureModel;

    public NamingService(SModel structureModel) {
        this.structureModel = structureModel;
    }

    public String generateName(String suggested) {
        boolean duplicit = false;

        for (SNode node : this.structureModel.getRootNodes()) {
            if (suggested.equals(node.getName())) {
                duplicit = true;
                break;
            }
        }

        if (duplicit) {
            // TODO: add suffix
        }

        return suggested;
    }
}
