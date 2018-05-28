//
//  GoalItem.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/20/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import FirebaseDatabase // changed from Firebase to FirebaseDatabase

struct GoalItem {

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
            let name = value[FirebaseConstants.GoalItem.Name] as? String,
            let timestamp = value[FirebaseConstants.GoalItem.TimeStamp] as? String,
            let count = value[FirebaseConstants.GoalItem.Count] as? Int else {
                return nil
        }

        self.ref = snapshot.ref
        self.key = snapshot.key
        self.name = name
        self.timestamp = timestamp
        self.count = count
    }

    //toAnyObject() which will store data in properties inside Model Class
    func toAnyObject() -> Any {
        return [
            FirebaseConstants.GoalItem.Name: name,
            FirebaseConstants.GoalItem.TimeStamp: timestamp,
            FirebaseConstants.GoalItem.Count: count
        ]
    }
}
