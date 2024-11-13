.model small
.stack 100h
.data
msg1 DB 'Enter Numbers To Subtract$'
msg2 DB 'Enter Numbers To Add$' 
 
.code
main proc
 mov ax, @data
 mov ds, ax
 mov dx, offset msg1
 mov ah,9
 int 21h

 call space 
 call subt
 call space 

 mov dx, offset msg2
 mov ah,9
 int 21h

 call space
 call sum


main endp
space proc
 mov dx, 10
 mov ah,2
 int 21h
 mov dx,13
 mov ah,2
 int 21h
 ret
space endp 
 
 subt proc
 mov ah,1
    int 21h

    mov cl,al
 
    mov dl,45
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h  
    
    mov bl,al
    sub cl,bl
    add cl,48
    mov dl,cl

    mov dl,61
    mov ah,2
    int 21h
     sub bl,1
    mov dl,cl
    mov ah,2
    int 21h
     ret
subt endp   
 
 sum proc
 mov ah,1
    int 21h

    mov cl,al
 
    mov dl,43
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h  
    
    mov bl,al
    add cl,bl
    sub cl,48
    mov dl,cl

    mov dl,61
    mov ah,2
    int 21h
    sub bl,1
    mov dl,cl
    mov ah,2
    int 21h
     ret
sum endp 
end main
