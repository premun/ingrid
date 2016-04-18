grammar SimpleXML;

document    :   comment? element
            ;

comment     :   '/*' Content '*/'
            ;

element     :   LT Name '>' ( Content | element )* '</' Name '>'
            |   '<' Name '/>'
            ;

Content     :   [a-zA-Z0-9 ]*
            ;

Name        :   NameStartChar NameChar*
            ;

fragment
DIGIT       :   [0-9]
            |   '0'..'9'
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