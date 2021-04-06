import UIKit

"""
    Write a program that accepts a string and converts the last three characters
    in uppercase. If the string has less than 3 characters, lowercase it.
"""

func ex19(word: String) -> String {
    
    var result = word
    
    guard result.count > 3 else {
        return result.lowercased()
    }
    
    let lastLetters = (result.suffix(3)).uppercased()
    
    result.removeLast(3)
    
    return "\(result)\(lastLetters)"
}

print(ex19(word: "anna")) // returns aNNA


