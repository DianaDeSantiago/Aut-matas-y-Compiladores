%{
#include "y.tab.h"
%}

%%

"if"        { return IF; }
"then"      { return THEN; }
[a-zA-Z_][a-zA-Z0-9_]*  { return IDENTIFICADOR; }
[0-9]+      { return NUMERO; }
"=="|"<"|">"|"<="|">="|"!=" { return OPERADOR_RELACIONAL; }
"="         { return ASIGNACION; }
[ \t\n]     { /* Ignorar espacios y saltos de l�nea */ }
.           { return *yytext; }

%%

int yywrap() { return 1; }
