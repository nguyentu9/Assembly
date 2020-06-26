include "emu8086.inc"
.model small
.stack
.data
    n dw 3
    x dw 6  
    s dw 0
.code
    mov ax, data
    mov ds, ax
    
    mov bx, 1
    mov si, bx
    xor di, di
    mov cx, 1
while:
    cmp cx, n
    ja endw
    mov ax, si
    mul cx
    mov si, ax
    
    mov ax, bx
    mul x
    mov bx, ax
   
   div si
   add di, ax
   inc cx
   jmp while
endw:
    mov s, di
    mov ax, s
            
    
    call print_num_uns
    mov ah, 4ch
    int 21h
    define_print_num_uns
             
end