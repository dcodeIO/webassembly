#pragma once

#include "module.h"

#define Math_E        2.7182818284590452354
#define Math_LN10     2.30258509299404568402
#define Math_LN2      0.69314718055994530942
#define Math_LOG10E   0.43429448190325182765
#define Math_LOG2E    1.4426950408889634074
#define Math_PI       3.14159265358979323846
#define Math_SQRT1_2  0.70710678118654752440
#define Math_SQRT2    1.41421356237309504880

WEBASSEMBLY_IMPORT double       Math_abs(double);
WEBASSEMBLY_IMPORT double       Math_acos(double);
WEBASSEMBLY_IMPORT double       Math_acosh(double);
WEBASSEMBLY_IMPORT double       Math_asin(double);
WEBASSEMBLY_IMPORT double       Math_atan(double);
WEBASSEMBLY_IMPORT double       Math_atan2(double, double);
WEBASSEMBLY_IMPORT double       Math_atanh(double);
WEBASSEMBLY_IMPORT double       Math_cbrt(double);
WEBASSEMBLY_IMPORT double       Math_ceil(double);
WEBASSEMBLY_IMPORT unsigned int Math_clz32(int);
WEBASSEMBLY_IMPORT double       Math_cos(double);
WEBASSEMBLY_IMPORT double       Math_cosh(double);
WEBASSEMBLY_IMPORT double       Math_exp(double);
WEBASSEMBLY_IMPORT double       Math_expm1(double);
WEBASSEMBLY_IMPORT double       Math_floor(double);
WEBASSEMBLY_IMPORT float        Math_fround(double);
WEBASSEMBLY_IMPORT double       Math_hypot(double, double);
WEBASSEMBLY_IMPORT int          Math_imul(int);
WEBASSEMBLY_IMPORT double       Math_log(double);
WEBASSEMBLY_IMPORT double       Math_log10(double);
WEBASSEMBLY_IMPORT double       Math_log1p(double);
WEBASSEMBLY_IMPORT double       Math_log2(double);
WEBASSEMBLY_IMPORT double       Math_max(double, ...);
WEBASSEMBLY_IMPORT double       Math_min(double, ...);
WEBASSEMBLY_IMPORT double       Math_pow(double, double);
WEBASSEMBLY_IMPORT double       Math_random();
WEBASSEMBLY_IMPORT double       Math_round(double);
WEBASSEMBLY_IMPORT double       Math_sign(double);
WEBASSEMBLY_IMPORT double       Math_sin(double);
WEBASSEMBLY_IMPORT double       Math_sinh(double);
WEBASSEMBLY_IMPORT double       Math_sqrt(double);
WEBASSEMBLY_IMPORT double       Math_tan(double);
WEBASSEMBLY_IMPORT double       Math_tanh(double);
WEBASSEMBLY_IMPORT double       Math_trunc(double);
