#include <malloc.h>
#include <stddef.h>

#define LACKS_UNISTD_H
#define LACKS_TIME_H
#define USE_LOCKS 0
#define NO_MALLOC_STATS 1
#define DLMALLOC_EXPORT
#define HAVE_MMAP 0
#define malloc_getpagesize 1<<16
#define USAGE_ERROR_ACTION(m,p) _perrno=errno;errno=EFAULT;abort();errno=_perrno

static int _perrno;
