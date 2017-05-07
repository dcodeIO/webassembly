#pragma once

#define WEBASSEMBLY_IMPORT extern
#define WEBASSEMBLY_EXPORT __attribute__ ((visibility ("default")))

#ifndef import
#define import WEBASSEMBLY_IMPORT
#endif

#ifndef export
#define export WEBASSEMBLY_EXPORT
#endif
