include "emu8086.inc"
.model small
.stack
.data
   k dw 10 
   n dw ?
   s dw ? 
.code
    mov ax, @data
    mov ds, ax
    
    mov ax, k
    shl ax, 1
    add ax, 1
    mov n, ax
            
    mov cx, 1
    xor ax, ax
while:
    cmp cx, n
    ja endw
    add ax, cx
    add cx, 2
    jmp while
endw:
    mov s, ax   
    
    
    call print_num_uns

    mov ah, 4ch
    int 21h
    define_print_num_uns    

end