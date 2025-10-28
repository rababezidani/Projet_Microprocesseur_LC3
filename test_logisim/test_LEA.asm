.ORIG x3000          ; Début du programme à l'adresse mémoire x3000
LEA R1, LABEL        ; Charger l'adresse de LABEL dans le registre R1
LEA R2, LABEL2       ; Charger l'adresse de LABEL2 dans le registre R2
LEA R3, LABEL_NEG    ; Charger une adresse avec un offset négatif dans R3
HALT                 ; Arrêter le programme

LABEL .FILL x4000    ; Adresse cible LABEL (exemple)
LABEL2 .FILL x5000   ; Adresse cible LABEL2 (exemple)
LABEL_NEG .FILL x2FFF; Adresse cible avec un offset négatif
.END                 ; Fin du programme
