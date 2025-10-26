;EXP3.: Aim: Implementation of number conversion HEX to BCD using MASM

DATA SEGMENT
X DB 0C2H
    DB 100 DUP(00)
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START: MOV AX,DATA
    MOV DS,AX
    MOV AX,0000H
    MOV BX,0000H
    MOV AL,X
    MOV CL,0AH
REPEAT: DIV CL
    MOV[BX+8],AH
    INC BX
    MOV AH,00H
    CMP AL,CL
    JNC REPEAT
    MOV[BX+8],AL
    INT 3H
CODE ENDS
END START

; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp3.asm (fir teen baar enter karo)
; link exp3.obj (fir teen baar enter karo, warning aayegi lekin aage badho)
; TD exp3.exe
; "Run" click karo ya "f9" (mostly f9 hi karo)
; view -> another -> dump

