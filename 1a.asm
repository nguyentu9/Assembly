include "emu8086.inc"
.model small
.stack
.data
   n dw 10
   s dw ? 
.code
    mov ax, @data
    mov ds, ax
    
    mov cx, 1
    xor ax, ax
while:
    cmp cx, n
    ja endw
    add ax, cx
    add cx, 1
    jmp while
endw:
    mov s, ax   
    
    
    call print_num_uns

    mov ah, 4ch
    int 21h
    define_print_num_uns    

end



