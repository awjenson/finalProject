//
//  MessageItem.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import Firebase

struct MessageItem {

    // OLD MODEL CODE:
    // var sender = ""
    // var message = ""
    // var timestamp = ""

    let ref: DatabaseReference? // not set until snapshot received from Firebase
    let key: String  // not set until snapshot received from Firebase
    
    // Customize desired data to be stored/retrieved in/from Firebase
    let message: String
    let timestamp: String


    init(message: String, timestamp: String, key: String = "") {
        self.ref = nil
        self.key = key
        self.message = message
        self.timestamp = timestamp
    }

    // This is where we set ref and key properties
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let message = value[FirebaseConstants.Message.Text] as? String,
            let timestamp = value[FirebaseConstants.Message.TimeStamp] as? String else {
                return nil
        }

        self.ref = snapshot.ref
        self.key = snapshot.key
        self.message = message
        self.timestamp = timestamp
    }

    //toAnyObject() which will store data in properties inside Model Class
    func toAnyObject() -> Any {
        return [
            FirebaseConstants.Message.Text: message,
            FirebaseConstants.Message.TimeStamp: timestamp,
        ]
    }
}

