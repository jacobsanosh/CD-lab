%{
        #include<stdio.h>
        #include<stdlib.h>
        int pos=0,neg=0;
%}
%%
^[-][0-9]+ {neg++;printf("\nnegvalue =%s",yytext);}
[0-9]+ {pos++;printf("\nposvalue =%s",yytext);}
%%
int yywrap(){return 1;}
int main()
{
        printf("\nenter the numbers\t");
        yylex();
        printf("\n pos =%d neg=%d",pos,neg);
        return 0;
}
