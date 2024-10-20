booting_message:
    db "Hello!!......loading bootloader",0



mov bx,0x7c00
add bx,booting_message
call print_msg
jmp $

print_msg:
    pusha
    mov ah,0x0e
    loop:
        mov al,[bx]
        cmp al,0
        je end
        int 0x10
        add bx,1
        jmp loop
    end:
        popa
        ret
times 510 -( $ - $$ ) db 0
dw 0xaa55