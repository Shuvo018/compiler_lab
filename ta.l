%{
#include <stdio.h>
int total_matches = 0;
%}

%%
a*    { 
    printf("Matched: '%s'\n", yytext);
    total_matches++; 
}

.|\n  { /* Ignore other characters */ }

%%

int main(int argc, char **argv) {
    // If a file is provided, open it
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("Error opening file");
            return 1;
        }
    }

    // Perform lexical analysis
    yylex();

    // Print total matches
    printf("\nTotal A* matches: %d\n", total_matches);

    // Close file if opened
    if (argc > 1) {
        fclose(yyin);
    }

    return 0;
}

int yywrap() {
    return 1;
}