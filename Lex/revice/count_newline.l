%{
        int nchar=0,nword=0,nline=0;
%}
%%
\n {nline++;nchar++;}
[^\t\n]+ {nword++,nchar=yyleng;}
. {nchar++;}
%%
int yywrap(){return 1;}
int main()
{
        yylex();
        printf("%d\t%d\t%d",nchar,nword,nline);
        return 0;
}
