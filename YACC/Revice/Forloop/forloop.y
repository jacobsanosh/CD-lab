%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(){
        printf("\nerror");
        exit(0);
        }
%}
%token FOR EQ LPAREN DTYPE ID OP NUM SEMI COMP RPAREN
%%
stmt:FOR LPAREN DTYPE ID EQ NUM SEMI ID COMP NUM SEMI ID OP RPAREN {printf("valid for loop");exit(0);}
%%
int main()
{
        printf("\nenter the expression\n");
        yyparse();
        return 0;
}
