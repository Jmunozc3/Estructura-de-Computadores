.data
#Exercise Header
    Practica:     .word     2              # Practical reference
    Ejercicio:    .word     1              # Exercise number
    Apartado:     .string   "b"             # Exercise selection
    
    Alumno_1:     .string   "Juan Manuel Muñoz del Cerro"       # Name alumn 1
    Alumno_2:     .string   "Francisco Gozalez Prieto"          # Name alumn 2

    cadena:       .string   "hola ."  
    num:          .word     0
    p:           .string "."
    e:           .string " "
    
.text

begin:
   
   #Aqui definimos los puntos y los espacios con los
   #numeros 32 y 46
    li t1,32
    li t2,46
    la a0, cadena  
    li t0,0 #aqui definimos un contador
   
  
loop:
 
 #Ahora introducimos el contador en la cadena
   add t3,t0,a0
   lb a1, 0(t3)
    
 #ahora con los saltos condicioneles para ir al end que mostrara por pantalla el resultado
 #en la segunda linea beq encontraremos un condicional que nos llevara a space que este sera cuando encuentre un espacio
   beq  a1, t1, End
   beq  a1, t2, Space
   
#ahora como en el apartado anterior pasaremos las letras a mayuscula restandole 32, de esta forma
#se pueden conseguir otros datos a partir de restar un numero.
    addi a3, a1, -32 
    sb a3, 0(t3)
    
Space:
  # ahora en space como es un espacio en blanco solo sumamos uno a t0 que es nuestro contador
   addi t0,t0,1 
 

#aqui tenemos la salida del bucle donde tenemos dentro de este ultimo toda la implementacion para la transformacion de las letras a mayusculas y el espacio
j loop
 
End:
    
#mostramos el resultado por pantalla
   la a0, cadena
   li a7, 4
   ecall
   li a7, 10
   ecall