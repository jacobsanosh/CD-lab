%{
#include <stdio.h>
%}

%%
red|blue|green  { printf("Color: %s\n", yytext); }
(red|blue|green)+"ed"    { printf("Coloured: %s\n", yytext); }

%%

int yywrap() {
    return 1; // Indicate no more input
}

int main() {
    yylex();
    return 0;
}

