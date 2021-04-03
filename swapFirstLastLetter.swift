import UIKit

"""
    Write a program to swap the first and last character of a given string
"""

func ex7(word: String) -> String {
    
    var result = word
    
    let firstChar = result.removeFirst()
    let lastChar = result.removeLast()
    
    result.append(firstChar)
    result.insert(lastChar, at: result.startIndex)
    
    return result
}

print(ex7(word: "Frida")) // prints aridF

