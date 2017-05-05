#pragma once

#define STDIN_FILENO  0
#define STDOUT_FILENO 1
#define STDERR_FILENO 2

int brk(void *);
void *sbrk(intptr_t);
