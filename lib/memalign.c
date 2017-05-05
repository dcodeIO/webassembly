#include <webassembly.h>

/*
Copyright © 2005-2014 Rich Felker, et al.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#define SIZE_MAX __SIZE_MAX__

void *memalign(size_t align, size_t len)
{
	unsigned char *mem, *new, *end;
	size_t header, footer;

	if ((align & -align) != align) {
		errno = EINVAL;
		return NULL;
	}

	if (len > SIZE_MAX - align) {
		errno = ENOMEM;
		return NULL;
	}

	if (align <= 4*sizeof(size_t)) {
		if (!(mem = malloc(len)))
			return NULL;
		return mem;
	}

	if (!(mem = malloc(len + align-1)))
		return NULL;

	new = (void *)((uintptr_t)mem + align-1 & -align);
	if (new == mem) return mem;

	header = ((size_t *)mem)[-1];

	if (!(header & 7)) {
		((size_t *)new)[-2] = ((size_t *)mem)[-2] + (new-mem);
		((size_t *)new)[-1] = ((size_t *)mem)[-1] - (new-mem);
		return new;
	}

	end = mem + (header & -8);
	footer = ((size_t *)end)[-2];

	((size_t *)mem)[-1] = (header&7) | new-mem;
	((size_t *)new)[-2] = (footer&7) | new-mem;
	((size_t *)new)[-1] = (header&7) | end-new;
	((size_t *)end)[-2] = (footer&7) | end-new;

	free(mem);
	return new;
}
