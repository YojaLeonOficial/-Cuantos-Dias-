import UIKit


/*
 * Reto #12
 * ¿ES UN PALÍNDROMO?
 * Fecha publicación enunciado: 21/03/22
 * Fecha publicación resolución: 28/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.
 * Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.
 * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
 * Ejemplo: Ana lleva al oso la avellana.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */
func main () {
    
    //print(isPalindrome(str: "Ana lleva al oso la avellana."))
    
    print(isPalindrome(str: """
    Adivina ya te opina,
    ya ni miles origina,
    ya ni cetro me domina,
    ya ni monarcas,
    a repaso ni mulato carreta,
    acaso nicotina,
    ya ni cita vecino,
    anima cocina,
    pedazo gallina,
    cedazo terso nos retoza de canilla goza,
    de panico camina, onice vaticina,
    ya ni tocino saca,
    a terracota luminosa pera,
    sacra nomina y animo de mortecina,
    ya ni giros elimina,
    ya ni poeta,
    ya ni vida
    """))
    
    //print(isPalindrome(str: "¿Qué os ha parecido el reto?"))
     
}

private func isPalindrome (str: String) -> Bool{
    
    
    let pattern = "[^a-z0-9]"
    let regex = try! Regex(pattern)
    
    var text = str.lowercased().replacing(regex, with: "")
    
    var b = String(text.reversed())

    return String(text.reversed()) == text
}

main()


let word = "Backwards"
for char in word.reversed() {
    print(char, terminator: "")
}
