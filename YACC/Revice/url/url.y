%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int yyerror(const char *);
%}
%token  SC
%%
URL : SC {printf("hi:");}

%%
int yyerror(const char *s)
{
  
  return 0;
}
void main(){
yyparse();
}
