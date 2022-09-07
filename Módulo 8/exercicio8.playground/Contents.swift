import UIKit

// 1) - Qual o tipo de x, e o que será printado referente ao valor x?
var language = "Objc"

let code = { [language] in
    print(language)
}

language = "Swift"

let newCode = code
newCode()

import Foundation

let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }

// MARK: - Resposta: x é do tipo [String] e o seu valor será: ["john", "james", "louis", "vincent"]

// 2) - Criar uma Struct que aceite nome e idade, e printar os valores de saída

struct User {
    let nome: String
    let sobrenome: String
    let idade: Int
    var nomeCompleto: String {
        return "\(nome) \(sobrenome)"
    }
    func dadosCompletos() {
        print("O nome do usuário é: \(nomeCompleto), e tem \(user.idade) anos!")
    }
}

var user = User(nome: "Marcelo", sobrenome: "Machado", idade: 24)
user.dadosCompletos()
/*
Essa foi a primeira tentativa de printar, mas achei muito grande e confusa.
 print("O nome do usuário é: \(user.nome) \(user.sobrenome), e tem \(user.idade) anos!")
 Então criei a stored property para armazenar o nome e sobrenome em um só, deixando mais limpo o código. :)
*/

// 3) - Seguindo o exemplo acima, crie uma stored properties e nela calcule o IMC de uma pessoa.
// IMC = peso / (altura x altura)

struct IMC {
    let peso: Double
    let altura: Double
    
    // MARK: - Stored Property
    // Não consegui usar o (format: "%.2f") para o resultado a ser printado ter apenas duas casas decimais. :(
    var calc: Double {
        return imc.peso / (imc.altura * imc.altura)
    }
    // function para printar o resultado bonitinho.
    func resultado() {
        print("O seu IMC é: \(calc)")
    }
    }
var imc = IMC(peso: 71 , altura: 1.71)
imc.resultado()

// Loop para definir qual categoria o usuário se encontra.
if imc.calc > 24.9 {
    print("Você está acima do peso!")
} else if imc.calc >= 18.5 {
    print("Seu peso está normal!")
} else {
    print("Seu peso está muito baixo!")
}

