%{
        #include<stdio.h>
        #include<stdlib.h>
%}
%%
[0-9]+ {printf("\nnumber %s",yytext);}
[-()+*/] {printf("\noperators %s",yytext);}
[a-zA-Z][a-zA-Z0-9]* {printf("\nidentifier %s",yytext);}
[\t\n] {};

[-+*/]+ {printf("\ninvalid consecutive operators %s",yytext);exit(EXIT_FAILURE);}
%%
int yywrap(){return 1;}
int main()
{
        printf("\nenter the expr\t");
        yylex();
        printf("\nvalid expr");
        return 0;
}
        
