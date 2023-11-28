%{
        #include<stdio.h>
        #include<stdlib.h>
        #include<math.h>
%}
%%
[0-9]+ {
        int num=atoi(yytext);
        int original=num;
        int n=strlen(yytext);
        int sum=0;
        while(num){
                int digit=num%10;
                sum+=pow(digit,n);
                num=(num/10);
        }
        if(sum==original){
        printf("%d amstrong",original);
        }
        else{
                printf("%d not amstrong",original);
             }
}
%%
int main()
{
        printf("\nenter the numer\t");
        yylex();
        return 0;
}
