#include <webassembly.h>

#include <alloca.h>
#include <assert.h>
#include <byteswap.h>
#include <complex.h>
#include <crypt.h>
#include <ctype.h>
#include <endian.h>
#include <errno.h>
#include <fenv.h>
#include <float.h>
#include <iconv.h>
#include <inttypes.h>
#include <iso646.h>
#include <limits.h>
#include <locale.h>
#include <malloc.h>
#include <math.h>
#include <memory.h>
#include <regex.h>
#include <search.h>
#include <stdalign.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdnoreturn.h>
#include <string.h>
#include <strings.h>
#include <values.h>
#include <wchar.h>
#include <wctype.h>

export int32_t add(int32_t a, int32_t b) {
    return a + b;
}

/* no export */ int fib(int n) {
  int i, t, a = 0, b = 1;
  for (i = 0; i < n; i++) {
      t = a + b; a = b; b = t;
  }
  return b;
}

export void *_malloc(size_t size) {
    return malloc(size);
}

export void _free(void* p) {
    free(p);
}

int main() {
    // This is executed before returning to JavaScript and requires an initialized stack. Not exported.
    console_log("Hello from webassembly!");
    console_log("Did you know that the sine of %lf is %lf in C / %lf in JS?", M_PI, sin(M_PI), Math_sin(Math_PI));
    return 0;
}
