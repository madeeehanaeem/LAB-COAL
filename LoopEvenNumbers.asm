.model small
.stack 100h
.data
.code

main proc
    mov cx,5
    mov dx,56
    
    print:
    mov ah,02
    int 21h
    
    Dec dx 
    Dec dx
    Loop print
    
    mov ah,4ch
    int 21h
    main endp
end main