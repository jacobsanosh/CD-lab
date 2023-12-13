%{
        #include<stdio.h>
        #include<stdlib.h>
        #include<string.h>
        char sword[20];
%}
%%
[0-9a-zA-Z]+ {
        if(strcmp(yytext,sword)==0)
        {
                printf("\nfound");
        }
        else{
                printf("%s",yytext);
        }
        }
%%
int yywrap(){return 1;}
int main()
{
        FILE *fe;
        fe=fopen("input.txt","r");
        if(fe==NULL)
        {
                printf("\nthere is no file ");
                exit(0);
        }
        printf("\nenter the string to be searched ");
        scanf("%s",sword);
        yyin=fe;
        yylex();
        return 0;
}
