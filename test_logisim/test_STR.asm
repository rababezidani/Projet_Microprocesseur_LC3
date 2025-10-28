.ORIG x3000
LEA R2, BASE_ADDR  ; Charge l'adresse de BASE_ADDR dans R2
LD R1, VALUE       ; Charge la valeur x1234 dans R1
STR R1, R2, #2     ; Stocke la valeur de R1 dans BASE_ADDR + 2
HALT               ; Arrête le programme
VALUE .FILL x1234    ; Valeur initiale
BASE_ADDR .FILL x0000 ; Base de stockage
.END
