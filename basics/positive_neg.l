%{
	#include<stdio.h>
	#include<stdlib.h>
	int pos=0,neg=0;
%}
%%
^[-][0-9]+ { neg++;
	printf("\n neg num %s",yytext);
	}
 [0-9]+ {
	pos++;
	printf("\n pos nums %s",yytext);
	}
%%
int main()
{
	yylex();
	printf("\n no of pos %d and neg is %d",pos,neg);
	return 0;
}
