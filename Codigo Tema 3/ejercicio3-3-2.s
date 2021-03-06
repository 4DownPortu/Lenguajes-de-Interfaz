.data
var1 : .asciz " %d\ n"

.text
.global main

/* Salvo registros */
main : push { r4, lr }

/* Introduzco los 4 primeros par á metros vía registros */
	mov r0, # 1
	mov r1, # 2
	mov r2, # 3
	mov r3, # 4

/* Introduzco el 5o par á metro por pila */
	mov r4, # 5
	push { r4 }

/* Llamada a funci ón poly3 (1, 2, 3, 4, 5) */
	bl poly3

/* Equilibro la pila ( debido al 5o par á metro ) */
	add sp, # 4

/* Paso resultado de la funci ón a r1, cadena a
imprimir a r0 y llamo a la funci ón */
	mov r1, r0
	ldr r0, = var1
	bl printf

/* Segunda llamada, esta vez poly3 (1, -1, 1, -1, 8) */
	mov r0, # 1
	mov r1, # -1
	mov r2, # 1
	mov r3, # -1
	mov r4, # 8
	push { r4 }
	bl poly3
	add sp, # 4

/* Imprimo resultado de segunda llamada */
	mov r1, r0	
	ldr r0, = var1
	bl printf

/* Llamo e imprimo poly3 (2, 0, 0, 0, 8) */
	mov r0, # 2
	mov r1, # 0
	mov r2, # 0
	mov r3, # 0
	mov r4, # 8
	push { r4 }
	bl poly3
	