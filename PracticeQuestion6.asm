;Q6. Write a program to load and display the effective address of a variable.

.DATA
VAR1 DB 22H
VAR2 DB 23H

.CODE
START:
    MOV AX, DATA
    MOV DS, AX
    XOR AX, AX
    
    MOV AL, VAR1  
    MOV BL, VAR2
    LEA DX, VAR1 ; THE ADDRESS OF VAR1 IS STORED IN THE DX REGISTER
    LEA CX, VAR2
    
    
END START