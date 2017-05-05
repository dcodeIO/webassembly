#pragma once

#include "module.h"

__attribute__ ((format (printf, 1, 2)))
WEBASSEMBLY_IMPORT void console_log(const char *, ...);

__attribute__ ((format (printf, 1, 2)))
WEBASSEMBLY_IMPORT void console_info(const char *, ...);

__attribute__ ((format (printf, 1, 2)))
WEBASSEMBLY_IMPORT void console_warn(const char *, ...);

__attribute__ ((format (printf, 1, 2)))
WEBASSEMBLY_IMPORT void console_error(const char *, ...);
