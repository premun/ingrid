grammar SimpleXML;

document    :   prolog? comment? element
            ;

prolog      :   '<?xml ' attribute* '?>';

content     :   TEXT
            |   cdata
            |   comment
            |   element
            ;

cdata       :   '<![CDATA[' CDATA ']]>'
            ;

comment     :   '<!--' TEXT '-->'
            ;

element     :   '<' Name attribute* '>' content* '</' Name '>'
            |   '<' Name attribute* '/>'
            ;

attribute   :   Name '="' TEXT '"'
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

TEXT        :   ~[<"]*
            ;

CDATA       :   .*? 
            ;
