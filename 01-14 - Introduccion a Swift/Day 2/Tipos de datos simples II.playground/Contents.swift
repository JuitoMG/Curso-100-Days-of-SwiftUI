import Cocoa

//Booleanos

let verdadero = true
let falso = false

let isMultiplo = 120.isMultiple(of: 3)
print(isMultiplo)

//Invertir valor de un booleano

var estaRegistrado = true
estaRegistrado = !estaRegistrado
print(estaRegistrado)

// O también con toggle()

estaRegistrado.toggle()
print(estaRegistrado)

//Unir cadenas

let cadena1 = "El día menos pensado "
let cadena2 = "será el más increíble"
let cadenaTotal = "Cita: "+cadena1+cadena2
print(cadenaTotal)


//Para que no se creen varias cadenas para crear la suma de todas

let nombre = "Juan"
let edad = 25
let mensaje = "Hola, mi nombre es \(nombre) y tengo \(edad) años"
print(mensaje)

//Se pueden realizar operaciones dentro de la cadena

print("5*4=\(5*4)")

//EJERCICIO

// CONVERSOR DE TEMPERATURA DE CELSIUS A FAHRENHEIT
//Crea una constante que mantenga la temperatura en grados Celsius
//Para convertir a Fahrenheit se multiplica por 9, se divide entre 5 y se suma 32
//Imprime los resultados en Celsius y Fahrenheit

let temperaturaCelsius = 25
let temperaturaFahrenheit = (((temperaturaCelsius * 9)/5)+32 )
print("Temperatura en Celsius: \(temperaturaCelsius)ºC")
print("Temperatura en Fahrenheit: \(temperaturaFahrenheit)ºF)")
