//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    var favoriteFlavorsOfIceCream = ["Joe":"Peanut Butter and Chocolate",
                                     "Tim": "Natural Vanilla",
                                     "Sophie": "Mexican Chocolate",
                                     "Deniz": "Natural Vanilla",
                                     "Tom": "Mexican Chocolate",
                                     "Jim": "Natural Vanilla",
                                     "Susan": "Cookies 'N' Cream"]
    
    func names(forFlavor flavor: String) -> [String] {
        var container: [String] = []
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                container.append(key)
            }
        }
        return container
    }
    
    func count(forFlavor flavor: String) -> Int {
        var container: [String] = []
        for (key,value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                container.append(key)
            }
        }
        return container.count
    }
    
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        } else {
            return false
        }
    }
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            return false
        } else {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        }
    }
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list: String = ""
        if !allNames.isEmpty {
            for name in allNames {
                if let flavor = favoriteFlavorsOfIceCream[name] {
                    list += "\(name) likes \(flavor)\n"
                }
            }
        }
        return list
    }
    
}
