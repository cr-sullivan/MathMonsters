//
//  Monster.swift
//  MathMonsters
//
//  Created by Chris Sullivan on 26/12/17.
//  Copyright © 2017 Sullivan Apps. All rights reserved.
//

import UIKit

enum Weapon {
    case blowgun, ninjaStar, fire, sword, smoke
}

class Monster {
    let name: String
    let description: String
    let iconName: String
    let weapon: Weapon
    
    init(name: String, description: String, iconName: String, weapon: Weapon) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.weapon = weapon
    }
    
    var weaponImage: UIImage {
        switch weapon {
        case .blowgun:
            return UIImage(named: "blowgun.png")!
        case .fire:
            return UIImage(named: "fire.png")!
        case .ninjaStar:
            return UIImage(named: "ninjastar.png")!
        case .smoke:
            return UIImage(named: "smoke.png")!
        case .sword:
            return UIImage(named: "sword.png")!
        }
    }
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}

