
"""
   Find all string in an array that start with a certain letter
"""

import Foundation 

let array = ["Apples", "Peaches", "Plums"]

let beginWithP = array.filter {$0.hasPrefix("P")}

print(beginWithP) // prints Peaches, Plums 