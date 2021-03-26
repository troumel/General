import Foundation

// Write a function that returns true if both words contain the same characters in any order.

// Solution 1: run through the letters of one word and check if this letter exists in the second word. Find the index
// and delete it. In the end the second word should be equal to zero if it was a match with the first.

// func checkWordOrder(word1: String, word2: String) -> Bool {

//     var checkWord2 = word2

//     for letter in word1 {
//        if let index = checkWord2.firstIndex(of: letter) {
//            checkWord2.remove(at: index)
//        } else {
//            return false
//        }
//     }

//     return checkWord2.count == 0
// }

// print(checkWordOrder(word1: "teo", word2: "eot")) // prints true

// Solution 2: we can use the sorted func, so we can put everything is order and then copare it. This is
// best in terms of time complexity.

func checkWordOrder(word1: String, word2: String) -> Bool {
    return word1.sorted() == word2.sorted()
}

print(checkWordOrder(word1: "teo", word2: "eot")) // prints true