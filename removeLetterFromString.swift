import UIKit

"""
    Write a program to remove a character at a specified index of a given non empty string.
"""

func ex6(word: String, deleteLetter index: Int) -> String {
    
    let index = word.index(word.startIndex, offsetBy: index)
    var newWord = word
    
    newWord.remove(at: index)
    
    return newWord
}

print(ex6(word: "swift", deleteLetter: 3)) // print swit
