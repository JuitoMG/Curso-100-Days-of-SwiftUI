

import Cocoa


//Añadir parámetros a las funciones

func tablasMultiplicar (for numero: Int, end: Int = 10){
    for i in 1...end{
        print("\(i)x\(numero)=\(i*numero)")
    }
}
tablasMultiplicar(for: 5)

//Eliminar elementos manteniendo la capacidad del Array

var personajes = ["Pele","Pala","Pili","Polo"]
print(personajes)
personajes.removeAll(keepingCapacity: true)
print(personajes)


//Gestion Errores
//
//1. Informar a Swift sobre los posibles errores que pueden ocurrir
//2. Escribir una funcion que pueda señalar errores si ocurren
//3. Llamar a esa funcion y controlar los errores que se puedan producir

// 1
enum PasswordError: Error {
    case short, obvious
}

// 2
func validarPassword(_ password: String) throws -> String {
    if password.count < 8 {
        throw PasswordError.short
    }
    
    if password == "12345678" {
        throw PasswordError.obvious
    }
    if password.count < 10 {
        return "Ok"
    } else if password.count < 15 {
        return "Bueno"
    } else {
        return "Excelente"
    }
    
}

// 3

let string = "12345678"
do {
    let result = try validarPassword(string)
    print("Calidad de la contraseña: \(result)")
} catch PasswordError.short {
    print("Ponga una contraseña más larga")
} catch PasswordError.obvious {
    print("No utilice una contraseña tan obvia")
} catch {
    print("Hubo un error")
}


