nasm bootloader.asm -f bin -o bootloader.bin
rm iso/bootloader.bin
rm myimage.iso
cp bootloader.bin iso/
genisoimage -o myimage.iso -b bootloader.bin -no-emul-boot -boot-load-size 4 -boot-info-table iso/