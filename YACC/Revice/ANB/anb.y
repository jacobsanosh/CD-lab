%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char *msg) {
    printf("\nerror");
    exit(EXIT_FAILURE);
}
%}

%token A B

%%
stmt: S {printf("\nvalid string"); exit(EXIT_SUCCESS);}
S: A S B | ;
%%

int main() {
    printf("\nEnter the expression: ");
    yyparse();
    return 0;
}

