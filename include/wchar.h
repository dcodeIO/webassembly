#pragma once

#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

#if L'\0'-1 > 0
#define WCHAR_MAX (0xffffffffu+L'\0')
#define WCHAR_MIN (0+L'\0')
#else
#define WCHAR_MAX (0x7fffffff+L'\0')
#define WCHAR_MIN (-1-0x7fffffff+L'\0')
#endif

#ifdef __cplusplus
#define NULL 0L
#else
#define NULL ((void*)0)
#endif

#undef WEOF
#define WEOF 0xffffffffU

int         wcscmp (const wchar_t *, const wchar_t *);
wchar_t *   wcscpy(wchar_t *restrict, const wchar_t *restrict);
size_t      wcslen (const wchar_t *);
int         wcsncmp (const wchar_t *, const wchar_t *, size_t);
wchar_t *   wcsncpy(wchar_t *restrict, const wchar_t *restrict, size_t);
int         wmemcmp (const wchar_t *, const wchar_t *, size_t);
wchar_t *   wmemcpy (wchar_t *__restrict, const wchar_t *__restrict, size_t);
wchar_t *   wmemmove (wchar_t *, const wchar_t *, size_t);
wchar_t *   wmemset (wchar_t *, wchar_t, size_t);

#ifdef __cplusplus
}
#endif
