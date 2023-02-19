// Estruturas (Structs)

let age: Int = 20
let name: String = "Vinícius"

struct Person {
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Olá")
    }
    
    mutating func incrementAge() {
        age += 1
    }
}

//var person = Person(name: "Vinícius", age: 24)
//person.sayHello() // Dot Syntax
//person.name = "João"
//print(person.name)

//var newPerson = Person(age: 25)
var newPerson2 = Person(name: "Vinícius")
newPerson2.age = 25
newPerson2.incrementAge()

// Computed Properties (Propriedade computadas)

struct Temperature {
    var celsius: Double
    var farenheint: Double {
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.farenheint)


