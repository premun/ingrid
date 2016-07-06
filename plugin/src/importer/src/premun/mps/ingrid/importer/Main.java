package premun.mps.ingrid.importer;

import premun.mps.ingrid.parser.*;

import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        ImportForm form = new ImportForm(new ArrayList<>());

        if (!form.openAndGet()) {
            return;
        }

        GrammarParser parser = new GrammarParser();

        for (File f : form.getFiles()) {
            parser.parseFile(f.getPath());
        }

        System.out.println(parser.resolveGrammar().toString());
    }
}
