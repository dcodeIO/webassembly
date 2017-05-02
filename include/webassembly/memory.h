#pragma once

#define current_memory __builtin_wasm_current_memory()

#include "types.h"
#include "module.h"

import void _abort();
import void _grow();

void *sbrk(ptrdiff_t increment);
int brk(void *end_data_segment);

#ifdef EXPORT_MEMCPY
export
#endif
void *memcpy(void *restrict dest, const void *restrict src, size_t n);

#ifdef EXPORT_MEMMOVE
export
#endif
void *memmove(void *dest, const void *src, size_t n);

#ifdef EXPORT_MALLOC
export
#endif
void* malloc(unsigned int size);

#ifdef EXPORT_FREE
export
#endif
void free(void* ptr);

#ifdef EXPORT_MEMSET
export
#endif
void *memset(void *dest, int c, size_t n);

#ifdef EXPORT_MEMALIGN
export
#endif
void *memalign(size_t align, size_t len);

#ifdef EXPORT_REALLOC
export
#endif
void* realloc(void* p, size_t n);

#ifdef EXPORT_CALLOC
export
#endif
void* calloc(size_t n_elements, size_t element_size);

#include "../../lib/sbrk.c"
#include "../../lib/memset.c"
#include "../../lib/memcpy.c"
#include "../../lib/malloc.c"
#include "../../lib/memmove.c"
#include "../../lib/memalign.c"
