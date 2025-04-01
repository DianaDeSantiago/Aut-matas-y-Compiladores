%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex();
%}

%token IF THEN IDENTIFICADOR NUMERO OPERADOR_RELACIONAL ASIGNACION

%%

inicio:
    sentencia_if { printf("? Estructura IF-THEN válida\n"); }
    ;

sentencia_if:
    IF condicion THEN accion
    ;

condicion:
    IDENTIFICADOR OPERADOR_RELACIONAL NUMERO
    | NUMERO OPERADOR_RELACIONAL IDENTIFICADOR
    | IDENTIFICADOR OPERADOR_RELACIONAL IDENTIFICADOR
    | NUMERO OPERADOR_RELACIONAL NUMERO
    ;

accion:
    IDENTIFICADOR ASIGNACION NUMERO
    | IDENTIFICADOR ASIGNACION IDENTIFICADOR
    ;

%%

void yyerror(const char *s) {
    printf("? Error de sintaxis: %s\n", s);
}

int main() {
    printf("Introduce un código para analizar:\n");
    yyparse();
    return 0;
}
