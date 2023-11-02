include "emu8086.inc"
.model small
.stack
.data
    s1 db "HelloABCD1234", 0
    len dw ?
.code
    mov ax, @data
    mov ds, ax
    mov es, ax
    xor al, al
    
    mov si, offset s1
    mov cx, -1
    mov bx, cx
    cld
repne scasb
    sub bx, cx
    dec bx
    mov len, bx   
    
    mov ax, len
    call print_num_uns   
    mov ah, 4ch
    int 21h
    define_print_num_uns
end