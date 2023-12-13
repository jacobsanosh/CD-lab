%{
        #include<stdio.h>
        #include<stdlib.h>
%}
%%
[0-9]+ {printf("\nnumbers %s",yytext);}
[-()+*/%] {printf("\noperators %s",yytext);}
[a-zA-Z][a-zA-Z]* {printf("\nidentified %s",yytext);}
[\t\n] {}
[-+*/]+ {printf("\ninvalid");}
%%
int yywrap(){return 1;}
int main()
{
        printf("\nenter the expression\t");
        yylex();
        return 0;
} 
