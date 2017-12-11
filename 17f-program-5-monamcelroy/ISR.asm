; ISR.asm
; Name: Mona McElroy
; UTEid: mkm3672
; Keyboard ISR runs when a key is struck
; Checks for a valid RNA symbol and places it at x2600
.ORIG x2500
Start	LDI R1, X
	BRzp Notrite
	LDI R0, Y
	BRnzp Skip
Skip	AND R2, R2, #0
	LDI R2, A
	ADD R2, R2, #1
	ADD R2, R2, R0
	BRz Store
	LDI R2, C
	ADD R2, R2, #1
	ADD R2, R2, R0
	BRz Store
	LDI R2, G
	ADD R2, R2, #1
	ADD R2, R2, R0
	BRz Store
	LDI R2, U
	ADD R2, R2, #1
	ADD R2, R2, R0
	BRz Store
	BRnzp Notrite
Store	STI R0, Z
Notrite	RTI
	HALT
	
	       
Z	.FILL x2600
X	.FILL xFE00
Y	.FILL xFE02
A	.FILL x0041
C	.FILL x0043
G	.FILL x0047
U	.FILL x0055

.END
