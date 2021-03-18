import UIKit

class Monster {
    
    var name: String
    
    init(name: String) {
        
        self.name = name
    }
}

class Zombie: Monster {
    
    var isUndead: Bool
    
    init(name: String, isUndead: Bool) {
        self.isUndead = isUndead
        super.init(name: name)
    }
}

class Orc: Monster {
    
    var numberOfHorns: Int
    
    init(name: String, numberOfHorns: Int) {
        
        self.numberOfHorns = numberOfHorns
        super.init(name: name)
    }
}

let dungeon = [  // this array is of type monster
    Zombie(name: "Butcher", isUndead: true),
    Orc(name: "Lothar", numberOfHorns: 3),
    Zombie(name: "Rick", isUndead: true),
    Orc(name: "Daboo", numberOfHorns: 2)
]

var zombieCount = 0
var orcCount = 0

for monster in dungeon {
    
    if monster is Zombie {
        zombieCount += 1
    } else if monster is Orc {
        orcCount += 1
    } else {
        print("Sorry you are in another campaign!")
    }
    
}

print("This dungeon has \(zombieCount) zombies and \(orcCount) orcs!")

for monster in dungeon {
    
    if let orc = monster as? Orc {
        print("This is \(orc.name) the orc and has \(orc.numberOfHorns) horns! Be careful!! ")
    }
    if let zombie = monster as? Zombie {
        
        print("This is \(zombie.name) the zombie! Is it undead? \(zombie.isUndead) of course!")
    }
    
}