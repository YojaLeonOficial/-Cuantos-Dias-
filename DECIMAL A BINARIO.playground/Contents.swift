import UIKit

var greeting = "Hello, playground"
/*
 * Reto #8
 * DECIMAL A BINARIO
 * Fecha publicación enunciado: 18/02/22
 * Fecha publicación resolución: 02/03/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */


func main () {
    print("\(decimalToBinary(decimal: 387))")
    
}

func decimalToBinary (decimal: Int) -> String {
    
    var number = decimal
    var binary = ""

   while number != 0 {
        
       var remider = number.isMultiple(of: 2).description
        number /= 2
       
       binary = "\(remider)\(binary)"
       binary.replace("false", with: "1")
       binary.replace("true", with: "0")
       
       
    }
    return binary
}

main()


let d1 = 387
let b1 = String(d1, radix: 2)
print(b1) // ej 21 = "10101"
