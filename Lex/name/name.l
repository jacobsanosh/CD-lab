%{
        #include<stdio.h>
        #include<stdlib.h>
        FILE *fe;
%}

%%
[a-zA-Z]*"sano"[a-zA-Z]* {printf("\nyour name is present in this string");}
[a-zA-Z]* {printf("%s",yytext);}
%%
int main(){
        fe=fopen("input.txt","r");
        if(fe==NULL)
        {
                printf("\n no suc file");
                return 0;
        }
        yyin=fe;
        yylex();
        printf("\n");
        return 0;
}
int yywrap(){
        return 1;
}
