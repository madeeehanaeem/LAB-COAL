.model small
.stack 100h
.data
msg1 DB 'Name Madeeha Naeem $'
msg2 DB 'Age 20$' 
msg3 DB 'Program Software Engineering$'
msg4 DB 'Riphah International University$' 
msg5 DB 'CGPA 3.58$'
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
      
      mov dx, offset msg3
 mov ah,9
 int 21h

 call space
     
     mov dx, offset msg4
 mov ah,9
 int 21h

 call space

            
            mov dx, offset msg5
 mov ah,9
 int 21h

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
end main