; EXP7. Analyze the functions of INT 10H video interrupts for cursor manipulation, such
; as reshaping the cursor.

.model small
.stack 100h
.data
    menu db 13,10,'case1.increase cursor(block)',13,10
    db 'case2.decrease cursor(underline)',13,10
    db 'Press key 1-7,any other to exit...',13,10,'$'
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ah, 09h
    lea dx, menu
    int 21h
main_loop:
    mov ah, 07h
    int 21h

    cmp al,'1'
    je increase_cursor
    cmp al,'2'
    je dercease_cursor
    jmp exit_program
increase_cursor:
    mov ch,00h
    mov ah,01h
    mov cl,07h
    int 10h
    jmp main_loop

dercease_cursor:
    mov ah,01h
    mov ch, 06h
    mov cl, 07h
    int 10h
    jmp main_loop
exit_program:
mov ah,4ch
int 21h
end main

; How to run!!!!!!!!! 
; mount c (location of your folder)
; c:
; cd 8086
; masm exp7.asm (fir teen baar enter karo)
; link exp7.obj (fir teen baar enter karo)
; exp7.exe

