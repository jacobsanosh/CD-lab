digit [0-9]
letter [a-zA-Z]

%{
    int count = 0;
%}

%%
{letter}({letter}|{digit})* { count++; }
%%

int main() {
    yylex();
    printf("number of identifiers = %d\n", count);
    return 0;
}

