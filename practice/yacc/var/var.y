%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(char *msg){
        printf("\nerrror");
        exit(0);
        }
%}
%token LET DIG
%%
var:LET opt {printf("\nvariable is valid");}
opt:LET|DIG| ;
%%
int main()
{
        printf("\nenter the var\n");
        yyparsez();
        return 0;
}
