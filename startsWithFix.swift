import UIKit

"""
    Write a program to check if a given string begins with "fix". "f" can be any character
    or number, also.
"""

func ex13(word: String) -> Bool {
    
    var result = word
    
    result.removeFirst()
    
    if result.hasPrefix("ix") {
        return true
    }
    
    return false
}

print(ex13(word: "six dogs")) // prints true

