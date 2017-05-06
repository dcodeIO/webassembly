// Haven't found a way to do proper linking, yet, so this is included
// in compilation instead of being linked.

#include "sys/brk.c"
#include "sys/sbrk.c"

#include "errno/errno.c"

#include "string/memcpy.c"
#include "string/memalign.c"
#include "string/memmove.c"
#include "string/memset.c"

#include "wchar/wcscmp.c"
#include "wchar/wcscpy.c"
#include "wchar/wcslen.c"
#include "wchar/wcsncmp.c"
#include "wchar/wcsncpy.c"
#include "wchar/wmemcmp.c"
#include "wchar/wmemcpy.c"
#include "wchar/wmemmove.c"
#include "wchar/wmemset.c"

#include "malloc/malloc.c"

#include "stdlib/abs.c"
#include "stdlib/div.c"
