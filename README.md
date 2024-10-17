# MyOS
a simple os with a bootloader programmed with assembly
## if you modify the assembly the command you'll need to regenerate the iso img file

```console
$cp bootloader.bin iso/
$genisoimage -o myimage.iso -b bootloader.bin -no-emul-boot -boot-load-size 4 -boot-info-table iso/
```
### run using :
```console
$qemu-system-x86_64 -cdrom myimage.iso
```

