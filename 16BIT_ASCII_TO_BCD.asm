; 16 BIT ASCII TO BCD
.DATA
ASCII_DATA DW 3939H
BCD_DATA DB ?

.CODE
START:
    MOV AX, DATA
    MOV DS, AX
    XOR AX, AX
    XOR DX, DX ;TO DISPLAY THE RESULT
    
    MOV AX, ASCII_DATA ;LOADING THE DATA
    
    AND AX, 0F0FH
    MOV CL, 4 ;SET A COUNTER FOR 4
    SHL AH, CL ;SHIFT AH 4 TIMES. RESULT IS 90
    OR AL, AH ;RESULT WILL BE STORED AT THE AL REGISTER
    MOV DL, AL
    MOV BCD_DATA, AL
    INT 21H



END START