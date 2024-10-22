;address where our program is loaded
[org 0x7c00]
;our code
mov ah,0x0e
mov dx,0x6f1e
call print_hex
jmp $
%include "printhex.asm"
%include "printmemo.asm"
;message booting string
booting_message:
    db "Hello!!......loading bootloader",0
;message after booting string
after:
    db 0x0A,"Bootloader ... loaded",0
;print message function
Hex_tmp:
    db "0x0000",0
times 510 -( $ - $$ ) db 0
dw 0xaa55