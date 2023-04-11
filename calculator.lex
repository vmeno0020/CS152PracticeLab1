%{
#include <stdio.h>

%}

DIGIT [0-9]
BACKSLASH "/"

%%
{DIGIT}+   { printf("NUMBER: %s\n", yytext); }
.
%%

int main(void) {
  printf("Ctrl + D to quit\n");
  printf("%d + %d = %d", 1, 1, 2);
  yylex();
}
