grammar SimpleXML;

document    :   prolog? element
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
            ;
