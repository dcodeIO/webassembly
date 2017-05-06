#pragma once

#define STDIN_FILENO  0
#define STDOUT_FILENO 1
#define STDERR_FILENO 2

#ifdef __cplusplus
extern "C" {
#endif

int brk(void *);
void *sbrk(intptr_t);

#ifdef __cplusplus
}
#endif
