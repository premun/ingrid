package premun.mps.ingrid.importer;

import org.jetbrains.mps.openapi.model.*;

import java.security.*;

public class NamingService {
    private SModel structureModel;
    private static SecureRandom rnd = new SecureRandom();

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
            return generateName(suggested + "_" + generateSuffix(4));
        }

        suggested = capitalize(suggested);

        return suggested;
    }

    public static String capitalize(String s) {
        return Character.toUpperCase(s.charAt(0)) + s.substring(1);
    }

    private String generateSuffix(int length) {
        final String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            sb.append(chars.charAt(rnd.nextInt(chars.length())));
        }

        return sb.toString();
    }
}
