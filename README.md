FTP nộp bài thực hành ở địa chỉ: 172.17.13.55
Chỉ nộp các file.asm nén mssv.rar


https://stackoverflow.com/questions/28665528/while-do-while-for-loops-in-assembly-language-emu8086



include "emu8086.inc"
.model small
.stack
.data
    m dw 30
    n dw 25
    us dw ?
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    push n
    push m
    
    call uscln
    mov us, ax
    mov ax, us
    call print_num_uns

    
    mov ah, 4ch
    int 21h    
main endp    

;bscnn proc

;bscnn endp

uscln proc
    push sp
    mov bp, sp   
    push bx
    mov ax, [bp+4]
    mov bx, [bp+6]
while:
    cmp ax, bx
    je endw
    cmp ax, bx
    jbe ifsai
    sub ax, bx
    jmp endif
ifsai:
    sub bx, ax
endif:
    jmp while        
endw:            
    pop bx
    pop sp
    ret 4 
uscln endp   


    define_print_num_uns    
end

; while(a != b>
; if(a > b)
; a -=b
; else
; b -=a;
