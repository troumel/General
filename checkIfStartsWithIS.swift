import UIKit

"""
    Write a program to test given string, whether it starts with "Is".
    Return true or false.
"""

func ex10(word: String) -> Bool {
    
    let Is = "Is"
    let prefix = word.prefix(2)
    return prefix == Is
}

print(ex10(word: "Is swift")) // prints true

