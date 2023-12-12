%{
#include<stdio.h>
#include<string.h>
int i=0;
%}

%%
. {i++;}
"\n" {printf("%d\n",i);i=0;}
%%

int yywrap(){return 1;}

int main(){
	yylex();
	return 0;
}
