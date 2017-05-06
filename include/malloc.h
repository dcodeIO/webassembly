#pragma once

#include "webassembly/module.h"
#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef EXPORT_MALLOC
WEBASSEMBLY_EXPORT
#endif
void* malloc(unsigned int size);

#ifdef EXPORT_FREE
WEBASSEMBLY_EXPORT
#endif
void free(void* ptr);

#ifdef EXPORT_REALLOC
WEBASSEMBLY_EXPORT
#endif
void* realloc(void* p, size_t n);

#ifdef EXPORT_CALLOC
WEBASSEMBLY_EXPORT
#endif
void* calloc(size_t n_elements, size_t element_size);

#ifdef __cplusplus
}
#endif
