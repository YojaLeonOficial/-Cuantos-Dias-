import UIKit

var greeting = "Hello, playground"


func main () {
  
    print(singleNumber(nums: [1, 2, 3, 1, 2]))
    
}

func singleNumber(nums: [Int]) -> Int {
    
    var dict = [Int:Bool]()
    
        for num in nums {
            print(num)
            if (dict[num] != nil) { // si ya tiene un valor asigando se le asigna el nuevo valor que sera false
                dict[num] = false
                print(dict)
            } else {
                dict[num] = true
                print(dict)
            }
        }
        
    //print(dict)
        for key in dict.keys {
            //  print(key)
            if (dict[key] != false) {
                return key
            }
        }
        return -1
    
    
}



main ()
