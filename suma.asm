; Autor: Jeremias 
include 'emu8086.inc'
org 100h
; imprimir mensaje
print '' 
print ''
printn ' ' 
print 'dame  el valor a hacer las operaciones : '
call scan_num
MOV p, CX
MOV AX,p
PRINTN ''
INC p
; imprimir mensaje
print '' 
print ''
printn ' ' 
print 'El valor cuando se aplica un ++ es  : '
MOV AX,p
CALL print_num
PRINTN ''
DEC p
; imprimir mensaje
print '' 
print ''
printn ' ' 
print 'El valor cuando se aplica un -- es  : '
MOV AX,p
CALL print_num
PRINTN ''
