//
//  Vision.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/1/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import RealmSwift

// Object is a class used to define Realm model objects.
class DailyTracker: Object {
    // Declare Realm properties for Vision Class with '@objc dynamic'. Need to add these two modifiers, so that Realm can moinitor for changes in the value of these properties.
    @objc dynamic var name: String = ""
    @objc dynamic var count: Int = 0
    @objc dynamic var dateCreated: Date?

    /* Forward relationships, use Realm's List to define to-many relationships which is a container type like an array.
     // create a constant called goals and it will hold a List of Goal object and we'll intialize it as an empty List.
     let goals = List<Goal>()

     */

}
