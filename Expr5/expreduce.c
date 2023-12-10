#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>

int kwd(char buffer[]){
        char keywords[][10]={"auto","break","continue","case","char","const","do","while",
        "double","else","enum","extern","float","for","goto","if","int","long","register","return","short",
        "signed","static","struct","switch","typedef","union","unsigned","void","volatile","sizeof"};
        int flag=0;
        for(int i=0;i<32;i++)
        {
                if(strcmp(keywords[i],buffer))
                {
                        flag=1;
                        break;
                }
        }
        return flag;
}
        
int main()
{
        char ch,buffer[15],buff[15],operator[]="+-*/%=,;()";
        FILE *fp;
        int i,j=0;
        int ido=0;
        fp=fopen("input.txt","r");
        if(fp==NULL)
        {
                printf("error on loading");
                exit(0);
        }
        while((ch=fgetc(fp))!=EOF)
        {
                for(i=0;i<10;i++)
                {
                       if(ch==operator[i] && kwd(buffer)==0)
                       {
                        printf("id ");
                        }
                }
                for(i=0;i<10;i++)
                {
                        if(ch==operator[i])
                                if(operator[i]=='+')
                                        printf("op -plus ");
                                else if(operator[i]=='-')
                                        printf("op-sub ");
                                else if(operator[i]=='/')
                                        printf("op-div ");
                                else if(operator[i]=='*')
                                        printf("op-mul ");
                                else if(operator[i]=='=')
                                        printf("op-eqi ");
                                else if(operator[i]==';')
                                        printf("; ");
                                else if(operator[i]==',')
                                        printf(", ");
                                else if(operator[i]=='(')
                                        printf(". ");
                }
                if(isalnum(ch)){
                        buffer[++j]=ch;
                }
                else if((ch==' ' || ch=='\n')&&(j!=0))
                {
                        /*printf("enter here %s buffer",buffer);*/
                        buffer[j]='\0';
                        j=0;
                        if(kwd(buffer)==1)
                                printf("kwd ");
                }                      
        }
        fclose(fp);
        return 0;
        
}
