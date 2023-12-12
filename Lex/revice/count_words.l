%{
        #include<stdio.h>
        #include<stdlib.h>
        int i=0;
%}
%%
[a-zA-Z0-9]* {i++;}
"\n" {printf("\n%d\n",i);i=0;}
%%
int yywrap(){return 0;}
int main(){
       printf("\nenter the input\t");
        yylex();
        return 0;
}
