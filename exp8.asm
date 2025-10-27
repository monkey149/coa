; Aim: To develop Password Detection Application using DOS interrupts along with 8086 instructions

DISPLAY MACRO MSG
LEA DX, MSG
MOV AH, 09H
INT 21H
ENDM

DATA SEGMENT
USERMSG DB "ENTER YOUR PASSWORD: $"
CORRECT DB 0AH, 0DH, "PASSWORD MATCHED$"
WRONG DB 0AH, 0DH, "PASSWORD DOESN'T MATCH$"
USER_INPUT DB 10
DB 10 DUP (00H)
PASSWORD DB "APSIT$"
DATA ENDS

CODE SEGMENT
ASSUME CS: CODE, DS: DATA

START:
MOV AX, DATA
MOV DS, AX
MOV ES, AX
DISPLAY USERMSG
LEA DX, USER_INPUT
MOV AH, 0AH
INT 21H
MOV CL, USER_INPUT+1
CMP CL, 05H
JNZ UNMATCH
LEA SI, USER_INPUT+2
LEA DI, PASSWORD
CLD
REPZ CMPSB
JNZ UNMATCH
DISPLAY CORRECT
JMP EXIT

UNMATCH:
DISPLAY WRONG
EXIT:
INT 3H

CODE ENDS
END START

; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp8.asm (fir teen baar enter karo)
; link exp8.obj (fir teen baar enter karo)
; debug exp8.exe
; G (then enter wrong password)
; Q
; G (then enter correct password)
