import UIKit

"""
    Write a program to add the last character at the front and back of given string
"""

func ex8(word: String) -> String {
    
    var result = word
    
    let lastChar = result.removeLast()
    
    return "\(lastChar)\(word)\(lastChar)"
}

print(ex8(word: "swift")) // prints tswiftt

