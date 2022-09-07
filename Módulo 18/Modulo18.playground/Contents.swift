import Foundation

// Exercício Módulo 18:
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 1. O que são Generics e quais problemas eles resolvem?
// R: Generic é uma funcionalidade que permite criar functions, types, protocols, enums. Nos permitem criar uma única função onde trocamos valores das váriaveis sendo elas de qualquer tipo. Também nos ajudam a não duplicar código.
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 2. Dê um exemplo de uso de generics.
// R:

// usando o <T> dizemos para o Swift que é um tipo genérico...

//func trocarDoisValores<T>(_ a:inout T, _ b:inout T) {
//    let tempA = a
//    a = b
//    b = tempA
//}
//
//var primeiroValor = 5
//var outroValor = 10
//
//trocarDoisValores(&primeiroValor, &outroValor)
//
//print(primeiroValor, outroValor)

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 3. Quais os cuidados que se deve tomar, ao usar políticas para caches?
// R: Devemos ter cuidados para não guardar objetos grandes em apenas um item de cache, armazenar o mesmo item utilizando diversas chaves, permitir o device do usuário a realizar várias requisições na API (elevando o custo de consumo de serviços da máquina),

//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 4. Dê um exemplo de uso de Closure com escaping e sem escaping, observando o uso do weak self.
// R:
// Closure sem escaping:
//
//var multiplicarAnonimo = { (a, b) in a * b }
//
//let result = multiplicarAnonimo(2, 5)
//
//Deve retornar 10

//---------------------------------------------------\\
// Closure com escaping usando weak self:

//class Closure {
//    func recebeClosure(minhaClosure: @escaping () -> Void) {
//        DispatchQueue.global().asyncAfter(wallDeadline: .now() +2) {
//            [weak self] in
//            self?.retornaClosure(minhaClosure: minhaClosure)
//    }
//}

//func retornaClosure(minhaClosure: () -> Void) {
//    minhaClosure()
//    }
//}


//---------------------------------------------------\\
