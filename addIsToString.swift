import UIKit

"""
    Write a swift program to add "Is" to the front of a given string. However, if the string
  already begins with "Is", return given string.
"""

func ex5(word: String) -> String {
    if word.hasPrefix("Is") {
        return word
    }
    
    return "Is \(word)"
}

print(ex5(word: "Issa")) // prints Issa
print(ex5(word: "good")) // prints Is good

//func ex5_1(word: String) -> String {
//
//    var prefix = [Character]()
//    var counter = 1
//
//
//    for letter in word {
//        if counter <= 2 {
//            prefix.append(letter)
//        }
//        counter += 1
//    }
//
//    return String(prefix) == "Is" ? word : "Is \(word)"
//}
//
//print(ex5_1(word: "Issa"))
//print(ex5_1(word: "good"))

//func ex5_2(word: String) -> String {
//
//    if word.starts(with: "Is") {
//        return word
//    }
//
//    return "Is \(word)"
//}
//
//print(ex5_2(word: "Issa"))
//print(ex5_2(word: "good"))
