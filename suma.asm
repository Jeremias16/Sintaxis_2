; Autor: Jeremias 
include 'emu8086.inc'
org 100h
print '' 
print ''
printn ' ' 
print 'Altura: '
call scan_num
MOV altura, CX
MOV AX,altura
PRINTN ''
print '' 
print ''
printn ' ' 
print 'for:'
printn ' ' 
print ''
; For: 1
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioFor1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinFor1
; For: 2
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioFor2:
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinFor2
; if: 1
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif1
print '' 
print '-'
; else: 1
JMP Eelse3
Eif1:
print '' 
print '+'
Eelse3:
INC j
JMP InicioFor2
FinFor2:
print '' 
print ''
printn ' ' 
print ''
INC i
JMP InicioFor1
FinFor1:
; For: 3
; For: 4
; For: 5
; For: 6
; For: 7
print '' 
print ''
printn ' ' 
print 'while:'
printn ' ' 
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
; While 1
InicioWhile1:
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FindeWhile1
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
; While 2
InicioWhile2:
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FindeWhile2
; if: 44
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif44
print '' 
print '-'
; else: 2
JMP Eelse46
Eif44:
print '' 
print '+'
Eelse46:
INC j
JMP InicioWhile2
FindeWhile2:
INC i
print '' 
print ''
printn ' ' 
print ''
JMP InicioWhile1
FindeWhile1:
print '' 
print ''
printn ' ' 
print 'do:'
printn ' ' 
print ''
MOV AX, 1
PUSH AX
POP AX
; Asignacion i
MOV i, AX
InicioDo1:
MOV AX, 250
PUSH AX
POP AX
; Asignacion j
MOV j, AX
InicioDo2:
; if: 87
MOV AX, j
PUSH AX
MOV AX, 2
PUSH AX
POP BX
POP AX
DIV  BX
PUSH DX
MOV AX, 0
PUSH AX
POP BX
POP AX
CMP AX, BX
JNE Eif87
print '' 
print '-'
; else: 3
JMP Eelse89
Eif87:
print '' 
print '+'
Eelse89:
INC j
MOV AX, j
PUSH AX
MOV AX, 250
PUSH AX
MOV AX, i
PUSH AX
POP BX
POP AX
ADD AX, BX
PUSH AX
POP BX
POP AX
CMP AX, BX
JAE FinDo2
JMP InicioDo2
FinDo2:
INC i
print '' 
print ''
printn ' ' 
print ''
MOV AX, i
PUSH AX
MOV AX, altura
PUSH AX
POP BX
POP AX
CMP AX, BX
JA FinDo1
JMP InicioDo1
FinDo1:
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
END
