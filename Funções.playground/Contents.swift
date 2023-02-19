// Funções
/*
func nome(parametro: Tipo) -> TipoDeRetorno {
    Códigos e comandos
    
    return TipoDeRetorno
}
*/

func sayHello() {
    print("Hello")
}
sayHello()

func say(message: String) {
    print(message)
}
say(message: "Bom dia!!")

func say(message: String, to: String) /* Parâmetro */ -> String {
    return message + " " + to
}
let sentence = say(message: "Boa noite", to: "Caroline") // Argumento
print(sentence)

//func sum(_ a: Int, b: Int) -> Int {
//    return a + b
//}
//print(sum(10, b: 20))

//func multiply(_ number1: Int, by number2: Int) -> Int {
//    return number1 * number2
//}
//multiply(20, by: 10)

//func sum(_ initialValue: Int, withValues values: Int...) -> Int {
//    var result = initialValue
//    for value in values {
//        result += value
//    }
//    return result
//}
//sum(2, withValues: 7, 9, 9, 10, 23)

import Foundation

let studentData = "Vinícius da Silva Meira:24"

func getStudentinfo(_ data: String) -> (name: String, age: Int) {
    let info = data.components(separatedBy: ":")
    let studentName = info[0]
    let studentAge = Int(info[1])
    return (studentName, studentAge!)
}

let student = getStudentinfo(studentData)
print(student.name)
print(student.age)


// First Class Citizen (Cidadão de Primeira Classe)
func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

typealias Op = (Int, Int) -> Int

func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int {
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: multiply)

func getOperation(_ operation: String) -> Op {
    switch operation {
        case "soma":
            return sum
        case "subtração":
            return subtract
        case "multiplicação":
            return multiply
        default:
            return divide
    }
}

var operation = getOperation("subtração")
operation(30, 15)
