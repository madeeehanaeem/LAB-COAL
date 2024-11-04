.model small
.data
arr DB 49,50,51,52,53 
.code
main proc
    mov ax, @data
    mov ds,ax
    mov si, offset arr
   
           
           mov dx,[si]
           mov ah, 2
           int 21h  
           
              mov dx,[si+1]
           mov ah, 2
           int 21h 
           
           mov dx,[si+2]
           mov ah, 2
           int 21h
              
           mov dx,[si+3]
           mov ah, 2
           int 21h 
           
           mov dx,[si+4]
           mov ah, 2
           int 21h 
           
          mov ah, 4ch
           int 21h

main endp  
end main