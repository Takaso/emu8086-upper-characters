data segment
    stringa db "goku solos no diff $"
ends
code segment
start:    
    mov ax, data   
    mov ds, ax
    lea bx, stringa
    mov dx, bx
    jmp n
n:
    cmp [bx], 024h
    je m
    mov cx, bx
    sub [bx], 020h
    mov bx, cx
    inc bx
    jmp n
m:
    mov ah, 9
    int 21h
    mov ax, 4c00h
    int 21h    
ends
end start