mov ah,0x0e
start:
    ; Print "HELLO" using Al regter only
    mov al, "h"  ; Set AH = 0x0E (teletype function), AL = 'H'
    int 0x10        ; Print 'H'
    
    mov al, "e"  ; Set AL = 'E'
    int 0x10        ; Print 'E'
    
    mov al, "l"  ; Set AL = 'L'
    int 0x10        ; Print 'L'
    
    mov al, "l"  ; Set AL = 'L' again
    int 0x10        ; Print 'L'
    
    mov al, "o"  ; Set AL = 'O'
    int 0x10        ; Print 'O'
    
    jmp start           ; Infinite loop to keep the bootloader running

times 510 - ($ - $$) db 0 ; Fill the rest of the boot sector with zeros
dw 0xaa55          ; Boot sector signature
