loop:
    mov ah,0xe
    mov al,"H"
    int 0x10
    mov ah,0xe
    mov al,"E"
    int 0x10
    mov ah,0xe
    mov al,"L"
    int 0x10
    mov ah,0xe
    mov al,"L"
    int 0x10
    mov ah,0xe
    mov al,"O"
    int 0x10
    mov ah,0xe
    mov al," "
    int 0x10
    mov ah,0xe
    mov al,"W"
    int 0x10
    mov ah,0xe
    mov al,"O"
    int 0x10
    mov ah,0xe
    mov al,"R"
    int 0x10
    mov ah,0xe
    mov al,"L"
    int 0x10
    mov ah,0xe
    mov al,"D"
    int 0x10
    jmp loop
times 510-($-$$) db 0
dw 0x55aa