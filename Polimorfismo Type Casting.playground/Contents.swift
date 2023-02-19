// Polimorfismo

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emiteSound() {
        print("...")
    }
}

class Dog: Animal {
    
    override func emiteSound() {
        print("Au au au")
    }
    
    func run() {
        print("O cachorro está correndo")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    func fly() {
        if canFly {
            print("O passáro está voando")
        } else {
            print("Esse passáro não voa")
        }
    }
    
    override func emiteSound() {
        print("🎶 🎶 🎶 🎶")
    }
    
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
}

class Duck: Bird {
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
}

let bird = Bird(color: "Vermelho", breed: "Sabiá")
bird.emiteSound()

let dog = Dog(color: "Preto", gender: "M", breed: "Poodle")
dog.emiteSound()

let donald = Duck(color: "Branco", gender: "M", breed: "Disney")
donald.emiteSound()


// Type Casting
let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Duck(color: "Branco", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

print("============================")
for animal in animals {
    animal.emiteSound()
    /*
    if animal is Dog {
        (animal as! Dog).run()
    }
    if animal is Duck {
        (animal as! Duck).fly()
    }
     */
    
    /*
    if let dog = animal as? Dog {
        dog.run()
    }
    
    if let duck = animal as? Duck {
        duck.fly()
    }
     */
    
    switch animal {
        case let dog as Dog:
            dog.run()
        case let bird as Bird:
            bird.fly()
        default:
            break
    }
}
