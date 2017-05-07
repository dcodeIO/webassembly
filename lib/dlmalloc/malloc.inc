#include <malloc.h>
#include <stddef.h>

#define LACKS_UNISTD_H

#define USE_LOCKS 0
#define NO_MALLOC_STATS 1
#define DLMALLOC_EXPORT __attribute__ ((visibility ("default")))
                     // ^ exported when used
#define HAVE_MMAP 0
#define malloc_getpagesize 1 << 16
#define ABORT _abort()

extern void *sbrk(ptrdiff_t size);
extern void _abort();
