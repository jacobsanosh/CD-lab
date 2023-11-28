%{
#include<stdio.h>
%}
%%
[a-zA-Z]*"sano"[a-zA-Z]* printf("invald \n");
. printf("%c",yytext[0]);
\n return 0;
%%
int main(){
printf("enter the input");
yylex();
}
