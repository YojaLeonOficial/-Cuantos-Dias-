import UIKit

var greeting = "Hello, playground"

/*
 * Reto #7
 * CONTANDO PALABRAS
 * Fecha publicación enunciado: 14/02/22
 * Fecha publicación resolución: 21/02/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.
 * - Los signos de puntuación no forman parte de la palabra.
 * - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */




// No pude eliminar ms de un caracter en el texto :(


func main() {
    countWords(text: "Hola, mi nombre es brais. Mi nombre completo es Brais Moure (MoureDev)." )
    countWordsDos(text: "Hola, mi nombre es Yoja. Mi nombre completo es Yojairo Leon (YojaLeon).")
    countWordsThree(text: "Hola, mi nombre es Maryann. Mi nombre completo es Maryann Cavallo (MaryCava).")
}

func countWords(text: String){
    
    var words: [String:Int] = [:]
    let pattern = "[^a-z0-9]"
    let regex = try! Regex(pattern)

    var text = text.lowercased().replacing(regex, with: " ").split(separator: " ").sorted()
    print(text)
    
    var palabras = text.count
    print("El Parrafo contiene \(palabras) palabras y de las cuales:")
    
    for items in text {
        words[String(items)] = (words[String(items)] ?? 0) + 1
    }
    
    for (key, value) in words {
        if value == 1 {
            print("\"\(key)\" se ha repetido \(value) vez")
        } else {
            print("\"\(key)\" se ha repetido \(value) veces")
        }
    }
}


func countWordsDos (text: String) {
    
    var words: [String:Int] = [:]
    
    let pattern = "[^a-z0-9]"
    let regex = try! Regex(pattern)
    
    var text = text.lowercased().replacing(regex, with: " ").split(separator: " ").sorted()
    print(text)

    var palabras = text.count
    print("El Parrafo contiene \(palabras) palabras y de las cuales:")
    
    text.forEach { words[String($0), default:  0] += 1}
   
    for (key, value) in words {
        if value == 1 {
            print("\"\(key)\" se ha repetido \(value) vez")
        } else {
            print("\"\(key)\" se ha repetido \(value) veces")
        }
    }
}

func countWordsThree(text: String){
    
    var words: [String:Int] = [:]

    let pattern = "[^a-z0-9]"
    let regex = try! Regex(pattern)
    
    let parrafoCount = text.split(separator: " ").count
    print("El Parrafo contiene \(parrafoCount) palabras y de las cuales:")
    
    var _: () = text.lowercased().split(separator: " ").sorted().map({$0.replacing(regex, with: "")}).forEach { words[String($0), default:  0] += 1}
    
        
    for (key, value) in words {
        if value == 1 {
            print("\"\(key)\" se ha repetido \(value) vez")
        } else {
            print("\"\(key)\" se ha repetido \(value) veces")
        }
    }
}

main()
