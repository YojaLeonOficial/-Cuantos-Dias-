import UIKit

var greeting = "Hello, playground"

/*
 Move Zeroes
 Description: Given an array, write a function to move all 0s to the end of it while maintaining the relative order of the non-zero elements.

 ExampleInput: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 The problem requires you to solve it in-place, that said, no extra data structure can be used for the output.

 Since it has to be in-place, we will just use Swift Array operations to solve the problem. We loop through the array and remove the element if it is 0. Then append the 0 to the array. In addition to the index we loop through the array, we need another variable count to keep track of the number of elements we have processed. This design helps prevent an indefinite loop.
 */

func main () {
    var mz = [0,1,0,3,12]
    moveZeros(&mz)
    
    
}

func moveZeros(_ nums: inout [Int]) {
    var idx = 0
    var count = 0
    while idx < nums.count, count < nums.count {
        
        var b = nums.count
        //print(b)
        
        var c = nums[idx]
        //print(c)
        
        
        if nums[idx] == 0 {
            nums.remove(at: idx)
            nums.append(0)
        } else {
            idx += 1
            
            //print(idx)
        }
        count += 1
        
        print(count)
    }
    
}




main ()

