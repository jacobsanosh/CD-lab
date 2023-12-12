%{
        #include "y.tab.h"
%}
%%
for {return FOR;}
[=] {return EQ;}
[(] {return LPAREN;}
int|flaot|double {return DTYPE;}
[a-zA-Z][a-zA-Z]* {return ID;}
[+][+] {return OP;}
[-][-] {return OP;}
[0-9]+ {return NUM;}
[;] {return SEMI;}
[<>] {return COMP;}
[<>][=] {return COMP;}
[)] {return RPAREN;}
[ ] {}
[\n \t] {return 0;}
%%
int yywrap(){return 1;}
