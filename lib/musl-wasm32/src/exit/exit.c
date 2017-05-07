extern void _exit(int);

void exit(int code) {
    _exit(code);
}
