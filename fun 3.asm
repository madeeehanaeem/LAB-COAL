.model small
.stack 100h
.data
msg1 DB 'Solve Expression  $'
msg2 DB 'x-y+z-1  $' 
 
.code
main proc
 mov ax, @data
 mov ds, ax
 mov dx, offset msg1
 mov ah,9
 int 21h

 call space 
 mov dx, offset msg2
 mov ah,9
 int 21h
  call space
 call exp
 call space 


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
 
 exp proc
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

    mov dl,43
    mov ah,2
    int 21h

    mov ah,1
    int 21h
    mov bl,al

    add bl,cl
    sub bl,48
    mov dl,bl

    mov dl,45 
    mov ah,2
    int 21h

    mov dl,'1'
    mov ah,2
    int 21h

    mov dl,61
    mov ah,2
    int 21h
    
    sub bl,1
    mov dl,bl
    mov ah,2
    int 21h
     ret
exp endp   
 
end main


