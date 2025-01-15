import Cocoa

//Funciones

func mostrarBienvenida() {
    print("Hola!")
}
mostrarBienvenida()

func tablaMultiplicar (numero: Int) {
    print("Tabla del \(numero)")
    for i in 1...10 {
        print("\(numero)x\(i)= \(i*numero)")
    }
}
tablaMultiplicar(numero: 5)

//Con dos parametros

func tablaMultiplicarParam (numero: Int, end: Int) {
    print("Tabla del \(numero)")
    for i in 1...end {
        print("\(numero)x\(i)= \(i*numero)")
    }
}
tablaMultiplicarParam(numero: 5, end: 12)

let raiz = sqrt(169)
print(raiz)

//Devolver resultado

func dado() -> Int {
    return Int.random(in: 1...6)
}
var resultado = dado()
print(resultado)


func tieneLasMismasLetras (string1: String, string2: String) -> Bool {
    var prim = string1.sorted()
    var sec = string2.sorted()
    return prim == sec
}
print(tieneLasMismasLetras(string1: "abc", string2: "cba"))

//Si la función tiene solo una línea de código no es necesario el return

func tieneLasMismasLetras2 (string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

//Teorema Pitagoras
func pitagoras (a: Double, b: Double, c: Double) -> Double {
    sqrt(a*a+b*b)
}

//Devolver dos o mas valores

func obtenerUsuario() -> [String] {
    ["Fulanez","Menganez","Citranez"]
}
var usuario = obtenerUsuario()
print("Nombre: \(usuario[0]), \(usuario[1]), \(usuario[2])")

//Tuplas

func obtenerUsuarioTupla() -> (nombre: String, apel: String) {
    (nombre: "Fulanez", apel: "Citranez")
}
var usuarioTupla = obtenerUsuarioTupla()
print("Nombre: \(usuarioTupla.nombre) \(usuarioTupla.apel)")

//Abreviado

var (nombre, apel) = obtenerUsuarioTupla()
print("Nombre: \(nombre) \(apel)")
