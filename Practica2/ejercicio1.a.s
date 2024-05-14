.data 
    
    #Exercise Header
    Practica:     .word     2               # Practical reference
    Ejercicio:    .word     3               # Exercise number
    Apartado:     .string   "1,2"             # Exercise selection
    
    Alumno_1:     .string   "Francisco Gonzalez Prieto"       # Name alumn 1
    Alumno_2:     .string   "Juan Manuel Muñoz del Cerro"              # Name alumn 2
     


  cadena:       .string   "holala"  
    num:          .word     0
 
.text

begin:
   
   #Para la realizacion del ejercicio usaremos cuatro instruciones que iremos 
   #repitiendo. 
    
    #Cambio primera posicion
    
    la a0, cadena   #Esta carga el string declarado mas arriba, luego de aquí podemos coger las posiciones que las letras que queramos.
    lb a1, 0(a0)    #Aqui cargamos la posicion 0 del string y lo que hacemos es igualarlo a una variable 
    addi a2, a1, -32  #A esta variable le restaremos 32, de esta forma conseguiremos la misma letra pero en mayuscula, esto es util debido
    #a que no solo podemos conseguir mayusculas restando, dependiendo de el numero que restemos podemos conseguir otros valores o simbolos diferentes.
    sb a2, 0(a0)   #Por ultimo guardamos los cambios hechos en a2, en a0, en la posicion 0, que es la que estamos cambiando a mayuscula.
    
    #Cambio segunda posicion
    
    # Ahora lo que haremos es hacer lo mismo de arriba pero 5 veces mas para cambiar las 5 posiciones que quedan en el string
    #Solo que ahora en vez de la posición 0 pondremos 1, 2, 3 etc. Dependiendo de la posición que queramos cambiar.
    la a0, cadena   
    lb a1, 1(a0)  
    addi a2, a1, -32 
    sb a2, 1(a0)   
    
    #Cambio tercera posicion
    la a0, cadena   
    lb a1, 2(a0)   
    addi a2, a1, -32 
    sb a2, 2(a0)  
    
    #Cambio cuarta posicion
    la a0, cadena    
    lb a1, 3(a0)  
    addi a2, a1, -32 
    sb a2, 3(a0)   
    
    #Cambio quinta posicion
    la a0, cadena 
    lb a1, 4(a0)   
    addi a2, a1, -32 
    sb a2, 4(a0)      
    
    #Cambio sexta posicion
    la a0, cadena 
    lb a1, 5(a0)     
    addi a2, a1, -32 
    sb a2, 5(a0)   
    
     # Assembly code
     
    la a0, cadena    # Cargar en a0 la direccion
    li a7, 4         # Cargamos en a7 el valor 4 (string)
    
     ecall
end:
    li a7, 10
    ecall