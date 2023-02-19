
// Classes vs Structs

struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    weak var friend: Person?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("\(name) foi desalocado da memória")
    }
}

var student1 = Student(name: "Zeca", age: 22)
var student2 = student1

student1.name = "Alisson"
student1.age = 33

print(student2.name, student2.age)
// ================================

var person1: Person? = Person(name: "Felipe", age: 27)
var person2: Person? = Person(name: "Henrique", age: 44)

person1!.name = "Alisson"
person1!.age = 33

print(person2!.name, person2!.age)

person1?.friend = person2
person2?.friend = person1

person2 = nil
person1 = nil // Quando se esgota o número de referências, este é desalocado da memória, porém tem-se um problema
              // Se possuir dois objetos com referências entre sí, estes ficarão preso na memória, não sendo desalocados (Memory Leak)
              // Para resolver isso, deve-se dizer que a referência da propriedade, será uma referência fraca, através da palavra reservada weak. Setando como uma referência fraca, este não aumenta o reference count do objeto.

// Value Type => Struct
// Reference Type => Classe

let array: [Int] = [3, 6, 7, 3, 2, 7, 8, 2, 2, 7, 7, 23, 7, 32, 3]

// Copy On Write - Só copia quando for alterado
var array2 = array
array2[0] = 45
