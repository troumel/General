"""
    Check if the number of 1's is greater than the number of 3's, in a given array.
"""

import Foundation

func checkOnesVsThree(_ arr: [Int]) -> Bool {
    
    guard arr.count >= 2 else {
        print("Array elements should be more than one")
        return false
    }
    
    var one = 0
    var three = 0
    
    for n in arr {
        if n == 1 {
            one += 1
        } else if n == 3 {
            three += 1
        }
    }
    return one > three
}

print(checkOnesVsThree([1, 1, 3, 2])) // prints true
print(checkOnesVsThree([1, 1, 3, 3])) // prints false
