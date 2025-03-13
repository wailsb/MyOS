# MyOS
a simple os with a bootloader programmed with assembly

## if you modify the assembly the command you'll need to regenerate the iso img file

```console
$chmod +755 run.sh
$./run.sh
```

### run using :
```console
qemu-system-x86_64 -drive format=raw,file=bootloader.bin
```

### assembling the bootloader:
```console
nasm bootloader.asm -f bin -o bootloader.bin
```

