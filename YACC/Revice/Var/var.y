%{
        #include<stdio.h>
        #include<stdlib.h>
        void yyerror(char *msg)
        {
                printf("\nerror");
                exit(0);
        }
%}
%token LET DIG;
%%
        variable:LET var {printf("\nvalid statements");exit(0);};
        var:LET var|DIG var| ;
%%
int main()
{
        printf("\nenter the expr\t");
        yyparse();
        return 0;
}
