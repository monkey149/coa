.MODEL SMALL
.STACK 100H
.DATA
	num1 DW 10
	num2 DW 5
	result DW ?

.CODE
MAIN PROC
	MOV AX, @DATA
	MOV DS, AX

	MOV AX, num1
	ADD AX, num2
	MOV result, AX

	MOV AX, num1
	SUB AX, num2
	MOV result, AX

	MOV AX, num1
	AND AX, num2
	MOV result, AX
	MOV AH, 4CH
	INT 21H
MAIN ENDP
END MAIN
