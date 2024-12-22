%option noyywrap
%{
	#include<stdio.h>
%}

%%
(ab)*abb {printf("valid ");}
. {printf("invalid ");}
%%
int main()
{
	yylex();
	return 0;
}