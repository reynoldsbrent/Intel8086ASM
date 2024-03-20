;The Following Program Defines a Macro to multiply two words by repeated addition. Macro is used in the main

MULTIPLY MACRO VALUE1, VALUE2, RESULT
    LOCAL BACK; CALLING A LABEL
    MOV BX, VALUE1
    MOV CX, VALUE2
    XOR AX, AX
    
    
    BACK: 
    ADD AX, BX
    LOOP BACK
    MOV RESULT, AX
          
ENDM

;--------------------------------------------------

.DATA
RESULT1 DW ?

.CODE
START:
MOV AX, DATA
MOV DS, AX
MULTIPLY 2, 5, RESULT1
MOV AH, 4CH
INT 21H

END START