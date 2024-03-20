; CONVERT AN 8 BIT ASCII TO BCD

.DATA 
ASCII_DATA DB 35H
BCD_DATA DB ?


.CODE

START:
    MOV AX, DATA
    MOV DS, AX
    XOR AX, AX
    MOV AL, ASCII_DATA ;STORING 35H TO AL
    AND AL, 0FH ;AND 35H WITH OFH TO GENERATE 05H
    MOV BCD_DATA, AL
    MOV DL, BCD_DATA ;RESULT SHOWING AT THE DL REGISTER
    INT 21H



END START