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
    let why: String
    let timestamp: String
    var count: Int

    init(name: String, why: String, timestamp: String, count: Int, key: String = "") {
        self.ref = nil
        self.key = key
        self.name = name
        self.why = why
        self.timestamp = timestamp
        self.count = count
    }

    // This is where we set ref and key properties
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let name = value[FirebaseConstants.GoalItem.Name] as? String,
            let why = value[FirebaseConstants.GoalItem.Why] as? String,
            let timestamp = value[FirebaseConstants.GoalItem.TimeStamp] as? String,
            let count = value[FirebaseConstants.GoalItem.Count] as? Int else {
                return nil
        }

        self.ref = snapshot.ref
        self.key = snapshot.key
        self.name = name
        self.why = why
        self.timestamp = timestamp
        self.count = count
    }

    //toAnyObject() which will store data in properties inside Model Class
    func toAnyObject() -> Any {
        return [
            FirebaseConstants.GoalItem.Name: name,
            FirebaseConstants.GoalItem.Why: why,
            FirebaseConstants.GoalItem.TimeStamp: timestamp,
            FirebaseConstants.GoalItem.Count: count
        ]
    }
}
