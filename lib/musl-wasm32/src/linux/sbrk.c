#include <stddef.h>
#include <stdlib.h>
#include <errno.h>

extern void _grow();

static size_t available = 0;

void *sbrk(int increment) {
    // malloc actually increments in proper page sizes,
    // so the following is merely there to make sure.
    if (increment < 0)
        return (void *)-1;
    size_t total = __builtin_wasm_current_memory() << 16;
    if (available < increment) {
        if (__builtin_wasm_grow_memory(((increment - available - 1) >> 16) + 1) < 1) {
            errno = ENOMEM;
            abort();
            return (void *)-1;
        }
        _grow();
        size_t new_total = __builtin_wasm_current_memory() << 16;
        available += new_total - total;
        total = new_total;
    }
    total -= available;
    available -= increment;
    return (void *)total;
}
