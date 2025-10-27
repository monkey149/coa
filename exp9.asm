; Aim: Implement Booth’s Multiplication Algorithm

DATA SEGMENT
    Q DB 0AH
    M DB 05H
    RESULT DW ?
DATA ENDS

CODE SEGMENT
ASSUME CS: CODE, DS: DATA

START:
    MOV AX, DATA
    MOV DS, AX

    MOV AX, 0000H
    MOV BX, 0000H

    MOV AL, Q
    MOV BL, M
    MOV CL, 8
    CLC

BACK:
    MOV DX, AX
    RCL DX, 1
    AND DX, 03H

    CMP DX, 01H
    JE ADD_OP
    CMP DX, 02H
    JE SUB_OP

NEXT:
    SAR AX, 1
    LOOP BACK
    JMP EXIT

SUB_OP:
    SUB AH, BL
    JMP NEXT

ADD_OP:
    ADD AH, BL
    JMP NEXT

EXIT:
    MOV RESULT, AX
    INT 3H

CODE ENDS
END START


; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp9.asm (fir teen baar enter karo)
; link exp9.obj (warning aayegi lekin aage badho)
; TD exp9.exe
; "Run" click karo ya "f9" (mostly f9 hi karo)
; view -> another -> dump

