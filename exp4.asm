; EXP6. Implementation of two 8-bit BCD additions

.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB 25H
    NUM2 DB 38H
    RESULT DB ?
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV AL, NUM1
    ADD AL, NUM2
    DAA
    MOV RESULT, AL
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN


; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp6.asm (fir teen baar enter karo)
; link exp6.obj (fir teen baar enter karo)
; debug exp6.exe
; t
; t
; t
; t
; fir AX = 0763 aaye tab stop ho jao
