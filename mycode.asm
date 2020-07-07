include "emu8086.inc"
.model small
.stack
.data
    a dw 30, 60, 20, 50, 25
    n dw 5
    bs dw ?
    max dw ?
.code
main proc
    mov ax, @data
    mov ds, ax 
    push n
    mov ax, offset a
    push ax
    
    
    
    
    call sapxep
    push n   
    mov ax, offset a
    push ax
    call xuatmang
    
    
    
    ;call bscnnmang
    ;call xuatmang
    ;call tinhtong
    ;call demchan
    ;mov bs, ax
    ;mov ax, bs
    
    
    ;call timmax
    ;mov max, ax
    
    ;call print_num_uns    
    mov ah, 4ch
    int 21h    
main endp


sapxep proc
    push bp
    mov bp, sp
    push bx 
    push cx
    push dx
    mov cx, [bp+6]
    dec cx
    mov dx, cx
for6:
    or dx, dx
    jz endfor6
    mov cx, dx  
    mov bx, [bp+4]
for5:
    mov ax, [bx]
    cmp ax, [bx+2]
    jbe kodoicho
    xchg ax, [bx+2]
    xchg ax, [bx]   
kodoicho:    
    add bx, 2
    loop for5   
    dec dx
    jmp for6    
endfor6:        
    pop dx
    pop cx
    pop bx
    pop bp    
    ret 4    
sapxep endp
    
    
    
    

demchan proc
    push bp
    mov bp, sp
    push bx
    push cx
    xor cx, cx
    xor ax ,ax
for4:
    cmp cx, [bp+6]
    jae endfor4
    test word ptr [bx],1
    jnz sole4
    inc ax
sole4:      
    inc cx
    add bx, 2
    jmp for4
endfor4:        
    pop cx
    pop bx    
    pop bp
    ret 4    
demchan endp    
     
     
     
tinhtong proc
    push bp
    mov bp, sp
    push bx
    push cx
    
    xor cx, cx
    xor ax, ax
for3:
    cmp cx, [bp+6]       
    jae endfor3
    add ax, [bx]
    inc cx
    add bx, 2
    jmp for3
endfor3:       
    pop cx
    pop bx
    pop bp
    ret 4    
tinhtong endp 

     
     
     

timmax proc
   push bp
   mov bp, sp
   push bx
   push cx
   mov cx, 1
   mov bx, [bp+4]
   mov ax, [bx]
   add bx, 2
for2:
    cmp cx, [bp+6]
    jae endfor2
    cmp ax, [bx]
    jae ifsai2
    mov ax, [bx]
ifsai2:
    inc cx
    add bx, 2
    jmp for2
endfor2:
    pop cx
    pop bx
    pop bp
    ret 4    
timmax endp                 
             
             

xuatmang proc
    push bp
    mov bp, sp
    push bx
    push cx
    push dx
    xor cx, cx
    mov bx, [bp + 4]
for1:
    cmp cx, [bp + 6]
    jae endfor1
    mov ax, [bx]
    call print_num_uns
    mov ah, 2
    mov dl, ' '
    int 21h       
    inc cx
    add bx, 2
    jmp for1:
endfor1:
    pop dx
    pop cx
    pop bx
    pop bp    
    ret 4
xuatmang endp           
       
       
       
       
       
bscnnmang proc
    push bp
    mov bp, sp
    push bx
    push cx
    
    mov cx, 1    
    mov bx, [bp + 4]
    mov ax, [bx]
    add bx, 2
for:
    cmp cx, [bp+6]
    jae endfor
    push ax
    push [bx]
    call bscnn
    inc cx
    add bx, 2
    jmp for   
endfor:        
    ;bs = a[0] ; for(int i =1; i < n; i++)  bs = bsnnn(bs, a[i])
    
    pop cx
    pop bx
    pop bp          
    ret 4
bscnnmang endp        
            
            
            
    
bscnn proc
    push bp
    mov bp, sp   ; bs = a*b/us
    push bx
    push dx
    
    push [bp+6]
    push [bp+4]    
    call uscln
    mov bx, ax
    mov ax, [bp+4]
    
    mul word ptr [bp+6]
    div bx   
    pop dx
    pop bx
    pop bp
    ret 4
bscnn endp


                     
                     
                     
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