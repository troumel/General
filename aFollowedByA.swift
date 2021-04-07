import UIKit

"""
    Write a program that checks, if the first index of "a" in agiven string is
    immediately followed bu another "a".
"""

func ex20(word: String) -> Bool {
    
    guard word.count > 1 else {return false}
    
    let firstA = word.firstIndex(of: "a")
    let secA = word.index(after: firstA!)
    
    return word[firstA!] == word[secA]
}

print(ex20(word: "nnaa")) // returns true


