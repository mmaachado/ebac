import UIKit
import Foundation

// 1) - Seguindo este array abaixo, qual valor é o output dessa função?

var frutas = ["Maçã","Banana","Melão","Pêra"]
var comida = frutas[3]

// Resposta: Como a contagem começa no 0 o valor de output será Pêra.


// 2) - Seguindo o mesmo exercício acima, agora inclua a fruta Pera, troque de posição Banana e Melão.
// No final conte quantas frutas tem no novo Array.

frutas.append("Pera") // Adiciona a nova fruta

let frutasMudar = frutas.remove(at: 1) // Remove Banana
frutas.insert(frutasMudar, at: 2) // E insere no lugar do Melão

print("Resultado do novo Array: \(frutas)")
print("Total de frutas: \(frutas.count)") // Conta quantas frutas há na Array (5)


// 3) - Pensando nesse codigo abaixo, qual é o tipo de x ? E qual é o seu valor?

let d = ["john": 23, "james": 24, "vincent": 34, "louis": 29]
let x = d.sorted{ $0.1 < $1.1 }.map{ $0.0 }

/* Resposta: O x irá resultar em uma sString, sendo ordenado pelos números atribuidos do menor para o maior.
Sendo: john, james, louis e vincent. */
print("Resultado de x:  \(x)")


