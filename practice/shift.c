#include<stdio.h>
#include<stdlib.h>
#include<string.h>
char a[20],act[20],stk[20],ip[20];
int c=0,k=0,i=0,j=0,z=0;
void check();
int main()
{
        printf("\nGrammer is E->E+E|E*E|(E)|id");
        printf("\nenter the string\t");
        scanf("%s",ip);
        c=strlen(ip);
        strcpy(act,"shifted");
        printf("\nstack\t\tinput\t\taction");
        for(k=0,i=0;j<c;j++,k++,i++)
        {
                if(ip[j]=='i' &&ip[j+1]=='d')
                {
                        stk[i]=ip[j];
                        stk[i+1]=ip[j+1];
                        stk[i+2]='\0';
                        ip[j]=' ';
                        ip[j+1]=' ';
                        printf("\n$%s\t\t%s\t\t%s",stk,ip,act);
                        check();
                }
                else{
                        stk[i]=ip[j];
                        stk[i+1]='\0';
                        ip[j]=' ';
                        printf("\n$%s\t\t%s\t\t%s",stk,ip,act);
                        check();
                }
        }
}
void check()
{
        strcpy(act,"recued to E");
        for(z=0;z<c;z++)
        {
                if(stk[z]=='i' && stk[z+1]=='d')
                {
                       stk[z]='E';
                       stk[z+1]='\0';
                       printf("\n$%s\t\t%s\t\t%s",stk,ip,act);  
                       j++;
                }
                else if(stk[z]=='E' && stk[z+1]=='+' && stk[z+2]=='E')
                {
                       stk[z]='E';
                       stk[z+1]='\0';
                       stk[z+2]='\0';
                       printf("\n$%s\t\t%s\t\t%s",stk,ip,act);  
                        i-=2;
                }
                 else if(stk[z]=='E' && stk[z+1]=='*' && stk[z+2]=='E')
                {
                       stk[z]='E';
                       stk[z+1]='\0';
                       stk[z+2]='\0';
                       printf("\n$%s\t\t%s\t\t%s",stk,ip,act);  
                        i-=2;
                }
                 else if(stk[z]=='(' && stk[z+1]=='E' && stk[z+2]==')')
                {
                       stk[z]='E';
                       stk[z+1]='\0';
                       stk[z+2]='\0';
                       printf("\n$%s\t\t%s\t\t%s",stk,ip,act);  
                        i-=2;
                }
        }
}
