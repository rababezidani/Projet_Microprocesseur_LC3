.ORIG x3000
LD R1, NEG_VALUE    ; Charge une valeur négative dans R1
ADD R1, R1, #0      ; Met à jour les indicateurs NZP
BRn NEGATIVE_BRANCH ; Saut si l'indicateur N est activé
HALT                ; Arrête si aucun saut n'a lieu
NEGATIVE_BRANCH
LEA R2, LABEL       ; Charge LABEL dans R2 (preuve du saut)
HALT
NEG_VALUE .FILL xFFFF ; Valeur négative (-1)
LABEL .FILL x300A     ; Adresse cible
.END
