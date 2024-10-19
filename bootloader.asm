mov ah,0x0e
mov bx , the_secret
mov al,[bx]
int 0x10
add bx , 0x7c00
mov al,[0x7c00]
int 0x10;
mov al,[bx]
int 0x10;
jmp $
the_secret :
    db "X"
times 510 -( $ - $$ ) db 0
dw 0xaa55