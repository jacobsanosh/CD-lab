%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(char *msg)
        {
                printf("\nerror");
                exit(0);
        }
%}
%token A B NL
%%
stmt:A A A A A S B NL {printf("\nvalid string");exit(0);}
S:S A| ;
%%
int main(){
        printf("\nenter the expr\t");
        yyparse();
}
