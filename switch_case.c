#include <stdio.h>

void switch_me(int i)
{
	switch(i) {
		case 0:
			putchar('0');
			break;
		case 1:
			putchar('1');
			break;
		case 3:
			putchar('3');
			break;
		default:
			putchar('?');
	}
}

void entry()
{
	for(int i = 0; i < 5; i++) {
		switch_me(i);
	}
	putchar('\n');
}
