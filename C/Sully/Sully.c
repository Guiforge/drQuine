#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

static int		open_file(int i)
{
	char	*file;
	int		fd;

	asprintf(&file, "Sully_%d.c", i);
	fd = open(file, O_WRONLY | O_TRUNC | O_CREAT);
	free(file);
	return(fd);
}

static int		execute_kid(int i)
{
	char	*command;
	int		ret;

	asprintf(&command, "clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d && ./Sully_%d", i, i, i);
	ret = system(command);
	free(command);
	return(ret);
}

int		main()
{
	int		i = 5;
	char	*data = "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c%1$cstatic int		open_file(int i)%1$c{%1$c	char	*file;%1$c	int		fd;%1$c%1$c	asprintf(&file, %2$cSully_%3$c%4$c.c%2$c, i);%1$c	fd = open(file, O_WRONLY | O_TRUNC | O_CREAT);%1$c	free(file);%1$c	return(fd);%1$c}%1$c%1$cstatic int		execute_kid(int i)%1$c{%1$c	char	*command;%1$c	int		ret;%1$c%1$c	asprintf(&command, %2$cclang -Wall -Wextra -Werror ./Sully_%3$c%4$c.c -o Sully_%3$c%4$c && ./Sully_%3$c%4$c%2$c, i, i, i);%1$c	ret = system(command);%1$c	free(command);%1$c	return(ret);%1$c}%1$c%1$cint		main()%1$c{%1$c	int		i = %5$d;%1$c	char	*data = %2$c%6$s%2$c;%1$c	--i;%1$c	if (i >= 0)%1$c	{%1$c		int		fd = open_file(i);%1$c		dprintf(fd, data, 10, 34, 37, 'd', i, data);%1$c		close(fd);%1$c		return(execute_kid(i));%1$c	}%1$c	return(0);%1$c}";
	--i;
	if (i >= 0)
	{
		int		fd = open_file(i);
		dprintf(fd, data, 10, 34, 37, 'd', i, data);
		close(fd);
		return(execute_kid(i));
	}
	return(0);
}