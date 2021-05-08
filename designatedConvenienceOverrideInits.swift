import Foundation

enum ArmorType : String {
    case wolf = "Wolf"
    case terminator = "Terminator"
}

class Warrior{
    
    var armorType : ArmorType = .wolf
    
    init(armorType: ArmorType) {
        self.armorType = armorType
        print("Class Warrior. armorType is \(self.armorType)\n")
    }
    
    convenience init()
    {
        self.init(armorType: .terminator)
    }
}

class SpaceMarine: Warrior {
    var name: String = "Wolf Marine"
    
    override init(armorType: ArmorType) {
        
        super.init(armorType: armorType)
    }
}

var ultraMarine = SpaceMarine()
print(" This type of marine is: \(ultraMarine.name) and his armor type is: \(ultraMarine.armorType)")
print("\n")
var bloodAngel = SpaceMarine(armorType: .wolf)
print(" This type of marine is: \(bloodAngel.name) and his armor type is: \(bloodAngel.armorType)")

