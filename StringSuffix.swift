import UIKit

"""
    Working with String Suffix
"""
// -> check for a specific string

//let word = "frida is good dog"
//
//let suffix = word.hasSuffix("dog")
//
//print(suffix) // prints true

// -> get substring of suffix

//let word = "frida is good dog"
//
//let suffix = word.suffix(2)
//
//print(suffix) // prints og

// -> using (from:)
//let word = "frida is good dog"
//let index = word.index(word.startIndex, offsetBy: 6)
//let suffix = word.suffix(from: index)
//
//print(suffix) // prints is good dog

// -> negative offset
//let word = "frida is good dog"
//let index = word.index(word.endIndex, offsetBy: -3)
//print(word.suffix(from: index)) // prints dog

//-> first/last index of
let word = "frida is good dog"

if let index = word.firstIndex(of: "i") {
    print(word.suffix(from: index))
}
// prints ida is good dog

if let index = word.lastIndex(of: "i") {
    print(word.suffix(from: index))
}
// prints is good dog

