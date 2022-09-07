import UIKit

// MARK: - Exercício 4
// Criar uma função que receba parâmetros e retorne o IMC de uma pessoa.

// IMC = kg / m2
func calcIMC (peso: Double, altura: Double) -> String {
    
    let imc = peso / (altura * altura)
    let calc = String(format: "%.2f", imc)
    
var resultado = ""
    
    if imc > 24.9 {
        resultado = "Você está acima do peso"
    } else if imc >= 18.5 {
        resultado = "Seu peso está normal"
    } else {
        resultado = "Seu peso está muito baixo"
    }
    
// MARK: - Retorno da função
    
    return "Seu IMC é \(calc)! \(resultado), o IMC ideal está entre 18.5 e 24.9!"
    
}

print(calcIMC(peso: 70, altura: 1.71))
