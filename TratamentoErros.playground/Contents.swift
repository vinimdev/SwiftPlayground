// Tratamento de Erros

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName != "vinícius"  {
            throw LoginError.wrongLogin
        }
        
        if password != "123456" {
            throw LoginError.wrongPassword
        }
        
        return true
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return true
}

do {
    let loginResult = try login(userName: "vinícius", password: "123456")
} catch LoginError.wrongLogin {
    print("Nome do usuário inválido!")
} catch LoginError.wrongPassword {
    print("Senha inválida!")
} catch LoginError.noInternetConnection {
    print("Sem conexão!")
}

let loginResult = try! login(userName: "vinícius", password: "123456")
