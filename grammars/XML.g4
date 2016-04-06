/** XML parser derived from ANTLR v4 ref guide book example */
grammar XMLParser;

// options { tokenVocab=XMLLexer; }

document    :   prolog? misc* element misc*;

prolog      :   XMLDeclOpen attribute* SPECIAL_CLOSE ;

content     :   chardata?
                ((element | reference | CDATA | PI | COMMENT) chardata?)* ;

element     :   '<' Name attribute* '>' content '<' '/' Name '>'
            |   '<' Name attribute* '/>'
            ;

reference   :   EntityRef | CharRef ;

attribute   :   Name '=' STRING ; // Our STRING is AttValue in spec

/** ``All text that is not markup constitutes the character data of
 *  the document.''
 */
chardata    :   TEXT | SEA_WS ;

misc        :   COMMENT | PI | SEA_WS ;



// LEXER


// Default "mode": Everything OUTSIDE of a tag
COMMENT     :   '<!--' .*? '-->' ;
CDATA       :   '<![CDATA[' .*? ']]>' ;
/** Scarf all DTD stuff, Entity Declarations like <!ENTITY ...>,
 *  and Notation Declarations <!NOTATION ...>
 */
DTD         :   '<!' .*? '>'            -> skip ; 
EntityRef   :   '&' Name ';' ;
CharRef     :   '&#' DIGIT+ ';'
            |   '&#x' HEXDIGIT+ ';'
            ;
SEA_WS      :   (' '|'\t'|'\r'? '\n')+ ;

OPEN        :   '<'                     -> pushMode(INSIDE) ;
XMLDeclOpen :   '<?xml' S               -> pushMode(INSIDE) ;
SPECIAL_OPEN:   '<?' Name               -> more, pushMode(PROC_INSTR) ;

TEXT        :   ~[<&]+ ;        // match any 16 bit char other than < and &

// ----------------- Everything INSIDE of a tag ---------------------
mode INSIDE;

CLOSE       :   '>'                     -> popMode ;
SPECIAL_CLOSE:  '?>'                    -> popMode ; // close <?xml...?>
SLASH_CLOSE :   '/>'                    -> popMode ;
SLASH       :   '/' ;
EQUALS      :   '=' ;
STRING      :   '"' ~[<"]* '"'
            |   '\'' ~[<']* '\''
            ;
Name        :   NameStartChar NameChar* ;
S           :   [ \t\r\n]               -> skip ;

fragment
HEXDIGIT    :   [a-fA-F0-9] ;

fragment
DIGIT       :   [0-9] ;

fragment
NameChar    :   NameStartChar
            |   '-' | '_' | '.' | DIGIT 
            |   '\u00B7'
            |   '\u0300'..'\u036F'
            |   '\u203F'..'\u2040'
            ;

fragment
NameStartChar
            :   [:a-zA-Z]
            |   '\u2070'..'\u218F' 
            |   '\u2C00'..'\u2FEF' 
            |   '\u3001'..'\uD7FF' 
            |   '\uF900'..'\uFDCF' 
            |   '\uFDF0'..'\uFFFD'
            ;

// ----------------- Handle <? ... ?> ---------------------
mode PROC_INSTR;

PI          :   '?>'                    -> popMode ; // close <?...?>
IGNORE      :   .                       -> more ;