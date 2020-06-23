include "emu8086.inc"
.model small
.stack
.data
    a dw 3
    b dw 4
    c dw 5
    p dw ?
    s dw ?
    
.code
    mov ax, data
    mov ds, ax
    mov ax, a
    mov ax, b
    mov ax, c
    shr ax, 1
    mov p, ax
    mov bx, ax
    mov cx, ax
    sub bx, a
    mul bx
    mov bx, cx
    sub bx, b
    mul bx
    mov bx, cx
    sub bx, c
    mul bx
    mov s, ax
    mov ax, s



end

