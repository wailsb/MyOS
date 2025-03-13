[org 0x7c00]

mov ah,0x0e

main_menu:
    mov bx,menu_message
    call print_msg

    ; Read user input
    mov ah, 0x00
    int 0x16
    cmp al, '1'
    je calculator
    jmp main_menu

calculator:
    call calculator_app
    jmp main_menu

jmp $
%include "printhex.asm"
%include "printmemo.asm"
%include "calculator.asm"

menu_message:
    db "Choose an application:", 0x0A
    db "1. Calculator", 0x0A
    db "Enter choice: ", 0

booting_message:
    db "Hello!!......loading bootloader",0
after:
    db 0x0A,"Bootloader ... loaded",0
Hex_tmp:
    db "0x0000",0
times 510 - ($ - $$) db 0
dw 0xaa55