grammar SimpleXML;

document    :   prolog? comment? element
            ;

prolog      :   '<?xml ' attribute* '?>';

comment     :   '<!--' TEXT '-->'
            ;

element     :   LT Name attribute* '>' content* '</' Name '>'
            |   '<' Name attribute* '/>'
            ;

attribute   :   Name '="' TEXT '"'
            ;

content     :   TEXT
            |   element
            |   comment
            |   CDATA
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

TEXT        :   ~[<"]*
            ;

CDATA       :   '<![CDATA[' .*? ']]>' 
            ;
