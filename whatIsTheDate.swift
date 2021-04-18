import Foundation

let dateFormatter = DateFormatter()
var date = Date()

dateFormatter.dateStyle = .short
dateFormatter.timeStyle = .short

print(dateFormatter.string(from: date))

