import UIKit

"""
    Write a program that accepts two integers and tests which value is nearest
    to value 10. Return 0 if both integers have the same distance from 10.
"""

func ex15(a: Int, b: Int) -> Int {
    
    if abs(10 - a) > abs(10 - b) {
        return b
    } else if abs(10 - a) < abs(10 - b) {
        return a
    }
    
    return 0
}

print(ex15(a: 14, b: 6)) // prints 0

