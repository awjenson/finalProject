//
//  Goals.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/1/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import RealmSwift

class Goal: Object {
    // When creating properties using Realm, you need to add "@objc dynamic"
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
}
