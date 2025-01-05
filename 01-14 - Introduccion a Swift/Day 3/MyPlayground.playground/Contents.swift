import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numeros = [4, 8, 15, 16, 23, 42]
var temperaturas = [23.4, 28.2, 26.5]

print(beatles[0])
print(numeros[1])
print(temperaturas[2])


//Agregar nuevos elementos

beatles.append("Liverpool")


//Especializar un Array

var puntos = Array<Int>()
puntos.append(100)
puntos.append(200)
puntos.append(300)
print(puntos[1])

var albumes = [String]()
albumes.append("Fallen")
albumes.append("The Open Door")
albumes.append("Evanescence")

//Cuantos elementos hay en una matriz

print(albumes.count)

//Quitar elementos

albumes.remove(at: 2)
print(albumes)

albumes.removeAll()
print(albumes)

//Ver si una matriz tiene un elemento

print(beatles.contains("Liverpool"))

//Ordenar, genera una matriz nueva ordenada

let ciudades = ["Londres", "Tokyo", "Buenos Aires","Sydney"]
print(ciudades.sorted())

//Revertir

print(ciudades.reversed())

//Diccionarios

let empleado = [
    "nombre": "Fulanez",
    "trabajo": "Médico",
    "ciudad": "Sevilla"
]

print(empleado["nombre"])

//Avisa que la clave podría no estar ahí. Se le puede asignar un valor por defecto

print(empleado["nombre",default: "Desconocido"])

let juegosOlimpicos = [
    2012: "Londres",
    2016: "Rio",
    2021: "Tokyo"
]

print(juegosOlimpicos[2012, default: "Desconocido"])

//Crear diccionarios vacios para rellenar despues

var altura = [String: Int]()
altura["Fulanez"] = 180

//Reescribir

var archienemigos = [String: String]()
archienemigos["Batman"] = "Joker"

archienemigos["Batman"] = "Penguin"


