import UIKit

"""
    Write a program to check if a given non negative number is multiple of 3 or 5
"""

func ex9(n: Int) -> Bool {
    
    return n % 3 == 0 || n % 5 == 0
    
}

print(ex9(n: 12)) // prints true

