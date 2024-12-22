%option noyywrap
%{
	#include<stdio.h>
%}

%%
(ab)* {printf("valid ");}
. {printf("invalid ");}
%%
int main()
{
	yylex();
	return 0;
}