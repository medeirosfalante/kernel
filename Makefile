run:
	make build &&  make flp  &&   qemu-system-x86_64 kernel.bin
build:
	nasm kernel.asm -f bin -o kernel.bin
log-hex:
	od -t x1 -A n kernel.bin > kernel.hex
flp:
	dd status=noxfer conv=notrunc if=kernel.bin of=kernel.flp