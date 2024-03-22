                                                              #start=Traffic_Lights.exe#


startOfSystem:    

mov ax, R_G_R_G   
out 4, ax
               
;(DELAY 1 MIN )
mov     cx, 0393h    ;    03938700H=60 000 000 microseconds
mov     dx, 8700h
mov     ah, 86h
int     15h    

;(DELAY 1 MIN )
mov     cx, 0393h       
mov     dx, 8700h
mov     ah, 86h      ;    interupt the bios
int     15h

;---------------------------------------------------------
                                                          
mov ax,RY_GY_RY_GY    
out 4,ax

;(DELAY 1 MIN )
mov     cx, 0393h    
mov     dx, 8700h
mov     ah, 86h
int     15h 
;---------------------------------------------------------

mov ax, G_R_G_R     
out 4, ax

;(DELAY 1 MIN )
mov     cx, 0393h    
mov     dx, 8700h
mov     ah, 86h
int     15h    

;(DELAY 1 MIN )
mov     cx, 0393h   
mov     dx, 8700h
mov     ah, 86h
int     15h
;---------------------------------------------------------         

mov ax,GY_RY_GY_RY     
out 4,ax

;(DELAY 1 MIN )
mov     cx, 0393h    
mov     dx, 8700h
mov     ah, 86h
int     15h
;---------------------------------------------------------     

jmp startOfSystem

; WEST NORTH EAST SOUTH                               
R_G_R_G               equ     0000_0011_0000_1100b 
RY_GY_RY_GY           equ     0000_0111_1001_1110b 
G_R_G_R               equ     0000_1000_0110_0001b
GY_RY_GY_RY           equ     0000_1100_1111_0011b 
 