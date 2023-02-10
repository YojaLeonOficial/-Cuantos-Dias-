import UIKit

var greeting = "Hello, playground"

func main() {
    
    //print(isBalanced(str: "{ a * ( c + d ) ] - 5 }"))
    print(isBalanced(str: "{{{{{{()}}}}}}"))
    /*
    print(isBalanced(str: "{[a * (c + d)] - 5}"))
    print(isBalanced(str: "}a + b [c] * (2x2)}}}}"))
    print(isBalanced(str: "{{{{{{(}}}}}}"))
    print(isBalanced(str: "{ [ a * ( c + d ) ] - 5 }"))
    print(isBalanced(str: "{a^4 + (((ax4)}"))
    print(isBalanced(str: "{ ] a * ( c + d ) + ( 2 - 3 )[ - 5 }"))
    
    print(isBalanced(str: "(a"))
    print(isBalanced(str: "[(){}]"))
     */
}


func isBalanced (str: String) -> Bool {
    
    var symbols: [Character: Character]   = ["{":"}", "[":"]", "(":")", "<": ">" ]
    var stack = [Character]()
    
    
    var b = symbols.keys
    print(b)
    //var openBrackets: [Character] = Array(symbols.keys.map{ $0 })
    //var closeBrackets: [Character] = Array(symbols.values.map{ $0 })
    
    if !str.count.isMultiple(of: 2) {
        return false
    }
    
    for bracket in str {
        print(bracket)
        if symbols.keys.contains(bracket) {
            stack.append(bracket)
           //print(stack)
            
        } else {
            if let previousBracket = stack.popLast() {
                //print(previousBracket)
                if symbols[previousBracket] != bracket {
                    print(symbols[previousBracket]!)
                    return false
                }
            } else {
                
            }
        }
        
    }
    return stack.isEmpty
}

main()
