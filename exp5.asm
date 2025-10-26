; EXP5. Implementation of Block Exchange using Index Registers.

CODE SEGMENT
ASSUME CS: CODE
START: MOV AX, 5000H
MOV DS, AX
MOV ES, AX
CLD
MOV SI, 1000H
MOV DI, 3000H
MOV CX, 8H
REP MOVSB
MOV SI, 2000H
MOV DI, 1000H
MOV CX, 8H
REP MOVSB
MOV SI, 3000H
MOV DI, 2000H
MOV CX, 8H
REP MOVSB
INT 3H
CODE ENDS
END START


; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp5.asm (fir teen baar enter karo)
; link exp5.obj (fir teen baar enter karo, warning aayegi lekin aage badho)
; debug exp5.exe
; F 5000:1000 3000 0
; F 5000:1000 1007 1 2 3 4 5 6 7 8
; F 5000:2000 2007 11 12 13 14 15 16 17 18
; G
; D 5000:1000 1007
; D 5000:2000 2007

