//
//  User.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/14/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

// Each Enumeration definition defines a brand new type, so it should have a name starting with a Capital Letter.
class Person {

    enum Gender {
        case female
        case male
        case other
    }

    enum Age {
        // TODO: Unsure how best to do this
    }

    enum Diet {
        case meatAndPlants
        case vegetarian
        case vegan
    }

    enum RelationshipStatus {
        case single
        case inRelationship
        case engaged
        case marriedOrDomesticPartnership
        case divorced
        case widow
    }

}
