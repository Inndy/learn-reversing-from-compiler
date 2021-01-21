#include <stdio.h>
#include <stdint.h>

int64_t f1337()
{
	return 0x1337133713371337;
}

void entry()
{
	printf("%d %d %d %d %d %d %d %d %d %d\n", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
	printf("%d %d %d %ld\n", 0xaa, 0xbb, 0xcc, f1337());
}
