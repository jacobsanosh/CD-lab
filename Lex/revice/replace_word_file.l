%{
        #include<stdio.h>
        #include<stdlib.h>
        #include<string.h>
        char sword[20];
%}

%%
[0-9a-zA-z]+ {
                if(strcmp(sword,yytext)==0)
                {
                        printf("\nword is found");
                }
             else{
                printf("%s",yytext);
                }
        }
%%
int yywrap(){return 1;}
int main()
{
        FILE *fp;
        fp=fopen("input.txt","r");
        if(fp==NULL)
        {
                printf("\nno file exists");
                return 0;
        }
        printf("\nenter the string \t");
        scanf("%s",sword);
        yyin=fp;
        yylex();
        return 0;
}
