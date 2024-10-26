.model small
.stack 100h
.data
.code

main proc
    mov cx,26
    mov dx,122
    
    print:
    mov ah,02
    int 21h
    
    Dec dx
    Loop print
    
    mov ah,4ch
    int 21h
    main endp
end main