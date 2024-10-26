.model small
.stack 100h
.data

                                                                           
msg DB '*****                       Madeeha Naeem                               *****$'       
msg1 DB '**                  Contact no: 03006281338                             **$' 
msg2 DB '**            Email: 53705students.riphah.edu.pk                         **$'
msg3 DB '***                       Degree : BSSE                                   **$'
msg4 DB '**          University : Riphah International University                 ***$'
msg5 DB '***                        CGPA : 3.56                                    ***$'
msg6 DB '**                    Experience : 1 year                                ***$'
msg7 DB '***             References will be given on demand                      ***$'                      

.code 

main proc 
mov ax,@data
       mov ds,ax
       mov dl,msg
       mov dx, offset msg
       
       mov ah,9
       int 21h
       
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h
       
       mov dl,msg1
       mov dx,offset msg1
       
       mov ah,9
       int 21h   
       
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h 
       
       
       mov dl,msg2
       mov dx,offset msg2
       
       mov ah,9
       int 21h
       
        mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h 
       
        
       mov dl,msg3
       mov dx,offset msg3
       
       mov ah,9
       int 21h
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h  
       
       mov dl,msg4
       mov dx,offset msg4
       
       mov ah,9
       int 21h  
       
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h  
       
       
       mov dl,msg5
       mov dx,offset msg5
       
       mov ah,9
       int 21h 
       
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h 
       
       
       mov dl,msg6
       mov dx,offset msg6
       
       mov ah,9
       int 21h 
        
       
       mov dx,10
       mov ah,2
       int 21h
       
       mov dx,13
       mov ah,2
       int 21h 
        
       mov dl,msg7
       mov dx,offset msg7
       
       mov ah,9
       int 21h 
        
        
    mov ah, 4ch
    int 21h
    main endp
end main