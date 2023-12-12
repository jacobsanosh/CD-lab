%{
        #include<stdio.h>
        #include<stdlib.h>
        #include<math.h>
%}
%%
[0-9]+ {
        int num=atoi(yytext);
        int original=num;
        int lens=strlen(yytext);
        int sum=0;
        while(num)
        {
                int temp=(num%10);
                sum+=pow(temp,lens);
                num=(num/10);
        }
        if(sum==original)
        {
                printf("\namstrong");
        }
        else{
                printf("\nnot an amstrong");
            }
        }
%%
int yywrap(){return 1;}
int main(){
        printf("\nenter the input\t");
        yylex();
        return 0;
}
