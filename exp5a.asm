;EXP4. : Implementation of Block Transfer using Index Registers.

CODE SEGMENT
ASSUME CS: CODE
START: MOV AX,5000H
MOV DS,AX
MOV ES,AX
CLD
MOV SI,1000H
MOV DI,2000H
MOV CX,8H
REP MOVSB
INT 3H
CODE ENDS
END START

; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp4.asm (fir teen baar enter karo)
; link exp4.obj (fir teen baar enter karo, warning aayegi lekin aage badho)
; debug exp4.exe
; F 5000:1000 3000 0
; F 5000:1000 1007 1 2 3 4 5 6 7 8
; D 5000:1000 l8
; D 5000:2000 l8
; G
; D 5000:1000 l8
; D 5000:2000 l8



