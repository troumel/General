import UIKit

"""
    Write a program that accepts two integers and tests if the last digit
    of the two given non negative values are same or not
"""

func ex18(a: Int, b: Int) -> Bool {
    
    guard a > 0, b > 0 else { return false }
    
    if a % 10 == b % 10 {
        
        return true
    }
    return false
}

print(ex18(a: 4, b: 64)) // prints true