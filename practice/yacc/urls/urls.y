%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(){
printf("Invalid");
exit(EXIT_FAILURE);
}
%}
%token SC DM PT QR
%%
stmt:S	{printf("\n\nvalid !");}
S:SC DM PT QR
 
%%
int main(){
	yyparse();
	return 0;
}
