print_hex:
    mov cx,dx
    and dh,0b11110000
    mov byte [Hex_tmp],dh
    mov bx,Hex_tmp
    call print_msg
    ret