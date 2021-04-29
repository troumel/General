import Foundation

"""
    write a function that returns true, if the sequence 0,1,2 appears anywhere in a given array
"""

func checkSequence(_ array: [Int]) -> Bool {

    guard array.count >= 3 else {
        return false
    }
   
    for (index, number) in array.enumerated() {
        let secondIndex = index + 1
        let thirdIndex = index + 2

        if number == 0 && array[secondIndex] == 1 && array[thirdIndex] == 2 {
            return true
        }
    }
    return false
    
}

print(checkSequence([0,1,1,2,3])) // prints false
print(checkSequence([1,0,1,2,1])) // prints true