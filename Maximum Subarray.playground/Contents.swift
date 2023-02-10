import UIKit


// Maximum Subarray
// Description: Given an integer array, find the contiguous subarray (with at least one number) which has the largest sum and return its sum.

func main () {
    print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
    
}

func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }

    if nums.count == 1 {
        return nums[0]
    }

    var localMax = nums[0]
    print("localMax \(localMax)")
    
    var result = localMax
    print("result \(result)")
    for idx in 1...nums.count - 1 {
        print("idx \(idx)")
        
        localMax = max(nums[idx] + localMax, nums[idx])
        print("localMax2 \(localMax)")
        
        result = max(localMax, result)
        
    }
    return result
}

main ()
