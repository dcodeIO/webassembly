#pragma once

#define WEBASSEMBLY_IMPORT extern
#define WEBASSEMBLY_EXPORT __attribute__ ((visibility ("default")))

#define import WEBASSEMBLY_IMPORT
#define export WEBASSEMBLY_EXPORT
