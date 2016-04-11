grammar SimpleXML;

document    :   comment? element
            ;

comment     :   '<!--' TEXT '-->'
            ;

element     :   LT Name attribute* '>' content* '</' Name '>'
            |   '<' Name attribute* '/>'
            ;

attribute   :   Name '="' TEXT '"'
            ;

content     :   TEXT*
            |   element*
            ;
            
Name        :   NameStartChar NameChar* 
            ;

fragment
DIGIT       :   [0-9] 
            ;

fragment
NameChar    :   NameStartChar
            |   '-' 
            |   '_' 
            |   '.' 
            |   DIGIT 
            ;

fragment
NameStartChar
            :   [:a-zA-Z]
            ;

LT          :   '<'
            ;

TEXT        : [a-zA-Z0-9 ]*
            ;

/*document    :   prolog? element
            ;

prolog      :   '<?xml' WS attribute* WS '?>' 
            ;

content     :   element
            |   chardata 
            |
            ;

element     :   '<' Name attribute* '>' content '<' '/' Name '>'
            |   '<' Name attribute* '/>'
            ;

attribute   :   WS* Name WS* '=' WS* ATTRVALUE WS*
            ;

chardata    :   TEXT | WS 
            ;

WS          :   (' '|'\t'|'\r'? '\n')+ 
            ;

TEXT        :   ~[<>]+ 
            ;

ATTRVALUE   :   '"' ~[<"]* '"'
            |   '\'' ~[<']* '\''
            ;

Name        :   NameStartChar NameChar* 
            ;

fragment
DIGIT       :   [0-9] 
            ;

fragment
NameChar    :   NameStartChar
            |   '-' 
            |   '_' 
            |   '.' 
            |   DIGIT 
            ;

fragment
NameStartChar
            :   [:a-zA-Z]
            ;*/
