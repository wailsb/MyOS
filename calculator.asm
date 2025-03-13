calculator_app:
    ; Clear screen
    mov ah, 0x00
    int 0x10

    ; Display calculator header
    mov bx, calculator_header
    call print_msg

    ; Simple addition example
    mov bx, num1_prompt
    call print_msg
    call read_number
    mov cx, ax

    mov bx, num2_prompt
    call print_msg
    call read_number
    add ax, cx

    ; Display result
    mov bx, result_prompt
    call print_msg
    call print_number
    jmp calculator_exit

    read_number:
        ; Read a single digit number
        mov ah, 0x00
        int 0x16
        sub al, '0'
        movzx ax, al
        ret

    print_number:
        ; Print a single digit number
        add al, '0'
        mov ah, 0x0E
        int 0x10
        ret

    calculator_exit:
        ret

calculator_header:
    db "Calculator - Simple Addition", 0x0A, 0
num1_prompt:
    db "Enter first number: ", 0
num2_prompt:
    db "Enter second number: ", 0
result_prompt:
    db "Result: ", 0

calculator_message:
    db "Calculator Application", 0x0A
    db "Press any key to return to the main menu...", 0
