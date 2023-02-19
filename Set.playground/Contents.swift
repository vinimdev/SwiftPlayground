var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De Volta para o Futuro"
]

var movies2 = Set<String>()

movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count)

movies.insert("Homem-Aranha: De Volta para o Lar")
print(movies.count)

let result = movies.insert("Homem-Aranha: De Volta para o Lar")
print(result.inserted, result.memberAfterInsert)

movies.remove("Homem-Aranha: De Volta para o Lar")
print(movies)

for movie in movies {
    print(movie)
}

if movies.contains("Matrix") {
    print("Matrix está na minha lista de filmes favoritos!!")
}

var myWifeMovies: Set<String> = [
    "De repente 30",
    "Mensagem para você",
    "Sintonia de Amor",
    "De Volta para o Futuro",
    "Jurassic Park"
]

let favoriteMovies = movies.intersection(myWifeMovies)
print(favoriteMovies)

let allMovies = movies.union(myWifeMovies)
print(allMovies)

movies = movies.subtracting(myWifeMovies)
print(movies)

//let address = "Av. Paulista, 1578, São Paulo - SP, 01310-200"
let address: (type: String, name: String, number: Int, city: String, state: String, zipCode: String) = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200")
print(address.name)

let (type, name, _, _, state, cep) = address
print(cep)
