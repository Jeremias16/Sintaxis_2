; Autor: Jeremias 
include 'emu8086.inc'
org 100H
MOV AX,257
PUSH AX
MOV DX, 1
MOV AX, DX
PUSH AX
POP AX
POP AX
; Asignacion p
MOV p, AX
int 20h
RET
define_scan_num
define_print_num 
define_print_num_uns
; V a r i a b l e s
altura dw 0h
i dw 0h
j dw 0h
k dw 0h
p dw 0h
END
