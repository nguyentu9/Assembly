include "emu8086.inc"
.model small
.stack
.data
    n dw 10
    s dw 0
    
    
.code

   ; while(  dk)
   ; j<dksai> endw
   ; lend;
   ; jmp While 

    
       
   mov ax, data
   mov ds, ax
   xor cx, cx
   xor ax, ax
while:
    cmp cx, n
    ja endw
    add ax, cx
    inc cx
    jmp while
    
    
    jmp while
endw:        
    mov s, ax   
    
   
   call print_num_uns
   mov ah, 4ch
   int 21
   define_print_num_uns     
end