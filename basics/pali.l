%{
        #include<stdio.h>
        #include<string.h>
        #include<stdlib.h>
        char data[50];
        int i=0;
%}

%%
[a-zA-Z]+ {
                strcpy(data, yytext);
        }
%%

int checkpali(char data[]){
     int length = strlen(data);
    for (int i = 0, j = length - 1; i < j; i++, j--) {
        if (data[i] != data[j]) {
            return 0; // Not a palindrome
        }
    }
    return 1; // Palindrome   
}
int main()
{
        printf("\nenter the string \t");
        yylex();
        printf("string is %s",data);
        if(checkpali(data)){
                printf("\n pali");
        }
        else{
                printf("\nnot pali");
              }
        return 0;
}
