var states = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo"
]

var studentGrade: [String: Double] = [:]

states["GO"] = "Goíaz"
//states["GO"] = "Goías"
let oldGO = states.updateValue("Goías", forKey: "GO")
print(oldGO)

let myState = states["BA"]
if let state = myState {
    print(state)
}

states["GO"] = nil
print(states)

let oldDF = states.removeValue(forKey: "DF")
print(oldDF)

print(states.count)

let keys = Array(states.keys)
print(keys)

let values = Array(states.values)
print(values)
