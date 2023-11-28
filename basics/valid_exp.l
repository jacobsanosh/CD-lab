%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[0-9]+ { printf("\nnumbers %s", yytext); }
[-()+*/] { printf("\noperators %s", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("\nidentifier %s", yytext); }
[\t\n] ; 
[^-0-9a-zA-Z()+*/\t\n]+ { printf("\ninvalid operator %s", yytext); exit(EXIT_FAILURE); }
[-+*/]+ { printf("\nInvalid consecutive operators: %s", yytext); exit(EXIT_FAILURE); }
%%
int main(){
    printf("\nEnter the exp: ");
    yylex();
    printf("\nExpression is valid\n");
    return 0;
}

