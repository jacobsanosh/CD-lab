%{
        #include "y.tab.h"
%}
%%
[a-zA-Z]+ {return LET;}
[0-9]+ {return DIG;}
%%
int yywrap(){return 1;}
