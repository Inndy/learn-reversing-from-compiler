all: helloworld.exe calling_convention.exe calling_convention.elf

helloworld.exe:
	x86_64-w64-mingw32-gcc helloworld.c -o helloworld.exe -nostdlib -eentry -luser32 -Wl,-subsystem,windows
	x86_64-w64-mingw32-strip helloworld.exe

calling_convention.exe:
	x86_64-w64-mingw32-gcc calling_convention.c -o calling_convention.exe -nostdlib -eentry -lmsvcrt
	x86_64-w64-mingw32-strip calling_convention.exe

calling_convention.elf:
	x86_64-linux-gnu-gcc calling_convention.c -o calling_convention.elf -nostdlib -eentry -lc
	x86_64-linux-gnu-strip calling_convention.elf

for_loop.exe:
	x86_64-w64-mingw32-gcc for_loop.c -o for_loop.exe -nostdlib -eentry -lmsvcrt
	x86_64-w64-mingw32-strip for_loop.exe

switch_case.exe:
	x86_64-w64-mingw32-gcc switch_case.c -o switch_case.exe -nostdlib -eentry -lmsvcrt
	x86_64-w64-mingw32-strip switch_case.exe
