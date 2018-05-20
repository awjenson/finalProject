//
//  GoalItem.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/20/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import Firebase

// Firebase
class GoalItem {

    var name = ""
    var count:Int = 0
    var timestamp = ""
    var color = ""
}

// Change name later

struct GroceryItem {

    let ref: DatabaseReference? // not set until snapshot received from Firebase
    let key: String  // not set until snapshot received from Firebase
    let name: String
    let timestamp: String
    var count: Int

    init(name: String, timestamp: String, count: Int, key: String = "") {
        self.ref = nil
        self.key = key
        self.name = name
        self.timestamp = timestamp
        self.count = count
    }

    // This is where we set ref and key properties
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let name = value[Constants.GoalItem.Name] as? String,
            let timestamp = value[Constants.GoalItem.TimeStamp] as? String,
            let count = value[Constants.GoalItem.Count] as? Int else {
                return nil
        }

        self.ref = snapshot.ref
        self.key = snapshot.key
        self.name = name
        self.timestamp = timestamp
        self.count = count
    }

    func toAnyObject() -> Any {
        return [
            Constants.GoalItem.Name: name,
            Constants.GoalItem.TimeStamp: timestamp,
            Constants.GoalItem.Count: count
        ]
    }
}
