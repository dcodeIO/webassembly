#include <webassembly.h>

#define LACKS_UNISTD_H
#define LACKS_FCNTL_H
#define LACKS_SYS_PARAM_H
#define LACKS_SYS_MMAN_H
#define LACKS_STRINGS_H
#define LACKS_STRING_H
#define LACKS_SYS_TYPES_H
#define LACKS_ERRNO_H
#define LACKS_STDLIB_H
#define LACKS_SCHED_H
#define LACKS_TIME_H

#define USE_LOCKS 0
#define NO_MALLOC_STATS 1
#define INSECURE 0
#define MALLINFO_FIELD_TYPE int
#define DLMALLOC_EXPORT
#define HAVE_MMAP 0
#define HAVE_MORECORE 1
#define USE_DL_PREFIX 0
#define MALLOC_FAILURE_ACTION
#define malloc_getpagesize 1 << 16

#define ABORT _abort()
#define SIZE_MAX __SIZE_MAX__
