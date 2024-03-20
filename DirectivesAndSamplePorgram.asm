STSEG SEGMENT
            DB 64 DUP(?)   
STSEG ENDS
;---------------------------
DTSEG SEGMENT
DATA1        DB           52H
DATA2        DB           29H
SUM          DB           ?
DTSEG ENDS
;---------------------------
CDSEG SEGMENT
MAIN  PROC   FAR
      ASSUME CS:CDSEG,DS:DTSEG,SS:STSEG
      MOV    AX,DTSEG
      MOV    DS,AX
      MOV    AL, DATA1
      MOV    BL, DATA2
      ADD    AL,BL
      MOV    SUM,AL
      MOV    AH,4CH
      INT    21H
MAIN  ENDP
CDSEG ENDS  
END   MAIN


     
    