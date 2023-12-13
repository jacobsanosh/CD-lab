%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(){
        printf("\nerror");
        exit(0);
        }
%}
%token FOR EQ LPAREN DTYPE ID OP NUM SC COMP RPAREN
%%
stmt:FOR LPAREN DTYPE ID EQ NUM SC ID COMP NUM SC ID OP RPAREN {printf("valid for loop");exit(0);}
%%
int main()
{
        printf("\nenter the expression\n");
        yyparse();
        return 0;
}
