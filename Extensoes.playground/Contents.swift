// Extensões
import Foundation

let name = "Vinícius da Silva Meira"

extension String {
    var vowels: [Character] {
        var list: [Character] = []
        for character in self {
            switch String(character).lowercased() {
                case "a", "e", "i", "o", "u":
                    list.append(character)
                default:
                    break
            }
        }

        return list
    }
    
    func initials() -> String {
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
}

print(name.vowels)
print(name.initials())

class Account {
    let number: String
    var balance: Double = 0
    
    init(number: String) {
        self.number = number
    }
}

extension Account {
    convenience init(number: String, balance: Double) {
        self.init(number: number)
        self.balance = balance
    }
}

let account = Account(number: "323232744")
