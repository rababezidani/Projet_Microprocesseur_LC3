.ORIG x3000
LEA R2, TARGET   ; Charge l'adresse TARGET dans R2
JMP R2           ; Saut vers l'adresse contenue dans R2
HALT             ; Arrête si aucun saut
TARGET
LEA R1, LABEL    ; Charge LABEL dans R1 (preuve du saut)
HALT
LABEL .FILL x300A ; Adresse cible
.END
