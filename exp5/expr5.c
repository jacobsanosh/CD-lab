#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int isKeyword(char buffer[]) {
    char keywords[][10] = {"auto", "break", "continue", "case", "char", "const", "do", "while",
                           "double", "else", "enum", "extern", "float", "for", "goto", "if",
                           "int", "long", "register", "return", "short", "signed", "static",
                           "struct", "switch", "typedef", "union", "unsigned", "void", "volatile",
                           "sizeof"};

    for (int i = 0; i < 32; i++) {
        if (strcmp(keywords[i], buffer) == 0) {
            return 1; // It's a keyword
        }
    }
    return 0; // It's not a keyword
}

int main() {
    char ch, buffer[15], operator[] = "+-*/%=,;()";
    FILE *fp;
    int j = 0;

    fp = fopen("input.txt", "r");
    if (fp == NULL) {
        printf("Error opening file\n");
        exit(1);
    }

    while ((ch = fgetc(fp)) != EOF) {
        if (isalnum(ch)) {
            buffer[j++] = ch;
        } else if (ch == ' ' || ch == '\n') {
            if (j != 0) {
              //  buffer[j] = '\0';
                j = 0;
                if (isKeyword(buffer)) {
                    printf("kwd ");
                } else {
                    printf("id ");
                }
            }
        } else {
            for (int i = 0; i < strlen(operator); i++) {
                if (ch == operator[i]) {
                    if (ch == '+') {
                        printf("op-plus ");
                    } else if (ch == '-') {
                        printf("op-sub ");
                    } else if (ch == '/') {
                        printf("op-div ");
                    } else if (ch == '*') {
                        printf("op-mul ");
                    } else if (ch == '=') {
                        printf("op-eqi ");
                    } else if (ch == ';') {
                        printf("; ");
                        buffer[j] = '\0';
                        j = 0;
                    } else if (ch == ',') {
                        printf(", ");
                    } else if (ch == '(') {
                        printf(". ");
                    }
                }
            }
        }
    }

    fclose(fp);
    return 0;
}

