import UIKit

var greeting = "Hello, playground"


/*
* Reto #0
 * EL FAMOSO "FIZZ BUZZ"
 * Fecha publicación enunciado: 27/12/21
 * Fecha publicación resolución: 03/01/22
 * Dificultad: FÁCIL
 * Enunciado: Escribe un programa que muestre por consola (con un print) los números de 1 a 100 (ambos incluidos y con un salto de línea entre cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
*/

// Antigua forma

func oldfizzbuzz () {
    
    for index in 1...100 {
        
        let divisibleByThree = index % 3 == 0
        let divisibleByFive = index % 5 == 0
        if divisibleByThree && divisibleByFive {
            print("fizzbuzz")
        } else if divisibleByThree {
            print("fizz")
        } else if divisibleByFive {
            print("buzz")
        } else {
            print(index)
        }
    }
}


func newfizzbuzz () {
    
    for index in 1...100 {
        
        let divisibleByThree = index.isMultiple(of: 3)
        let divisibleByFive = index.isMultiple(of: 5)
        if divisibleByThree && divisibleByFive {
            print("fizzbuzz")
        } else if divisibleByThree {
            print("fizz")
        } else if divisibleByFive {
            print("buzz")
        } else {
            print(index)
        }
    }
}


oldfizzbuzz()
