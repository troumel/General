import UIKit

"""
    Write a program to take the first two characters from a given string and create
  a new string with the two characters added at both the start and the end of the string.
"""

func ex10(word: String) -> String {
    
    let prefix = word.prefix(2)
    return "\(prefix)\(word)\(prefix)"
}

print(ex10(word: "swift")) // prints swswiftsw

