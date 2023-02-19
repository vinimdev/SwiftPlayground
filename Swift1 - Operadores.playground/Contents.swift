import UIKit

var greeting = "Hello, playground"

// Operadores Binários

// Operador de Atribuição: =
let gravity = 9.81
var (name, age) = ("Vinícius", 24) // Tupla

// Operadores Aritméticos: Soma (+), Subtração (-), Multiplicação (*), Divisão (/), Módulo (%)
// Soma: +
var age1 = 24
var age2 = 25
let sum = age1 + age2

// Subtração: (-)
let minus = age1 - age2

// Multiplicação: (*)
let multiply = age1 * age2

//let time1 = 12
//let time2 = 14.75

// let resultTimes = time1 + time2 // Não pode operar com tipos diferentes

// Divisão: (/)
let division = age1 / age2

// Módulo: (%)
let toys = 35
let kids = 6
let modulus = toys % kids

// Operadores compostos: Atribui e opera ao mesmo tempo
age1 = age1 + age2
age1 += age2

// -=, *=, /=, %=
var products = 125
var lastBuy = 22
products -= lastBuy

// Operadores de comparação | Sempre retornam um Bool
// Maior que: >
let grade1 = 7.5
let grade2 = 9.8
let betterThanFriend = grade1 > grade2

// Menor que: <
let grade = 8.9
let minimumGrade = 7.0
let reproved = grade < minimumGrade

// Maior ou igual a: >=
// Menor ou igual a: <=
let approved = grade >= minimumGrade

// Igualdade: ==
let teacherName = "Eric"
let studentName = "eric"
let sameName = teacherName.lowercased() == studentName.lowercased()

// Desigualdade: !=
let differentName = teacherName != studentName

// Operadores Lógicos
// AND: &&
var boughtBanana: Bool = true
var boughtTomato: Bool = true
var boughtApple = false

var isHappy = boughtBanana && boughtTomato && boughtApple

// OR: ||
var likesMeat = false
var likesBeer = true
var canInviteBarbecue = likesBeer || likesMeat

var grade3 = 8.5
var grade4 = 7.0
let result = (grade3 + grade4) / 2

// Operador Unário:
// NOT: !
var knowSwift = false
var enrolSwiftCourse = !knowSwift

// Operador Ternário:
var grade5 = 7.95
var grade5Result = grade5 >= 7.0 ?  "Aprovado" : "Reprovado"

let number = 11
let type = number % 2 == 0 ? "Par" : "Ímpar"
