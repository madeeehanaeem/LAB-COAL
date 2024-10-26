.model small
.stack 100h

.data
msg1 DB 10,13, 'Enter a one digit number: $'
msg2 DB 10,13, 'Number is positive.$'
msg3 DB 10,13, 'Number is zero.$'
msg4 DB 10,13, 'Invalid input. Please enter a digit.$'

.code
main proc
    mov ax, @data
    mov ds, ax

    
    lea dx, msg1
    mov ah, 9
    int 21h

   
    mov ah, 1
    int 21h

   
    cmp al, '0'
    jl invalid
    cmp al, '9'
    jg invalid

    
    cmp al, '0'
    je zero

    
    lea dx, msg2
    mov ah, 9
    int 21h
    jmp exit

zero:
   
    lea dx, msg3
    mov ah, 9
    int 21h
    jmp exit

invalid:
   
    lea dx, msg4
    mov ah, 9
    int 21h

exit:
    mov ah, 4ch
    int 21h

main endp
end main