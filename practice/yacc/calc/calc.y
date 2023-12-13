%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(char *msg){
                printf("\nerror");
                exit(0);
        }
%}
%token NUM
%left '-' '+'
%left '*' '/' '%'
%left '(' ')'
%%
expr:s{printf("\nthe value is %d",$$);}
s:s'+'s {$$=$1+$3;}
|s'-'s {$$=$1-$3;}|
s'*'s {$$=$1*$3;}|
s'/'s {$$=$1/$3;}|
s'%'s {$$=$1%$3;}|
'('s')' {$$=$2;}|
NUM {$$=$1;}| ;
%%
int main()
{
        printf("\nenter the expression\t");
        yyparse();
        return 0;
}
