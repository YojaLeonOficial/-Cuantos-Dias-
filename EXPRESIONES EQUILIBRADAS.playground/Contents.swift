import UIKit

var greeting = "Hello, playground"

/*
 * Reto #10
 * EXPRESIONES EQUILIBRADAS
 * Fecha publicación enunciado: 07/03/22
 * Fecha publicación resolución: 14/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.
 * - Equilibrado significa que estos delimitadores se abren y cieran en orden y de forma correcta.
 * - Paréntesis, llaves y corchetes son igual de prioritarios. No hay uno más importante que otro.
 * - Expresión balanceada: { [ a * ( c + d ) ] - 5 }
 * - Expresión no balanceada: { a * ( c + d ) ] - 5 }
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func main() {
    
    print(isBalanced(str: "{ a * ( c + d ) ] - 5 }"))
    print(isBalanced(str: "{[a * (c + d)] - 5}"))
    print(isBalanced(str: "}a + b [c] * (2x2)}}}}"))
    print(isBalanced(str: "{{{{{{(}}}}}}"))
    print(isBalanced(str: "{ [ a * ( c + d ) ] - 5 }"))
    print(isBalanced(str: "{a^4 + (((ax4)}"))
    print(isBalanced(str: "{ ] a * ( c + d ) + ( 2 - 3 )[ - 5 }"))
    print(isBalanced(str: "{{{{{{()}}}}}}"))
    print(isBalanced(str: "(a"))
    print(isBalanced(str: "[(){}]"))
}

private func isBalanced (str: String) -> Bool {
    
    var symbols: [Character: Character]   = ["{":"}", "[":"]", "(":")" ]
    var stack = [Character]()
   
    var openBrackets: [Character] = Array(symbols.keys.map{ $0 })
    var closeBrackets: [Character] = Array(symbols.values.map{ $0 })

    if !str.count.isMultiple(of: 2) {
        return false
    }
    

    for character in str {
        if closeBrackets.contains(character) {
            if stack.isEmpty {
                return false
            } else {
                let indexOfLastCharacter = stack.endIndex - 1
                let lastCharacterOnStack = stack[indexOfLastCharacter]
                if character == symbols[lastCharacterOnStack] {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        if openBrackets.contains(character) {
            stack.append(character)
        }
        
    }
    return stack.isEmpty
}

main()

/*
//How do I turn an array into a dictionary?

    var country = ["Nagendra","Babu","Nitesh","Sathya"]
    var myDict: [Int:String] = [:]
    for i in 1...country.count {
    myDict[i] = country[i]
    }
    let myKeys: [Int] = [1,2,3,4]
    for z in 1...country.count where 1 < myKeys.count {
    myDict[myKeys[z]] = country[z]
    }
    print(myDict)
    


let dic = ["1":"a", "2":"b", "3":"c"]
let arrayOfKeys = Array(dic.keys.map{ $0 })
print(arrayOfKeys) // [1, 2, 3]
let arrayOfValues = Array(dic.values.map{ $0 })
print(arrayOfValues) // [a, b, c]

*/

var names = ["Mohan", "Raghu", "John"]
var marks = [75, 82, 79]
 
let myDictionary = Dictionary(uniqueKeysWithValues: zip(names, marks))
 
for (_, key_value) in myDictionary.enumerated() {
   print("\(key_value)")
}

print(myDictionary)
