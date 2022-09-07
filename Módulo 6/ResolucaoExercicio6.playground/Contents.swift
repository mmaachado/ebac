import UIKit
import Foundation

// 1) Se a seguinte declaração fosse chamada, qual seria o resultado?

// Resposta: Por ter o valor true na variável, o resultado será "Allow access".

var state = true

if state == true {
    print("Allow access")
} else {
    print("Deny access")
}

// 2) Crie uma loop e use de condições para saber se o numero é par ou ímpar, dado a essa varialvel:

var arrayNumber: Array = [1,2,3,4,5,6,7,8,9,10]
// dica
// for i in arrayNumber { seu codigo }

for i in arrayNumber where i % 2 == 1 {
    print("Números ímpares: \(i)")
}

for i in arrayNumber where i % 2 == 0 {
    print("Números pares: \(i)")
}


// 3) Tente fazer o mesmo exercicio 2, porém com while

/*
 
var arrayNumber = 0

// MARK: - Loop Pares:
while true {
    arrayNumber += 2
    print("Pares: \(arrayNumber)")
    
    if arrayNumber > 8 { // Tive de limitar o loop para 8 para ele não printar o 12 também.
        break
    }
}
 
 
 // MARK: - Loop Ímpares:
while true {
    arrayNumber += 3
    print("Ímpares: \(arrayNumber)")
    
    if arrayNumber > 6 {
        break
    }
}
 
 // MARK: - Outra forma (07/09/22)
 var number:Int = 0
 
 repeat {
 number += 1
 if number % 2 == 0 {
	print("\(number) é par")
	}else{
		print("\(number) é impar")
	}
 } while (number < 10)
 
 */
