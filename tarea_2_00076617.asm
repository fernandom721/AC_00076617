        org 100h

section .text
        ;ejercicio 2
        mov     ax, 2d
        mov     bx, 0h
        mov     cx, 0000h
        mov     dx, 0000h
        
        mov     cx, 0h 
        mul     cx
        mov     [210h], ax

loop11:   inc     bx
        mul     cx
        mov     [bx+210h], ax
        cmp     ax, 0xff
        jb      loop11

loop12: inc    bx
        inc     bx
        mul     cx
        mov     [bx+210h],ax
        cmp     bx, 12d
        jb      loop12


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
