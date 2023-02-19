var names = ["Fulano", "Ciclano", "Beltrano"]
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var lotteryNumbers: [Int] = []
var phoneNumbers: [String]?

var ages: [UInt8] = [9, 7, 12, 15, 22] // UInt8 (Não negativo e de 8 bits - vai no máximo até 255)

var guests = ["João", "Paula", "Alexandre", "Patrícia", "Sandra"]
print(guests.count)
print(guests.isEmpty)

let secondGuest = guests[1] // Syntax Subscript
guests[0] = "Henrique"

print(guests)
guests[0...1] = ["Eric", "Roberto", "Joana", "Bia"]
print(guests)

if let first = guests.first {
    print(first)
}

if let last = guests.last {
    print(last)
}
guests += ["Sandro", "Helena", "Elen"]
guests.append("Edina")

guests.insert("Romildo", at: 2)
print(guests)

//guests.removeFirst()
//guests.removeLast()
//guests.remove(at: 2)
//guests.removeAll()

if guests.contains("Helena") {
    print("A Helena foi convidada!!")
}
