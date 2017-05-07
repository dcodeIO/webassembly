int __errno = 0;

int *__errno_location(void)
{
	return &__errno;
}
