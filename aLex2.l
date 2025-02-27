%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z]+   {printf("Text: %s\n", yytext);}
[0-9]+      {printf("Number: %s\n", yytext);}
[\+\-\*/]   {printf("Operador: %s\n", yytext);}
[\n]        {printf("Salto: %s\n", yytext);}
[ ]     {printf("Espacio en blanco: %s\n", yytext);}
.       {printf("Unknow: %s\n", yytext);}

%%
int main()
{
	yylex();
	return 0;
}