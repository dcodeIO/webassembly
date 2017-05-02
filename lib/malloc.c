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
#define DLMALLOC_EXPORT static __attribute__((always_inline))
#define HAVE_MMAP 0
#define HAVE_MORECORE 1
#define USE_DL_PREFIX 1
#define MALLOC_FAILURE_ACTION

#define ABORT _abort()
#define ENOMEM 12
#define EINVAL 22
#define SIZE_MAX __SIZE_MAX__

static int errno = 0;

#include "dlmalloc/malloc.c"

void* malloc(unsigned int size) {
    return dlmalloc(size);
}

void free(void* ptr) {
    dlfree(ptr);
}

void* realloc(void* p, size_t n) {
    return dlrealloc(p, n);
}

void* calloc(size_t n_elements, size_t element_size) {
    return dlcalloc(n_elements, element_size);
}
