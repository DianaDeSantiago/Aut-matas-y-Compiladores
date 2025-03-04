%{
#include <stdio.h>
%}

%%
[A-Z]    { putchar(yytext[0] + ('a' - 'A')); }
.        { putchar(yytext[0]); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
