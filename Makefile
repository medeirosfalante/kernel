run:
	nasm boot_sect.asm -f bin -o boot_sect.bin && qemu-system-x86_64 boot_sect.bin
build:
	nasm boot_sect.asm -f bin -o boot_sect.bin
log-hex:
	od -t x1 -A n boot_sect.bin > boot_sect.hex