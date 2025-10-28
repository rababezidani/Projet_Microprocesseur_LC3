.ORIG x3000
LD R1, VALUE     ; Charge une valeur dans R1
ST R1, STORE_LOC ; Stocke le contenu de R1 à STORE_LOC
HALT             ; Arrête le programme
VALUE .FILL x1234   ; Valeur initiale
STORE_LOC .FILL x0000 ; Adresse où la valeur sera stockée
.END
