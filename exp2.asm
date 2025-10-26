;EXP2 : Aim: Implementation of number conversion ASCII to BCD using MASM

DATA SEGMENT
ASCII DB 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H, 39H, 30H
    DB 100 DUP(00H)
DATA ENDS

CODE SEGMENT
ASSUME CS: CODE, DS: DATA
START: MOV AX, DATA
    MOV DS, AX
    MOV CX, 10
    MOV BX, 0000H
BACK: MOV AL,[BX]
    AND AL,0FH
    MOV[BX+16],AL
    INC BX
    LOOP BACK
    INT 3H
CODE ENDS
END START


; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp2.asm (fir teen baar enter karo)
; link exp2.obj (warning aayegi lekin aage badho)
; TD exp2.exe
; "Run" click karo ya "f9" (mostly f9 hi karo)
; view -> another -> dump
