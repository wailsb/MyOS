;address where our program is loaded
[org 0x7c00]
;our code
mov bx,booting_message
call print_msg
mov bx,after
call print_msg
jmp $
;message booting string
booting_message:
    db "Hello!!......loading bootloader",0
;message after booting string
after:
    db 0x0A,"Bootloader ... loaded",0
;print message function
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