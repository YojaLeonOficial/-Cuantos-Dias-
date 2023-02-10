import UIKit

var greeting = "Hello, playground"

/*
 * Reto #3
 * ¿ES UN NÚMERO PRIMO?
 * Fecha publicación enunciado: 17/01/22
 * Fecha publicación resolución: 24/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func main () {
    var number = 97
    if isPrime(number: number) {
        print("\(number) is Prime")
    } else {
        print("\(number) is Not Prime")
    }
}
/*
func isPrime(number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number.isMultiple(of: $0) }
}

*/
private func isPrime (number: Int) -> Bool {
    
    if number < 2 {
        return false
    } else {
        for i in 2..<number {
            if number.isMultiple(of: i) {
                return false
            }
        }
    } 
    return true
}
 

for index in 1...100 {
    if isPrime(number: index) {
        print("\(index) is Prime")
    }
}

 for i in 1...10 {
     if i.isMultiple(of: 2){
         print("Es par \(i)")
     } else {
         print("Es impar \(i)")
     }
 }
 
 
main()
