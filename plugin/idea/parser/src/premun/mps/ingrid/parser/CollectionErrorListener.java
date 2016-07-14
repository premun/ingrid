package premun.mps.ingrid.parser;

import org.antlr.v4.runtime.*;

import java.util.*;

/**
 * Class collects all errors, that the ANTLR parser detected.
 */
class CollectionErrorListener extends BaseErrorListener {
    private final List<String> errors = new ArrayList<>();

    public List<String> getErrors() {
        return errors;
    }

    @Override
    public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
        this.errors.add(msg);
    }
}
