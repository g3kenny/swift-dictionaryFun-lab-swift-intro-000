//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream:[String:String] = ["Joe":"Peanut Butter and Chocolate",
                                                     "Tim":"Natural Vanilla",
                                                     "Sophie":"Mexican Chocolate",
                                                     "Deniz":"Natural Vanilla",
                                                     "Tom":"Mexican Chocolate",
                                                     "Jim":"Natural Vanilla",
                                                     "Susan":"Cookies 'N' Cream"
                                                    ]

    
    
    // 2.
    func names(forFlavor: String) -> [String] {
        var output:[String]=[]
        for (name,flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                output.append(name)
            }
        }
        
        return output
    }
    
    
    
    
    
    // 3.
    func count(forFlavor:String) -> Int {
        var output = 0
        for (name,flavor) in favoriteFlavorsOfIceCream {
            if flavor == forFlavor {
                output += 1
            }
        }
        
        return output
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
        return favoriteFlavorsOfIceCream[forPerson]
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        return (favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil)
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var output = ""
        var count = 0
        
        for (person,flavor) in favoriteFlavorsOfIceCream.sorted(by: <) {
            if count > 0 {
                output = output + "\n"
            }
            output = output + "\(person) likes \(flavor)"
            count += 1
        }
        
        return output
    }
    
    
    
    
    
    
    

}
