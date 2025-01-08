import Cocoa

//TIPO DE DATOS COMPLEJOS PARTE 2

//Anotaciones

//En lugar de
var nombre = "Juan"
//Se indica el tipo de forma explícita
var nombre2: String = "Juan"

var nota: Double = 0

// Tipos de datos:
// String, Int, Double, Bool, Array
// Dictionary, Set,

var lugar: String = "Galicia"
var edad: Int = 25
var temperatura: Double = 25.7
var activado: Bool = true
var colores: [String] = ["rojo","azul","verde","amarillo"]
var telefono: [String:Int] = ["Fulanez":34985774853]
var libros: Set<String> = Set(["El Quijote","La gitanilla"])

//Util para asignar por ejemplo matrices vacías, indicando el tipo

var equipos: [String] = [String]()

//Ennumeraciones

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//Ejercicio
//Crear matriz de cadenas, luego imprimir el número de elementos y el número
//De elementos únicos en la matriz

let matriz: [[String]] = [["Fulanez", "Menganez", "Citranez"],["Uno","Dos","Tres"]]

var conteo = matriz.count

print(conteo)

