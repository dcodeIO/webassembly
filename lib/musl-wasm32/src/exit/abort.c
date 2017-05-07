#include <errno.h>

extern void _abort(int);

void abort() {
    _abort(errno);
}
