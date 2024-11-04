.model small
.data
arr DB 49,50,51,52,53 
.code
main proc
    mov ax, @data
    mov ds,ax
    mov si, offset arr
    mov cx, 5
    loopx:
    mov dl, [si+4]
    mov ah, 2
    int 21h
   dec si
    loop loopx
   
           
           
          mov ah, 4ch
           int 21h

main endp  
end main