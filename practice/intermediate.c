#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void gen_code_for_operator(char *inp,char op,char *reg)
{
        int i=0,j=0;
        char temp[100];
        while(inp[i]!='\0')
        {
                if(inp[i]==op)
                {
                        printf("\n%c\t%c\t%c\t%c",op,*reg,inp[i-1],inp[i+1]);
                        temp[j-1]=*reg;
                        (*reg)--;
                        i+=2;
                }
                else{
                        temp[j]=inp[i];
                        i++;
                        j++;
                    }
        }
        temp[++j]='\0';
        strcpy(inp,temp);
        memset(temp,0,sizeof(temp));
}
void gen_code(char *inp)
{
        char reg='Z';
        gen_code_for_operator(inp,'/',&reg);
        gen_code_for_operator(inp,'*',&reg);
        gen_code_for_operator(inp,'+',&reg);
        gen_code_for_operator(inp,'-',&reg);
        gen_code_for_operator(inp,'=',&reg);
}
int main()
{
        char inp[100];
        printf("\enter the expression\t");
        scanf("%s",inp);
        printf("\nptr \tdestn \top1\top2\n");
        gen_code(inp);
}
