%{
// Reconhecedor de uma linguagem simplificada
#include <iostream>
#include <string>
#include "tokens.h"
using std::cout;
%}

%option noyywrap
delim       [ \t\n]
brancos     {delim}+
letra       [A-Za-z]
digito      [0-9]
id          ({letra}|_)(({letra}|{digito}|_)*) 
num         {digito}+(\.{digito}+)?(E[+-]?{digito}+)?
STRING      \"([A-Za-z0-9_ \t\n])*\"


%% 
{brancos}   ; // nenhuma ação e nenhum retorno
if          return IF; 
then        return THEN; 
{STRING}    return STRING;
else        return ELSE;
while       return WHILE;
{id}        return ID;  
{num}       return NUM;
"=="        return RELOP;
"!="        return RELOP;
"<"         return RELOP;
"<="        return RELOP;
">"         return RELOP;
">="        return RELOP;




.           cout << yytext << " é um token inválido!\n"; 
%%

