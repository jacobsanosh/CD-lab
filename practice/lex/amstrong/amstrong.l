%{
        #include<stdio.h>
        #include<stdlib.h>
        #include<math.h>
%}
%%
[0-9]+ {
        int num=atoi(yytext);
        int org=num;
        int sum=0;
        int leng=yyleng;
        while(num)
        {
                int digit=(num%10);
                sum+=pow(digit,leng);
                num=(num/10);
        }
        if(sum==org)
        {
                printf("\namstrong");
        }
        else{
                printf("not an amstrong");
        }
}
%%
int yywrap()
{
        return 1;
}
int main()
{
        printf("\nenter the number");
        yylex();
        return 0;
}
