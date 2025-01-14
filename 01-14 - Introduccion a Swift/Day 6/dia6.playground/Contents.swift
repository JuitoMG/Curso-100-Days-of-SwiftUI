import Cocoa

//bucles

let plataformas = ["iOS", "MacOS", "tvOS", "watchOS"]

for i in plataformas {
    print("Swift trabaja en \(i)")
}


print("Tabla de multiplicar")
for j in 1...10 {
    print("Tabla del \(j):")
    for i in 1...10 {
        print("\(j)x\(i)=\(j*i)")
    }
    print()
}

//Si no se usa la variable, se puede poner un guión bajo

var letra = "Te voy a comer"
for _ in 1...5 {
    letra += "mer"
}
print(letra)

//Recorrer una matriz

let nombres = ["Fulanez", "Menganez", "Citranez"]

for i in nombres {
    print("\(i)")
}

//Rangos

print(nombres[0...2])

//While

var cuentaAtras = 10

while cuentaAtras > 0 {
    print("\(cuentaAtras)")
    cuentaAtras -= 1
}
print("Fin")

//Hacer un número aleatorio

let id = Int.random(in: 1...100)
print(id)

//Crear decimal aleatorio

let amount = Double.random(in: 0...1)
print(amount)

//Tirar un dado hasta que salga 6

var tirada = 1

while tirada != 6 {
    tirada = Int.random(in: 1...6)
    print("Saqué un \(tirada)")
}
print("Un seis!")

//Continue o Break

let archivos = ["yo.jpg", "trabajo.txt","loquesea.jpg","logo.png"]

for i in archivos {
    if i.hasSuffix(".jpg") == false {
        continue
    }
    print("Encotrado: \(i)")
}

let numero1 = 4
let numero2 = 14
var multiplos = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: numero1) && i.isMultiple(of: numero2) {
        multiplos.append(i)
        
        if multiplos.count == 10 {
            break
        }
    }
}
print(multiplos)

//Prueba Fizz-Fuzz

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    }
    else{
        if i.isMultiple(of: 3){
            print("Fizz")
        }
        else{
            if i.isMultiple(of: 5){
                print("Buzz")
            }
            else{
                print(i)
            }
        }
    }
}
