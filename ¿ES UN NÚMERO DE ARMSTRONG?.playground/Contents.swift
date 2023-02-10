import UIKit

var greeting = "Hello, playground"


/*
 * Reto #14
 * ¿ES UN NÚMERO DE ARMSTRONG?
 * Fecha publicación enunciado: 04/04/22
 * Fecha publicación resolución: 11/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule si un número dado es un número de Amstrong (o también llamado narcisista).
 * Si no conoces qué es un número de Armstrong, debes buscar información al respecto.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func main () {
    print(isArmstrong(number: 371))

}


func isArmstrong (number: Int) -> Bool {
    
    var sum: Int = 0
    var tempNum = number
    var reminder = 0
    
    
    while tempNum != 0  {
        
        reminder = tempNum % 10
        print(reminder)
        
        sum +=  reminder * reminder * reminder
        print(sum)
        
        tempNum /= 10
        print(tempNum)
        
        if sum > number {break}
        
    }
    
    return sum == number
}

main()


var a = 3 % 10
print(a)
