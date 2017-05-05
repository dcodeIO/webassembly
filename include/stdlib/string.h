#pragma once

#include <webassembly/module.h>
#include "stdint.h"

#ifdef EXPORT_MEMCPY
WEBASSEMBLY_EXPORT
#endif
void *memcpy(void *dest, const void *src, size_t n);

#ifdef EXPORT_MEMMOVE
WEBASSEMBLY_EXPORT
#endif
void *memmove(void *dest, const void *src, size_t n);

#ifdef EXPORT_MEMSET
WEBASSEMBLY_EXPORT
#endif
void *memset(void *dest, int c, size_t n);

#ifdef EXPORT_MEMALIGN
WEBASSEMBLY_EXPORT
#endif
void *memalign(size_t align, size_t len);

#ifdef EXPORT_STRLEN
WEBASSEMBLY_EXPORT
#endif
size_t strlen(const char *s);
