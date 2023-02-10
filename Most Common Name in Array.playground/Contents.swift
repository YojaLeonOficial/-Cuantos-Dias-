import UIKit

var greeting = "Hello, playground"

func main() {
    
    mostCommonNameinArray(arr: ["Bob", "Sally", "Bob", "Yoja", "Bob", "Sam", "Yoja", "Yoja"])
    
    
}

func mostCommonNameinArray(arr: [String]) -> String {
    
    var nameCountDictiponary = [String: Int]()
    
    for name in arr {
        if let count = nameCountDictiponary[name] {
           nameCountDictiponary[name] = count + 1
        } else {
            nameCountDictiponary[name] = 1
        }
    }
    
    var mostCommonName = ""
    
    for key in nameCountDictiponary.keys {
        
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count = nameCountDictiponary[key]!
            if count > nameCountDictiponary[mostCommonName]! {
                mostCommonName = key
            }
        }
        print("\(key): \(nameCountDictiponary[key]!)")
    }
    
    
    
   return mostCommonName
}

main()
