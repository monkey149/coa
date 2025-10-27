; Exp2 Aim: To apply 8086 instruction set knowledge for evaluating and displaying the status of condition flags
; using flag manipulation instructions.


.stack 100h
.model small
.data
msg db 0dh, 0ah, "----------- OF DF IF TF SF ZF -- AF -- PF -- CF $"
new1 db 0dh, 0ah, "$"
flag dw ?
.code
start:
mov ax, @data
mov ds, ax

mov dx,offset msg
mov ah, 09h
int 21h

mov dx,offset new1
mov ah, 09h
int 21h

cli
stc
std

pushf
pop BX
mov flag, bx
mov CX, 16
mov bx,8000h ; 1000 0000 0000 0000

loops:
mov ax,flag
and ax,bx
jz zero
mov dl, 31h
mov ah, 02h
int 21h
jmp space

zero:
mov dl,30h
mov ah,02h
int 21h

space:
mov dl,' '
mov ah,02h
int 21h

mov ah,02h
int 21h

ror bx,1
loop loops

mov ah,4ch
int 21h
end start

; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp2.asm (fir teen baar enter karo)
; link exp2.obj (fir teen baar enter karo)
; exp2.exe

