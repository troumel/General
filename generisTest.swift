import UIKit

func compare<T: Equatable>(a: T, b:T) -> String {
    return a == b ? "Equal" : "Not Equal"
}

print(compare(a: 7.5, b: 7.5)) // prints Equal
