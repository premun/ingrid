grammar SimpleXML;

document    :   comment? element EOF
            ;

comment     :   '/*' Content '*/'
            ;

element     :   LT Name '>' ( Content | element )* '</' Name '>'    # FullElement
            |   '<' Name '/>'                                       # SelfclosingElement
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
            |   ('-'? | ('_' | '.')+)*
            |   DIGIT
            ;

fragment
NameStartChar
            :   [:a-zA-Z]
            ;

LT          :   '<'
            ;