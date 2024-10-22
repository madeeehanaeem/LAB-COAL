.model small
.stack 100h

.data
msg1 DB 10,13, 'Enter lab mid marks : $'
msg2 DB 10,13, 'Need hard work.$'
msg3 DB 10,13, 'Satisfactory.$'
msg4 DB 10,13, 'Invalid input. Please enter a number between 0-100.$'

.code
main proc
    mov ax, @data
    mov ds, ax

    
    lea dx, msg1
    mov ah, 9
    int 21h

    
    mov ah, 1
    int 21h

    
    sub al, '0'

   
    cmp al, 0
    jl invalid
    cmp al, 100
    jg invalid

    
    cmp al, 5
    jl need_work

    
    lea dx, msg3
    mov ah, 9
    int 21h
    jmp exit

need_work:
   
    lea dx, msg2
    mov ah, 9
    int 21h
    jmp exit

invalid:
    ; Invalid input
    lea dx, msg4
    mov ah, 9
    int 21h

exit:
    mov ah, 4ch
    int 21h

main endp
end main