%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(char *msg) 
        { 
        printf("invalid string\n"); 
        exit(0); 
        } 
        
%}
%token A B NL
%%
stmt: S NL {printf("valid string \n");
        exit(0);
        }
S: A S B| ;
%%

int main(){
printf("\nenter the string\t");
yyparse();
}
