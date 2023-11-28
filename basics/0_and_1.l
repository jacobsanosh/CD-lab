%{
#include<stdio.h>
#include<stdlib.h>
%}

%%
0[10]*0|1[01]*1 {printf("valid\n");}
1[01]*0|0[01]*1 {printf("\n not valud");}

%%
int main(){
        printf("\nenter \n");
        yylex();
        return 0;
}
