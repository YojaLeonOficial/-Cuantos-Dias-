import UIKit
import Foundation

var greeting = "Hello, playground"

func main () {
    
    print(factorial(n: 3))
    
}

func factorial(n: Int) -> Int {
    return n <= 1 ? 1 : n * factorial(n: n - 1)
}


/*
func factorial (n: Int) -> Int {
    
    var result = 1
    if n == 0 {
        return 1
    } else if  n <= 1 {
        return 1
    } else {
        result = n * factorial(n: n - 1)
    }
    return result

}

 */



main()
