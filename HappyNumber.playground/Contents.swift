import UIKit

// Given a number, square each digit in the number and add them up. Repeat this process until the sum of the number squares equals to 1

func main() {
    print(isHappy(n: 19))
}



func isHappy(n: Int) -> Bool {
    var set = Set<Int>()
    var current = n
    while current > 0, !set.contains(current) {
        current = operateHappyNum(current, &set)
    }
    // if sum is 1, we found a happy number
    // return true
    return current == 1
}

func operateHappyNum(_ num: Int, _ set: inout Set<Int>) -> Int {
    var num = num
    print(num)
    while (num % 10 == 0) {
        num = num / 10
        
    }

    set.insert(num)
    print(set)
    var sum = 0
    print(sum)
    
    //Find each digit of the number and
    //add square of that digit to sum
    while (num > 0) {
        print(num)
        // determine remainder, last digit
        var last = num % 10
        print(last)
        
        // add sqaure of remainder to sum
        sum += last * last
        print(sum)
        
        // divide number by 10 to loose the last digit
        print(num)
        num = num / 10
        print(num)
    }
    
    // return sum of squares of each digit
    return sum
}

main()
