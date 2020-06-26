include "emu8086.inc"
.model small
.stack
.data
    n dw 10
    s dw ?
    temp dw 0    
.code
    
    mov ax, data
    mov ds, ax
    
    xor cx, cx
    mov cx, 1  
    
    mov ax, temp
    mov bx, s
 while:
    cmp cx, n
    ja endw
    add ax, cx
    add bx, ax
    inc cx
    jmp while
 endw:              
    mov s, bx
    mov ax, s
    
    
    call print_num_uns
    mov ah, 4ch
    int 21h
    define_print_num_uns 
   
end