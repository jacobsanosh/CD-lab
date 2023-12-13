#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>

int main()
{
       int n,j=0;
       char expr[20][20],op1[10],oper[10],op2[10];
       printf("\nenter the no of expression\t");
       scanf("%d",&n);
       for(int i=0;i<n;i++)
       {
                scanf("%s",expr[i]);
       }
       printf("\nresult is ");
       for(int i=0;i<n;i++)
       {
                switch(expr[i][3])
                {
                        case '+':
                                strcpy(oper,"ADD");
                                break;
                        case '-':
                                strcpy(oper,"SUB");
                                break;
                        case '/':
                                strcpy(oper,"DIV");
                                break;
                       case '*':
                                strcpy(oper,"MUL");
                                break;   
                }
                if(isalpha(expr[i][4]))
                {
                        printf("\nMOV %c,R%d",expr[i][2],j);
                        printf("\nMOV %c,R%d",expr[i][4],j+1);
                        printf("\n%s R%d,R%d",oper,j,j+1); 
                        printf("\nMOV R%d,%c",j,expr[i][2]); 
                }
                else{
                        printf("\nMOV %c,R%d",expr[i][2],j);
                        printf("\n%s R%d,R%d",oper,j,j+1); 
                        printf("\nMOV R%d,%c",j,expr[i][2]);
                       } 
 
        }
}
