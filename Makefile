run:
	nasm kernel.asm -f bin -o kernel.bin && qemu-system-x86_64 kernel.bin
build:
	nasm kernel.asm -f bin -o kernel.bin
log-hex:
	od -t x1 -A n kernel.bin > kernel.hex