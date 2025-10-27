; Aim: To implement an 8086 assembly language program that checks whether a predefined string is a
; palindrome by applying string manipulation and comparison techniques



.model small
.data
strr db "liril"
len equ $-strr
rstr db 20 dup (0)
msg1 db 10,13, "it is a palindrome $"
msg2 db 10,13, "it is not a palindrome $"
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
mov si,offset strr
mov di,offset rstr
add di, len-1
mov cx, len
back:
mov al, [si]
mov [di], al
inc si
dec di
loop back
mov si,offset strr
mov di,offset rstr
mov cx, len
cld
repe cmpsb
jne down
lea dx, msg1
jmp down1
down:
lea dx, msg2
down1:
mov ah, 09h
int 21h
mov ah, 4ch
int 21h
end start

; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp6.asm (fir teen baar enter karo)
; link exp6.obj (fir teen baar enter karo)
; exp6.exe

