.model small
.stack 100h

.data
msg1 DB 'Enter First Number: $'
msg2 DB 'Enter Second Number: $'
msg3 DB 'Numbers are Equal.$'
msg4 DB 'Numbers are not Equal.$'

.code
main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    mov cl, al 
    
    mov dl, 10
    mov ah, 2
    int 21h

   mov dl, 13
  mov ah, 2
    int 21h

    lea dx, msg2
    mov ah, 9
    int 21h
    

    mov ah, 1
    int 21h
    mov dl, al

    cmp dl, cl
    je label1
    mov dl, 10
    mov ah, 2
    int 21h

   mov dl, 13
  mov ah, 2
    int 21h

    lea dx, msg4
    mov ah, 9
    int 21h
    jmp exit

label1:
mov dl, 10
    mov ah, 2
    int 21h

   mov dl, 13
  mov ah, 2
    int 21h
    lea dx, msg3
    mov ah, 9
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h

   mov dl, 13
  mov ah, 2
    int 21h

exit:
    mov ah, 4ch
    int 21h

main endp
end main