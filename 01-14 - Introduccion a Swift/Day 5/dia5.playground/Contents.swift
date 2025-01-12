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


let edad = 18

if edad >= 18 {
    print("mayor")
} else {
    print("menor")
}

//elseif

let a = false
let b = true

if a {
    print("Si a es verdadero")
} else if b {
    print("Si a es falso pero b es verdadero")
} else {
    print("Si ambos son falsos")
    
var temperatura = 25

    if temperatura > 20 && temperatura < 30 {
        print("Temperatura adecuada")
    }
}


//Combinación de todo

enum OpionTransporte {
    case avion, helicoptero, biicleta, coche, moto
}

let transporte = OpionTransporte.avion

if transporte == .avion || transporte == .helicoptero {
    print("A volar")
} else if transporte == .biicleta {
    print("A pedalear")
} else if transporte == .coche {
    print("Hora de conducir")
} else {
    print("A pilotar por la carretera")
}


//Switch

enum tiempo {
    case sol, lluvia, viento, desconocido
}

let prevision = tiempo.sol

switch prevision {
case .sol:
    print("Hace sol")
case .viento:
    print("Hace viento")
case .lluvia:
    print("Llueve")
case .desconocido:
    print("Máquina averiada")
default:
    print("Error")
}

//Operador condicional ternario

let edadPersona = 18
let puedeVotar = edadPersona >= 18 ? "Sí" : "No"

let hora = 23

print(hora < 12 ? "Muy temprano":"Muy tarde")

let nombres = ["Fulanez", "Menganez","Citranez"]
let multitud = nombres.isEmpty ? "Nadie":"\(nombres.count) personas"

