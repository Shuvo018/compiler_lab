%option noyywrap
%{
	#include<stdio.h>
%}

%%
a(aa)*a {printf("valid ");}
. {printf("invalid ");}
%%
int main()
{
	yylex();
	return 0;
}