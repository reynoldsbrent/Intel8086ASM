;Configure the ports of the 8255 as follows: port A = input, B = output
; PC0-PC3 = input, and PC4-PC7 = output. Determine the content of the control register and,
;program the 8255 to get the data from port a and send it to port b. In addition,
;input data from PCL and send out to PCU.

MOV AL, 91H
MOV DX, 303H
OUT DX, AL
MOV DX, 300H
IN AL, DX
MOV DX, 301H
OUT DX, AL
MOV DX, 302H
IN AL, DX
AND AL, 0FH
MOV CL, 4
ROL AL, CL
OUT DX, AL