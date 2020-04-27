        org 100h

section .text
        ;ejercicio 3
        mov     ax, 0000h
        mov     bx, 0000h 
        mov     cx, 0000h
        mov     dx, 0000h

        mov     dx, 0h 
        mov     [220h], dx
        mov     cx, 1h 
        mov     [221h], cx

        mov     bx, 1h

fibo1:  inc     bx
        mov     ax,[220h+bx-1h]
        mov     bx,[220h+bx-2h]
        add     ax, cx
        mov     [bx+220h],ax

        cmp     ax, 0xff
        cmp     bx, 1Ah
        jb      fibo1


        

        ;ejercicio 2
        mov     ax, 2d
        mov     bx, 2h
        mov     cx, 0000h
        mov     dx, 0000h
        
        mov     cx, 2d
        mul     cx
        mov     [210h], ax

loop11: inc     bx
        mul     cx
        mov     [bx+210h], ax
        cmp     ax, 0xff
        jb      loop11

loop12: inc     bx
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
