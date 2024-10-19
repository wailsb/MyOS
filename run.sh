nasm bootloader.asm -f bin -o bootloader.bin
qemu-system-x86_64 -drive format=raw,file=bootloader.bin