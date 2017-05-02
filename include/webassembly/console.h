#pragma once

#include "module.h"

__attribute__ ((format (printf, 1, 2)))
import void console_log(const char *, ...);

__attribute__ ((format (printf, 1, 2)))
import void console_info(const char *, ...);

__attribute__ ((format (printf, 1, 2)))
import void console_warn(const char *, ...);

__attribute__ ((format (printf, 1, 2)))
import void console_error(const char *, ...);
