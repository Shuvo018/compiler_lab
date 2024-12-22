%option noyywrap
%{
	#include<stdio.h>
%}

%%
a(aa)* {printf("valid ");}
. {printf("invalid ");}
%%
int main()
{
	yylex();
	return 0;
}