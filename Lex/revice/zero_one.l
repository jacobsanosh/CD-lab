%{
        #include<stdio.h>
        #include<stdlib.h>
        void sayhello(){
                printf("hello");
        }
%}
%%
0[01]*0|1[01]*1 {printf("\nvalid input\n");
        sayhello();
}
0[01]*1|1[01]*0 {printf("\ninvalid %s",yytext);}
%%
int main(){
        printf("\nenter the the values\t");
        yylex();
        return 0;
}
int yywrap(){
        return 0;
}
