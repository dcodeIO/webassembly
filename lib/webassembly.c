// Haven't found a way to do proper linking, yet, so this is included
// in compilation instead of being linked.

int errno = 0;

#include "sbrk.c"
#include "memcpy.c"
#include "memalign.c"
#include "memmove.c"
#include "memset.c"
#include "malloc.c"
