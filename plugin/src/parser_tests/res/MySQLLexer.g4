lexer grammar MySQLLexer;

SELECT   : 'select' ;

FROM     : 'from' ;

ASTERISK : '*' ;

TableName: '`' [A-Za-z0-9\.]+ '`' ;
