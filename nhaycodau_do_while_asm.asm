include "emu8086.inc"
.model small
.stack
.data
    a dw 81
    x dw 0
    
    
.code

   ; do
   ; lenh
   ;
   ; while(dieukien)


; lenh thuc hien it nhat 1 lan
; neu dk la dung, tiep tuc thuc hien lenh
; nguoc lai, dk la sai, bo qua lenh
;----------------
    ; DoWhile:
    ;   lenh
    ; dk
    ; j<dkdung> DoWhile
    
    
; Xn = a/2
; do
;   X0 = xn;
;   Xn = (1/2)(x0 + a/x0)

; while(x0<xn)    
       
   mov ax, data
   mov ds, ax
 
    
    mov ax, a
    shr ax, 1
dowhile:
    mov bx, ax
    mov ax, a
    xor dx, dx
    div bx
    add ax, bx
    shr ax, 1
    cmp ax, bx
    jb dowhile
    mov x, ax     
 
    
   
   call print_num_uns
   mov ah, 4ch
   int 21
   define_print_num_uns     
end