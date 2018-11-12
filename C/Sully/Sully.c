#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>

static FILE		*open_file(int i)
{
	char	*file;
	FILE	*stream;

	asprintf(&file, "Sully_%d.c", i);
	stream = fopen(file, "w");
	free(file);
	return(stream);
}

static int		execute_kid(int i)
{
	char	*command;
	int		ret;

	ret = 0;
	if (i > 0)
	{
		asprintf(&command, "clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d && ./Sully_%d", i, i, i);
		ret = system(command);
		free(command);
	}
	return(ret);
}

int		main()
{
	int		i = 5;
	char	*data = "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#include <string.h>%1$c%1$cstatic FILE		*open_file(int i)%1$c{%1$c	char	*file;%1$c	FILE	*stream;%1$c%1$c	asprintf(&file, %2$cSully_%3$cd.c%2$c, i);%1$c	stream = fopen(file, %2$cw%2$c);%1$c	free(file);%1$c	return(stream);%1$c}%1$c%1$cstatic int		execute_kid(int i)%1$c{%1$c	char	*command;%1$c	int		ret;%1$c%1$c	ret = 0;%1$c	if (i > 0)%1$c	{%1$c		asprintf(&command, %2$cclang -Wall -Wextra -Werror ./Sully_%3$cd.c -o Sully_%3$cd && ./Sully_%3$cd%2$c, i, i, i);%1$c		ret = system(command);%1$c		free(command);%1$c	}%1$c	return(ret);%1$c}%1$c%1$cint		main()%1$c{%1$c	int		i = %4$d;%1$c	char	*data = %2$c%5$s%2$c;%1$c	if (strchr(__FILE__, '_'))%1$c		--i;%1$c	if (i >= 0)%1$c	{%1$c		FILE	*stream = open_file(i);%1$c		if (stream) { %1$c			fprintf(stream, data, 10, 34, 37, i, data);%1$c			fclose(stream);%1$c			return(execute_kid(i));%1$c		}%1$c	}%1$c	return(1);%1$c}";
	if (strchr(__FILE__, '_'))
		--i;
	if (i >= 0)
	{
		FILE	*stream = open_file(i);
		if (stream) { 
			fprintf(stream, data, 10, 34, 37, i, data);
			fclose(stream);
			return(execute_kid(i));
		}
	}
	return(1);
}