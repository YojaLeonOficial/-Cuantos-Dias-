import UIKit

var greeting = "Hello, playground"

/*
 * Reto #1
 * ¿ES UN ANAGRAMA?
 * Fecha publicación enunciado: 03/01/22
 * Fecha publicación resolución: 10/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Boolean) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */
private func isAnagram(wordOne:String, wordTwo:String) -> Bool{
    
   
    if wordOne.lowercased() == wordTwo.lowercased() {
        print("No es un anagrama, son palabras iguales")
        return false
        
    }
    wordOne.lowercased().sorted() == wordTwo.lowercased().sorted()
      print("Es un Anagrama")
    return true
}



isAnagram(wordOne: "Inglaterra", wordTwo: "Inglaterra")


/*
Alegan – Ángela    Nepal – Panel    Nacionalista – Altisonancia
Valora – Álvaro    Raza – Zara    Frase – Fresa
Colinas – Nicolás    Pagar – Praga    Integrarla – Inglaterra
Quieren – Enrique    Cornisa – Narciso    Acuerdo – Ecuador
Japonés – Esponja    Amparo – Páramo    Deudora – Eduardo
Ramón – Norma    Camino – Mónica    Fotolitografía – Litofotografía
Animal – Lámina    Matar – Marta    Saco – Cosa
Mora – Roma    Brasil – Silbar    Sentido – Destino
Saunas – Susana    Croacia – Arcaico    Tinieblas – Sibilante
Aretes – Teresa    Andalucía – Alucinada    Cronista – Cortinas
Ventilan – Valentín    Aparcamiento – Metacarpiano    Calienta – Alicante
Trama – Marta    Ballena – Llenaba    Reposaré – Reposera


Fuente: https://www.ejemplos.co/50-ejemplos-de-anagramas/#ixzz7fcasO3OE */
