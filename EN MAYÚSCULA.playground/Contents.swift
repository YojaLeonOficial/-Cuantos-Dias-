import UIKit

var greeting = "Hello, playground"
/*
 * Reto #16
 * EN MAYÚSCULA
 * Fecha publicación enunciado: 18/04/22
 * Fecha publicación resolución: 25/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba un String de cualquier tipo y se encargue de
 * poner en mayúscula la primera letra de cada palabra.
 * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */
func main() {
    
    print(capitalize(str: "¿hola qué tal estás?"))
    print(capitalize(str: "¿hola      qué tal estás?"))
    print(capitalize(str: "El niño ñoño"))
   
}

func capitalize (str: String) -> String {
    
    var capitalizedText = ""
    print(capitalizedText)
    
    
    let pattern = "[^A-zÀ-ú]"
    let regex = try! Regex(pattern)

    str.lowercased().replacing(regex, with: " ").split(separator: " ").forEach { word in
        let firstLetter = word.prefix(1).capitalized
        let remainingLetters = word.dropFirst().lowercased()
        capitalizedText += firstLetter + remainingLetters
        capitalizedText += " "
    }
    
    return capitalizedText

}

main()
