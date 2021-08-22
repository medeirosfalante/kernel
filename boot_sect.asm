

mov bx , 2
cmp    bx, 4      
je     Less   
    mov al , 'J'
    mov ah , 0x0e
    int 0x10  
jmp    Both            
Less: 
    mov al , 'R' 
    mov ah , 0x0e
    int 0x10
Both:

jmp $
times 510 -( $ - $$ ) db 0 

dw 0xaa55