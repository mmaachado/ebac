import UIKit
import Foundation

//MARK: Exercício Módulo 5

// 1) Qual das seguintes atribuição são válidas?

/*

var name: String? = "Carlos" // É uma atribuição válida se quisermos declarar a variável como optional.
var age: Int = nil // Não é válida pois não podemos atribuir valor nil em valores primitivos.
let kilometer: Float = 26.7 // É uma atribuição válida, porem é preferível utilizar o Double.
var lastName: String? = nil // Válida, uma vez que a String está declarada com o optional (?) o valor atribuído pode ser nil.

 */

// 2) - Faça o unwrap com segurança com a constante, `number` e print com a condição mais legível.

/*

 var numericalString: String? = "3"
 var number = numericalString ?? "Sem valor"

 if let unwrap = numericalString {
     number = unwrap
 } else {
     number = ""
 }

 print("\(number) is the magic number.")

*/
 
// 3) - Se alteramos o valor da variavel numericalString para "cinco" e executar o playground, o que acontecerá?
// a - Vai funcionar sem problemas
// b - Não vai funcionar
// c - acredito que não funcione.

// Resposta:
// Vai funcionar sem problemas: Pois está recebendo o nil (devido ao optional), porém não realizará a conversão, assim será retornado no valor como nil.

/*
 
var numericalString: String? = "cinco"
var number = numericalString ?? "Sem valor"

if let unwrap = numericalString {
    number = unwrap
} else {
    number = ""
}

print("\(number) is the magic number.")
 
*/


// 4) - A classe UIViewController possui uma propriedade chamada tabBarController. A propriedade tabBarController é optinal do tipo `UITabBarController?`.
// O próprio tabBarController contém um tabBar como propriedade.
// Complete o código abaixo preenchendo com o uso apropriado do optional chaining para acessar a propriedade `tabBar`.

/*

var viewController = UIViewController()

if let tabBar = viewController.tabBarController?.tabBar {
    print("Aqui tem uma tabBar controller.")
} else {
    print("Aqui não tem uma tabBar controller.")
}

 */
