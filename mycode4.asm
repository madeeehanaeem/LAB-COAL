.model small
.stack 100h
.data
.code
main Proc
mov ah,01
int 21h
mov bl,al
mov ah,01
int 21h
mov cl,al
sub cl,bl
mov ah,01
int 21h
mov bl,al
mov dl,61
mov ah,02
int 21h
add bl,cl
sub bl,96
mov dl,bl
mov ah,02
int 21h
mov ah,4ch
int 21h
main endp
end main