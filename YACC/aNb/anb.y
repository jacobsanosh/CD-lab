%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B NL
%%
stmt:A A A A A S B NL {printf("\nvalid string");}
S:S A| ;
%%
int yyerror(char *msg){
printf("invlid ");
exit(0);
}
int main(){
        printf("\nenter the string\n");
        yyparse();
}
