%{
#include <stdio.h>

int space_count = 0;  // Variable to store the number of capital words
%}

%%

[A-Z]+        { printf("Capital Word: %s\n", yytext); }  // Match capital words (one or more uppercase letters)

.|\n           { /* Ignore other characters, including spaces and newlines */ }

%%

// Define the required yywrap function
int yywrap() {
    return 1;  // Return 1 to indicate that input is finished
}

int main() {
    printf("Enter text (Ctrl+D to end input):\n");
    yylex();  // Start lexical analysis
    return 0;
}
