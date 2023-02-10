import UIKit

var greeting = "Hello, playground"

var array = [5, 10, 50, 40, 30, 40, 50, 3, 6, 1, 7, 4, 10]
for numero in array {
   var n = numero + 5
    print(n)
}

var r = array.map({$0 + 5})
print(r)


let cantidades = [20, 43, 103, 23, 10, 22, 34, 44]
let cantidadEuros = cantidades.map ({"\($0)€"})
print(cantidadEuros)

//
let strings = [
    "one",
    "two",
    "three"
]

let ints = strings.map { (string) -> Int in
    return string.count
}

let strings2 = [
    "one",
    "two",
    "three"
]

let ints2 = strings2.map { $0.count }
print(ints2)

let text = "Hola, mi nombre es brais. Mi nombre completo es Brais Moure (MoureDev)."

let int = text.map { (String) -> Int in
    String.count
    
}
let int = text.map { (String) -> Int in
    String.count
    
}

func countWordsDos (text: String) {
    var words: [String:Int] = [:]
    let text = text.map({$0.(of: ".", with: "")})
    
    //print(text)
    text.forEach { words[String($0), default:  0] += 1}
    print(words)
    for (key, value) in words {
        if value == 1 {
            print("\"\(key.uppercased())\" se ha repetido \(value) vez")
        } else {
            print("\"\(key.uppercased())\" se ha repetido \(value) veces")
        }
    }
}

func countWords(text: String){
    
    var words: [String:Int] = [:]

    let pattern = "[^a-z0-9]"
    let regex = try! Regex(pattern)
    
    var text = text.lowercased().split(separator: " ").sorted()
    print(text)
    
    var replaceText = text.map({$0.replacing(regex, with: " ")})
    
    let ints = replaceText.count
    print("El Parrafo contiene \(ints) palabras y de las cuales:")
    
    for items in replaceText {
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
