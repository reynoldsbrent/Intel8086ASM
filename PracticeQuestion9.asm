;Q9. Print your name and address in the console using DOS commands.

.DATA
STRING1 DB 10,13, 'BRENT' ,'$'
STRING2 DB 10,13, '9113 BROOKWOOD'

.CODE
START:
    MOV AX, DATA
    MOV DS, AX 
    
    LEA DX, STRING1
    MOV AH, 09H
    
    LEA DX, STRING2
    MOV AH, 09H
    
    INT 21H
    MOV AH, 4CH
    INT 21H
    
    
END START
    