.model small
.stack 100h
.data
.code

main proc
    mov cx,26
    mov dx,97
    
    print:
    mov ah,02
    int 21h
    
    Inc dx
    Loop print
    
    mov ah,4ch
    int 21h
    main endp
end main