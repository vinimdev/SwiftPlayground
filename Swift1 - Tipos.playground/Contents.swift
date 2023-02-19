import UIKit

var greeting = "Hello, playground"

// Int, Float, Double, Character, String, Bool

// Booleanos (Bool)
var isFirstTime: Bool = true
var likesFruits = true

// Inteiros (Int) | Signed
var age: Int = 24
var newAge = 25

// UInt | Unsigned Int (Inteiros não assinado - Só aceita valores positivos)
var ageUint: UInt = 24

// Float | Ponto Flutuante (32Bit)
var dolar: Float = 3.5

// Double | Ponto Flutuante (64Bit)
let crazyNumber = 1000000.87635256
var dolarDefaultSwift = 3.5 // Swift infere por padrão sempre como Double

// Character: 1 Caractere
var gender: Character = "M"
var enter: Character = "\n"
var aspas: Character = "\""

// String | Conjunto de Caracteres
var newGender = "M" // Swift infere por padrão sempre como String
let studentName = "\"Dr.\" Paulo Henrique Bastos"
print(studentName)
let firstName = "Vinícius"
let lastName = "Meira"
let fullName = firstName + " " + lastName
print(fullName)

// Interpolação de String | String interpolation
let fullNameInterpolation = "\(firstName) \(lastName) - Idade: \(age)"
print("A variável fullNameInterpolation tem \(fullNameInterpolation.count) caracteres")
print(fullNameInterpolation)

let text = "Olá, espero que esteja gostando do curso.\nAinda tem muito mais pela frente."
print(text)

let textNew = """
Olá, espero que esteja gostando do curso.
Ainda tem muito mais pela frente.
"""
print(textNew)
