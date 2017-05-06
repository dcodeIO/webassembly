#define grow_memory(v) __builtin_wasm_grow_memory(v)
#define current_memory __builtin_wasm_current_memory()

extern void _abort();
extern void _grow();

static unsigned int available = 0;

void *sbrk(int increment) {
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
