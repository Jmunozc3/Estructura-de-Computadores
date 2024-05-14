.data 
    
    #Exercise Header
    Practica:     .word     1               # Practical reference
    Ejercicio:    .word     3             # Exercise number
    Apartado:     .string   "a"             # Exercise selection
    
    Alumno_1:     .string   "Juan Manuel Mu?oz del Cerro"       # Name alumn 1
    Alumno_2:     .string   "Francisco Gozalez Prieto"              # Name alumn 2

    #Creamos las variables
    
    VariR:    .word     0
    VariA:    .word     6
    VariB:    .word     4
    
  
 
 .text
 
begin:

#Aquí se calcula el resultado de la división A entre B
  
    lw t0, VariA
    lw t1, VariB
    
    rem t2, t0, t1 #usamos la funcion rem
    
    la t3, VariR #Igualamos el resultado t2 a la variable r
    sw t2,0(t3)
  
    
#Aquí mostraremos el resultado por pantalla
 
    lw a0, VariR
    li a7, 1
    ecall

end:
li a7, 10 
ecall




