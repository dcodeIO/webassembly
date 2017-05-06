#pragma once

#include "malloc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#define NULL 0L
#else
#define NULL ((void*)0)
#endif

typedef struct { int quot, rem; } div_t;

int abs (int);
div_t div (int, int);

#ifdef __cplusplus
}
#endif
