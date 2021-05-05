"""
    Check if one of the first four numbers of a given integer array, is a 7. The length of the array can be any size.
"""

import Foundation


func checkForSevens(_ input: [Int]) -> Bool {
    
    guard input.count >= 4 else {
        return false
    }
    
    return input.prefix(4).contains(7) ? true : false
}

print(checkForSevens([3, 4, 7, 4, 6])) // prints true
print(checkForSevens([7, 3, 1]))       // prints false
print(checkForSevens([1, 2, 3, 4, 7])) // prints false
