%{
        #include<stdio.h>
        #include<stdlib.h>
        int valid=1;
        void yyerror(){
                printf("\ninvalid");
                valid=0;
        }
%}
%token letter digit
%%
start:letter S
S:letter S|digit S| ;
%%
int main(){
printf("\nenter the input \n");
yyparse();
if(valid){
        printf("\nvlaid");
        }
}


