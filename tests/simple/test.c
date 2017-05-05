#include <webassembly.h>

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

int main() {
    // This is executed before returning to JavaScript and requires an initialized stack. Not exported.
    console_log("Hello from webassembly");
    return 0;
}
