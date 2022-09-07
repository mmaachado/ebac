import UIKit
import Foundation

 // MARK: - EXERCÍCIO 1
/* Crie uma nova classe Empregado com um init que requer dois argumentos de String: Nome e Sobrenome.
Use os argumentos para inicializar as propriedades com os mesmos nomes dos argumentos.
 Exibe uma mensagem com os valores de nome e sobrenome quando uma instância da classe é criada.
*/


class Empregado {
    var nome: String
    var sobrenome: String
    // Aqui a variável para incluir nome e sobrenome no output.
    var nomeCompleto: String {
        "\(nome) \(sobrenome)"
    }
    // Inicializador da classe
    init(nome: String, sobrenome: String) {
        self.nome = nome
        self.sobrenome = sobrenome
    }
}
// Atribui o resultado que deverá ser printado
var empregado01 = Empregado(nome: "Marcelo",sobrenome: "Machado")
print(empregado01.nomeCompleto)

// MARK: - EXERCÍCIO 2
/* Crie uma instancia da classe Empregado e atribua a uma variável.
 Verifique as mensagens impressas na área Debug do Playground.
 Crie uma nova instância da classe Empregado e atríbua a uma variável definida anteriormente.
 Verifique as mensagens impressas na área  de depuração do Playground.
 */

var empregado02 = Empregado(nome: "João",sobrenome: "Silva") // Essa instancia irá printar o nome e sobrenome atribuído aqui.
var empregado03 = empregado02 // Já essa irá printar o que está atribuído na váriavel empregado02 pois ambas estão apontando para a mesma alocação de memória.
/*
 Uma Class referencia o valor a ela atribuído, mesmo se ele eventualmente for alterado posteriormente no código.
 Já uma Struct o valor da var empregado02 seria copiado, mas se eventualmente alterarmos esse valor, a var empregado03 ainda iria pritar o resultado que ele copiou originalmente.
 */
print(empregado02.nomeCompleto)
print(empregado03.nomeCompleto)
