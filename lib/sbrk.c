#include <webassembly.h>

#define grow_memory(v) __builtin_wasm_grow_memory(v)

static unsigned int available = 0;

void *sbrk(ptrdiff_t increment) {
    if (increment < 0)
        return (void *)-1;
    unsigned int total = current_memory << 16;
    if (available < increment) {
        if (grow_memory(((increment - available - 1) >> 16) + 1) < 1) {
            _abort(); // throws on JS side
            return (void *)-1;
        }
        _grow();
        unsigned int new_total = current_memory << 16;
        available += new_total - total;
        total = new_total;
    }
    unsigned int offset = total - available;
    available -= increment;
    return (void *)offset;
}

int brk(void *end_data_segment) {
    return -1;
}
