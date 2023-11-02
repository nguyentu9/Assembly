include "emu8086.inc"
.model small
.stack
.data
    x dw 5
    y dw 10
    z dw 20
    t dw 15
    m dw ?
.code
    mov ax, @data
    mov ds, ax
    
    max x,y,bx
    max z,t,cx
    max bx,cx,m
    
    
    mov ax, m
    call print_num_uns
    mov ah, 4ch
    int 21h
max macro a, b, m
    local ifsai, endif
    mov ax, a
    cmp ax, b
    jb ifsai
    mov m, ax
    jmp endif
ifsai:
    mov ax, b
    mov m, ax
endif:
max endm 

define_print_num_uns
          
end