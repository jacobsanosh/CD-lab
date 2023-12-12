%{
        #include<stdio.h>
%}
%%
[0-9]+ {printf("\ndigit");}
[a-zA-Z]+ {printf("\nstring");}
%%
int yywrap(){return 1;}
int main()
{
        printf("\nenter the input\t");
        yylex();
        return 0;
}
