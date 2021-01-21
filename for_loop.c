#include <stdio.h>

void entry()
{
	for(int i = 0; i < 5; i++) {
		putchar(0x30 + i);
	}
	putchar('\n');
}
