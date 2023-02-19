import UIKit

var greeting = "Hello, playground"

var rg: Int = 12345678900
var driverLicense: Int?

driverLicense = 012345

print("A minha carteira de motorista é:", driverLicense)
// Desembrulhando optional (Unwrap) | Forma perigosa
//print("A minha carteira de motorista é:", driverLicense!)

var driverLicenseEmpty: Int?
// Desembrulhando optional (Unwrap) | Forma perigosa => Erro Fatal
//print("A minha carteira de motorista é:", driverLicenseEmpty!) // Erro Fatal

// Optional Binding | Desembrulhando optional | Forma segura
if let driverL = driverLicense {
    print("A minha carteira de motorista é:", driverL)
} else {
    print("Não possuo carteira de motorista")
}

var addressNumber = Int("100A")
if let addressNumber = addressNumber {
    print(addressNumber)
}

// Nil coalising operator | Operador de coalescência nula
let number: String = "578"
let addressNumber2 = Int(number) ?? 0

// Impliscit Unrapped Optionals | Optional implicitamente desembrulhado
var name: String!
name = "Joãozinho"

if name != nil {
    print(name!)
}

if let name = name {
    print(name)
}
