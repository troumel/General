


// Write a function that returns true if string can be read the same when reversed
// Ignore case and spaces


func checkPalindrome(word: String) -> Bool {
    var reversed = word.reversed()
    return word.lowercased().replacingOccurrences(of: " ", with: "") == String(reversed).lowercased().replacingOccurrences(of: " ", with: "")
}


print(checkPalindrome(word: "Never odd or even")) //returns true