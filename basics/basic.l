digit [0-9]+
string [a-zA-Z]+
%%
{digit} printf("digit");
{string} printf("string");
%%
int main()
{
yylex();
}
