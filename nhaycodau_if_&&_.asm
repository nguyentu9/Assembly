include "emu8086.inc"
.model small
.stack
.data
    a dw 6
    b dw 5
    c dw 2
    p dw ?
    
.code
   ; tinh
   ; if(  a > c && a > b )
   ;    p =    

   
   mov ax, data
   mov ds, ax
   
   mov ax, a
   cmp ax, c
   jbe ifsai
   cmp ax, b
   jbe ifsai
   add ax, b
   sub ax, c
   mov p, ax
ifsai:   
   mov ax, p
   call print_num_uns
   mov ah, 4ch
   int 21
   define_print_num_uns     
end