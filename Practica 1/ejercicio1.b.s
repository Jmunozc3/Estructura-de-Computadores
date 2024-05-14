.data 
    
    #Exercise Header
    Practica:     .word     1               # Practical reference
    Ejercicio:    .word     1              # Exercise number
    Apartado:     .string   "a"             # Exercise selection
    
    Alumno_1:     .string   "Juan Manuel Mu?oz del Cerro"       # Name alumn 1
    Alumno_2:     .string   "Francisco Gozalez Prieto"              # Name alumn 2

    cadena:       .string   "39\nsteps"  # Reservamos una cadena de caracteres
 
.text

begin:
    
    # Assembly code
    la a0, cadena    # Cargar en a0 la direccion
    li a7, 4         # Cargamos en a7 el valor 4 (string)
    ecall
    
end:
    li a7, 10
    ecall