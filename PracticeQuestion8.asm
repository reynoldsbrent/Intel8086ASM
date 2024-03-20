;Q8. Print a sample string in the console using the below DOS commands.                  

.DATA
STRING DB 10,13, 'THIS IS A SAMPLE STRING' ,'$'


.CODE
START:
    MOV AX, DATA
    MOV DS, AX
    
    ;LOAD THE ADDRESS OF THE STRING AT THE DX REGISTER
    
    LEA DX, STRING
    MOV AH, 09H ;SET AH TO PRINT THE STRING / WRITING STRING TO CONSOLE 
    
    ;END OF PORGRAM
    INT 21H
    MOV AH, 4CH
    INT 21H

END START