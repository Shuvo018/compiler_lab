%option noyywrap
%{
	#include<stdio.h>
%}

%%
a(b)+ {printf("valid ");}
. {printf("invalid ");} // it means every things excepts new line

%%
int main()
{
	yylex();
	return 0;
}