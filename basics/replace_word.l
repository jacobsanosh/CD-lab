%{
        #include<stdio.h>
        #include<string.h>
        char word[]="sanosh";
        char rep[]="SJ";
%}

%%
[a-zA-z]+ { if(strcmp(word,yytext)==0)
        {
                printf("%s",rep);
        }
        else{
        printf("%s",yytext);
        }
       }
      
%%
int main(){
        printf("\nenter the input\t");
        yylex();
        return 0;
}
