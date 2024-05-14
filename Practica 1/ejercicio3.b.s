.data 
    
    #Exercise Header
    Practica:     .word     1               # Practical reference
    Ejercicio:    .word     3             # Exercise number
    Apartado:     .string   "b"             # Exercise selection
    
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
    
    div t2, t0, t1 #usamos la funcion div para calcular el cociente
    
    mul t3,t2,t1 # Multiplicamos el cociente por el divisor para obtener el numero 
    
    sub t4,t0,t3 #Restamos el dividendo - la multiplicación anterior, obteniendo el resultado
    
    la t5, VariR #Igualamos el resultado t2 a la variable r
    sw t4,0(t5)
  
    
#Aquí mostraremos el resultado por pantalla
 
    lw a0, VariR
    li a7, 1
    ecall

end:
li a7, 10 
ecall




