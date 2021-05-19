"""
    Return the words in a given array, that are longer than three letters
"""



let words = ["hello", "world", "this", "and", "a", "sun", "of", "closure"]
let filtered = words.filter { word in
  return word.count > 3
}

print(filtered) // returns ["hello", "world", "this", "closure"]