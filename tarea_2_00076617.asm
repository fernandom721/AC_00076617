        org 100h

section .text
        


        ;ejercicio 1
        ;promedio: 5.4
        
        mov     di, 0d
        mov     cx, [len]

lupi:   mov     bl, [comnt+di]
        mov     [di+200h], bl
        inc     di
        loop    lupi

        int     20h



section .data

comnt   db      "En el Segundo"
len     equ     $-comnt
