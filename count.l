%{
#include <stdio.h>

int space_count = 0;  // To store the number of whitespaces (space + tab)
int newline_count = 0;  // To store the number of newline characters
%}

%%

[ \t]        { space_count++; }  // Match spaces or tabs
\n           { newline_count++; } // Match newlines

%%

// Define the required yywrap function
int yywrap() {
    return 1;  // Return 1 to indicate that input is finished
}

int main() {
    printf("Enter text (Ctrl+D to end input):\n");
    yylex();  // Run the lexical analyzer
    printf("Number of Whitespaces (spaces/tabs): %d\n", space_count);
    printf("Number of Newlines: %d\n", newline_count);
    return 0;
}
