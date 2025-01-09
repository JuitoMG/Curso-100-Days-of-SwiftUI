import Cocoa

//Condiciones
"""
if condicion {
    print("Haz algo")
}
"""

let puntos = 100

if puntos == 100 {
    print("Enhorabuena!")
}

//Si hay más de 3 elementos, eliminar el más antiguo

//Creamos Array con números
var numeros = [1,2,3]
//Agregamos un cuarto número
numeros.append(4)
if numeros.count > 3 {
    numeros.remove(at:0)
}
print(numeros)


//Si está vacío el campo
var username = ""

if username.isEmpty == true {
    username = "Anonimo"
}

//Comparar enumeraciones

enum Tallas: Comparable {
    case peq
    case med
    case gra
}
let primero = Tallas.peq
let segundo = Tallas.med
print(primero < segundo)


