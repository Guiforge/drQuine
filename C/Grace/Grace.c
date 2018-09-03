#include <stdio.h>
#include <fcntl.h>

/*
 Beautiful comment
*/

#define OPEN open("./Grace_kid.c", O_WRONLY | O_TRUNC | O_CREAT)
#define CODE "#include <stdio.h>%c#include <fcntl.h>%c%c/*%c Beautiful comment%c*/%c%c#define OPEN open(%c./Grace_kid.c%c, O_WRONLY | O_TRUNC | O_CREAT)%c#define CODE %c%s%c%c#define FT(x)int main(){ dprintf(OPEN, CODE, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 10, 10); }%cFT()%c"
#define FT(x)int main(){ dprintf(OPEN, CODE, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 34, CODE, 34, 10, 10, 10); }
FT()
