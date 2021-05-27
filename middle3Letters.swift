
"""
	Create a new string of three letters, from a given string of odd length from the middle letters.
"""


import Foundation
func middleThreeLetters(_ input: String) -> String {
    let characters = input.characters
    let middle = (characters.count - 1) / 2
    let first = middle - 1
    let third = middle + 1
    
    let firstIndex = input.index(characters.startIndex, offsetBy: first)
    let thirdIndex = input.index(characters.startIndex, offsetBy: third + 1)
    let middleRange = firstIndex ..< thirdIndex
    let result = input.substring(with: middleRange)
    
    return result
}
print(middleThreeLetters("Swift")) // prints 'wif'
print(middleThreeLetters("abcde")) // prints 'bcd'