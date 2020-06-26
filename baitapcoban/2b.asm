include "emu8086.inc"
.model small
.stack
.data
    n dw 3
    s dw 0  
     ; chua xong
.code
    mov ax, data
    mov ds, ax
    
    mov cx, 1 
    xor ax, ax ;binh phuong
    xor si, si ; si
while:
    cmp cx, n
    ja endw
    mov ax, cx
    mul cx     ; dx thay doi noi dung
    inc cx    
    add si, ax
    
    jmp while
endw:
    mov s, si
    mov ax, s
    
    call print_num_uns
    mov ah, 4ch
    int 21h
    define_print_num_uns
             
end