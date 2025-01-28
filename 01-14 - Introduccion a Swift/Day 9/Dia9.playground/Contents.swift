import Cocoa

//CIERRES

func greetUser() {
    print("Hola!")
}
greetUser()

var greetCopy = greetUser
greetCopy()

//Asignar una funcionalidad a una variable o constante

let decirHola = {
    print("Hola")
}
decirHola()

//Los parámetros van dentro de los corchetes

let decirHolaParametros = { (nombre: String) -> String in
    "Hola \(nombre)"
}
decirHolaParametros("juan")


var greetCopy2: () -> Void = greetUser


//Observamos que la copia de la función no pide los parámetros externos
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonimous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


//Ejemplo ordenar equipo
let equipo = ["Fulanez","Menganez","Citranez"]
let equipoOrdenado = equipo.sorted()
print(equipoOrdenado)


//Podemos pasar una función personalizada para que ponga el
//nombre del capitan primero y el resto los ordene alfabeticamente

func capitanOrdenado(nombre1: String, nombre2: String) -> Bool {
    if nombre1 == "Fulanez" {
        return true
    } else if nombre2 == "Fulanez" {
        return false
    }
    return nombre1 < nombre2
}

let capitanPrimerEquipo = equipo.sorted(by: capitanOrdenado)
print(capitanPrimerEquipo)


var capPrimEqu = equipo.sorted(by: {(nombre1: String, nombre2: String) -> Bool in
    if nombre1 == "Fulanez" {
        return true
    } else if nombre2 == "Fulanez" {
        return false
    }
    return nombre1 < nombre2
})

print(capPrimEqu)


// Se puede hacer sin especificar el tipo de los parámetros y el retorno

capPrimEqu = equipo.sorted { nombre1, nombre2 in
    if nombre1 == "Fulanez" {
        return true
    } else if nombre2 == "Fulanez" {
        return false
    }
    return nombre1 < nombre2
    
}

//Los parámetros incluso se pueden sustituir por nombres especiales

capPrimEqu = equipo.sorted {
    
    if $0 == "Fulanez" {
        return true
    } else if $1 == "Fulanez" {
        return false
    }
    return $0 < $1
    
}

//Hacer una ordenación inversa
var reverseEquipo = equipo.sorted{
    return $0 > $1
}

//O también

reverseEquipo = equipo.sorted{ $0 < $1 }

//Filtrar por letra

var soloT = equipo.filter { $0.hasPrefix("C") }
print(soloT)

//transformar todos los elementos de la matrix con map()

let uppercaseEquip = equipo.map { $0.uppercased() }
print(uppercaseEquip)


//Aquí uno de los parámetros es una funcion que devuelve un valor que es cogido dentro de la función
func hacerArray(size: Int, using generator: () -> Int) -> [Int] {
    var numeros = [Int]()
    for _ in 0..<size {
        let nuevoNumero = generator()
        numeros.append(nuevoNumero)
    }
    return numeros
    
}
// s
