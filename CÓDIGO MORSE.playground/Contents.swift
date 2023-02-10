import UIKit

var greeting = "Hello, playground"


/*
 * Reto #9
 * CÓDIGO MORSE
 * Fecha publicación enunciado: 02/03/22
 * Fecha publicación resolución: 07/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.
 * - Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
 * - En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
 * - El alfabeto morse soportado será el mostrado en https://es.wikipedia.org/wiki/Código_morse.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func main() {
    print(decoder(input: "HOLA COMO ESTAS?"))
    print(decoder(input: ".... --- .-.. .- / -.-. --- -- --- / . ... - .- ... ..——.."))
    
   
}

private func decoder (input: String) -> String {
    
    var decodedInput = ""
    
    var input = input.lowercased()
    
    var decoder: [String:String] = [:]
    
    let pattern = "[a-z0-9]"
    let regex = try! Regex(pattern)
    
    var morseDict: [String : String]  = [
        "A": ".-",
        "B": "-...",
        "C": "-.-.",
        "D": "-..",
        "E": ".",
        "F": "..-.",
        "G": "--.",
        "H": "....",
        "I": "..",
        "J": ".---",
        "K": "-.-",
        "L": ".-..",
        "M": "--",
        "N": "-.",
        "O": "---",
        "P": ".--.",
        "Q": "--.-",
        "R": ".-.",
        "S": "...",
        "T": "-",
        "U": "..-",
        "V": "...-",
        "W": ".--",
        "X": "-..-",
        "Y": "-.--",
        "Z": "--..",
        "a": ".-",
        "b": "-...",
        "c": "-.-.",
        "d": "-..",
        "e": ".",
        "f": "..-.",
        "g": "--.",
        "h": "....",
        "i": "..",
        "j": ".---",
        "k": "-.-",
        "l": ".-..",
        "m": "--",
        "n": "-.",
        "o": "---",
        "p": ".--.",
        "q": "--.-",
        "r": ".-.",
        "s": "...",
        "t": "-",
        "u": "..-",
        "v": "...-",
        "w": ".--",
        "x": "-..-",
        "y": "-.--",
        "z": "--..",
        "1": ".----",
        "2": "..---",
        "3": "...--",
        "4": "....-",
        "5": ".....",
        "6": "-....",
        "7": "--...",
        "8": "---..",
        "9": "----.",
        "0": "-----",
        ".": ".—.—.—",
        ",": "——..——",
        "?": "..——..",
        "/": "—..—.",
        "!": "-.-.--",
        ";": "-.-.-.",
        ":": "---...",
        "_": "-....-",
        "=": "-...-",
        " ": "/",
    ]
    
    if input.contains(regex) {
        
        //Natural
        var codenatural = input.split(separator: "").compactMap { morseDict[String($0)] }.joined(separator: " ")
        decodedInput += codenatural
        decodedInput += " "
            
    } else {
        
        //Morse
        for (key, value) in morseDict {
            decoder[value] = key
        }
        
        var decoderMorse = input.split(separator: " ").compactMap { decoder[String($0)] }.joined(separator: "")
        
        decodedInput += decoderMorse
        decodedInput += " "
        }
    
    
    return decodedInput.uppercased()
}
                  

main()
