#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

/*
 Beautiful comment
*/

#define OPEN open("./Grace_kid.c", O_WRONLY | O_TRUNC | O_CREAT)
#define CODE "#include <stdio.h>%c#include <fcntl.h>%c#include <unistd.h>%c%c/*%c Beautiful comment%c*/%c%c#define OPEN open(%c./Grace_kid.c%c, O_WRONLY | O_TRUNC | O_CREAT)%c#define CODE %c%s%c%c#define FT(x)int main(){ int fd=OPEN; dprintf(fd, CODE, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 10, 10);close(fd); }%cFT()%c"
#define FT(x)int main(){ int fd=OPEN; dprintf(fd, CODE, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 10, 10);close(fd); }
FT()
