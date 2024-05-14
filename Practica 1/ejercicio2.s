.data 

    #Exercise Header
    Practica:     .word     1               # Practical reference
    Ejercicio:    .word     2             # Exercise number
    Apartado:     .string   "a"             # Exercise selection

    Alumno_1:     .string   "Juan Manuel Muñoz del Cerro"       # Name alumn 1
    Alumno_2:     .string   "Francisco Gozalez Prieto"              # Name alumn 2

    # Creamos las variables

    VariF:    .word     0
    VariA:    .word     5
    VariB:    .word     3
    VariC:    .word     2
    VariD:    .word     2

 
 .text
 
begin:

 lw t0, VariA
 lw t1, VariB
 
 add a0, t0, t1 #Se suma variable a y variable b a la variable a0
 
 
 lw t2, VariC
 lw t3, VariD
 
 add a1, t2, t3 # Se suma variable c y variable d a la variable a1

 
 sub a2, a0, a1 # Se restan a0 y a1 y se almacena en a2 el resultado

 la t3, VariF
 sw a2,0(t3)

# Mostrar por pantalla el resultado

lw a0, VariF
li a7, 1
ecall

end:
li a7, 10 
ecall