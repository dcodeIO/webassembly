#pragma once

#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

void *alloca(size_t);

#define alloca __builtin_alloca

#ifdef __cplusplus
}
#endif
