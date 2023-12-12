%{
        #include<stdio.h>
        #include<stdlib.h>
        #include<string.h>
%}
%%
[a-zA-Z]+ {
                int length=yyleng,flag=1;
                for(int i=0,j=length-1;i<j;i++,j--)
                {
                        if(yytext[i]!=yytext[j])
                        {
                                flag=0;
                                break;
                        }
                }
                if(flag==1){
                        printf("\npaliandrome");
                        }
                else{
                        printf("\nnot an pali");
                    }         
        }
%%
int yywrap(){return 1;}
int main()
{
        printf("\nenther the string\t");
        yylex();
        return 0;
}
