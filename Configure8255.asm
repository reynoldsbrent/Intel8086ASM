;Ex: Configure 8255 as follows: port A as input, B as output, and all the bits in C as output. 
;Determine the content of the Control Register and, Program the ports to input data from A and send it to both B and C.


mov al, 82h
mov dx, 303h
out al, dx
mov dx, 301h
in al, dx
mov dx, 300h
out al, dx