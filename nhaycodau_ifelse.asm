include "emu8086.inc"
.model small
.stack
.data
    a dw 5
    b dw 3
    c dw 2
    d dw 0
    
.code
   ; tinh
   ; if(  a + b < c  )
   ;    d = (a + b) * c
   ; else
   ;    d = (a + b) /c
   
   mov ax, data
   mov ds, ax
   
   mov ax, a
   add ax, b
   cmp ax, c
   jbe ifsai 
   mul c
   
   jmp endif
   mov dx, ax 
ifsai:
   
   xor dx, dx
   
   ; chua xong 
   
   call print_num_uns
   mov ah, 4ch
   int 21
   define_print_num_uns     
end