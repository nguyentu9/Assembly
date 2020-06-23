include "emu8086.inc"
.model small
.stack
.data
    a dw 81
    sx dw 0
    
    
.code

   ; do
   ; lenh
   ;
   ; while(dieukien)


; lenh thuc hien it nhat 1 lan
; neu dk la dung, tiep tuc thuc hien lenh
; nguoc lai, dk la sai, bo qua lenh


    
       
   mov ax, data
   mov ds, ax
   xor cx, cx
   xor ax, ax

for:
    cmp cx, n
    ja endfor
    add ax, cx
    add cx, 2
    
    
    jmp for
endfor:
    mov s, ax
    
   
   call print_num_uns
   mov ah, 4ch
   int 21
   define_print_num_uns     
end