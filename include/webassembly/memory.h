#pragma once

#include "module.h"

#define grow_memory(v) __builtin_wasm_grow_memory(v)
#define current_memory __builtin_wasm_current_memory()

WEBASSEMBLY_IMPORT unsigned int memoryBase;
WEBASSEMBLY_IMPORT unsigned int tableBase;
