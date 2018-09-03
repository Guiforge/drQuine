#include <stdio.h>

/* tata */

char return_n()
{
	return(10);
}

int main (void)
{
	/* toto */
	char *data = "#include <stdio.h>%c%1$c/* tata */%1$c%1$cchar return_n()%1$c{%1$c	return(10);%1$c}%1$c%1$cint main (void)%1$c{%1$c	/* toto */%1$c	char *data = %c%s%c;%1$c	printf(data, return_n(), 34, data, 34);%1$c}%1$c";
	printf(data, return_n(), 34, data, 34);
}
