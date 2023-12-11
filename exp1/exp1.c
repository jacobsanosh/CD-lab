#include<stdio.h>
#include<string.h>
void closure(int k,int n,int matrix[][n])
{
        for(int i=0;i<n;i++)
        {
                if(matrix[k][i]==1)
                {
                        printf("q%d",i);
                        closure(i,n,matrix);
                }
       }
       return;
}
int main()
{
        int n;
        char fname[20];
        printf("\nenter the file name\t");
        scanf("%s",fname);
        FILE *fe=fopen(fname,"r");
        if(fe==NULL)
        {
                printf("there is no file in this name");
                return 0;
        }
        printf("\nenter the no of states\t");
        scanf("%d",&n);    
        int matrix[n][n];
        for(int i=0;i<n;i++)
        {
                for(int j=0;j<n;j++)
                {
                        matrix[i][j]=0;
                }
        }
        char state1[3],input[3],state2[3];
        while(fscanf(fe,"%s%s%s",state1,input,state2)!=EOF)
        {
                if(strcmp(input,"e")==0)
                {
                        int s1=state1[1]-'0';
                        int s2=state2[1]-'0';
                        matrix[s1][s2]=1; 
                }     
        }
        printf("\nepsion closure is\n");
        for(int i=0;i<n;i++)
        {
                printf("q%d:q%d",i,i);
                closure(i,n,matrix);
                printf("\n");
        }
        return 0;
           
}        
        
