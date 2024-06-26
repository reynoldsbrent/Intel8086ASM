; Q2. Write a program to find out the sum of the digits of an 8-bit number.

.DATA
NUMBER DB 47
RES DB ?

.CODE
START:
    MOV AX, DATA
    MOV DS, AX
    XOR AX, AX
    MOV AL, NUMBER
    MOV BL, 10   
    XOR CL, CL ;SETTING CL UP TO STORE THE RESULT
    
SumOfDigits: ;labl of the loop 
    XOR AH, AH ;AH REGISTER IS CLEAR
    DIV BL ;DIVIDING AL WITH BL: AH: REMAINDER  AL: QUOTIENT
    ADD CL, AH ;ADDING THE REMAINDER TO CL         
    MOV RES, CL ;STORING THE RESULT INTO A MEMORY LOCATION
    CMP AL, 0 ;CHEKCING IF THE QUOTIENT IS ZZERO
    JNE SumOfDigits ;IF AL IS NOT ZERO, THEN JUMP BACK TO SumOfDigits
    



END START