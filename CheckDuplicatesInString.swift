import Foundation

// Write a function that accept a String and returns true if the string has only unique letters. Letter case counts
//-------------------------

// solution #1
//------------

// func checkDuplicates(word: String) -> Bool {

//     var arr1 = [Character]()

//     for letter in word {
//         print(letter)
       

//         if arr1.contains(letter) {
//             return false
//         }
//         arr1.append(letter)
//     }

//     return true
// }

// solution #2 more optimal in terms of algorithm operation
//------------

func checkDuplicates(word: String) -> Bool {
   return  Set(word).count == word.count
}

print(checkDuplicates(word: "anna")) // prints false