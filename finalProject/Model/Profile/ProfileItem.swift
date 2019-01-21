//
//  ProfileItem.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/26/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
//import FirebaseDatabase
//
//struct ProfileItem {
//
//    let ref: DatabaseReference? // not set until snapshot received from Firebase
//    let key: String  // not set until snapshot received from Firebase
//
//    // Customize desired data to be stored/retrieved in/from Firebase
//    let timestamp: String
//    let passion: String
//    let purpose: String
//    let goals: String
//    let fears: String
//
//    init(timestamp: String, passion: String, purpose: String, goals: String, fears: String, key: String = "") {
//        self.ref = nil
//        self.key = key
//        self.timestamp = timestamp
//        self.passion = passion
//        self.purpose = purpose
//        self.goals = goals
//        self.fears = fears
//    }
//
//    // This is where we set ref and key properties
//    // We initialize a snapshot when we
//    init?(snapshot: DataSnapshot) {
//        guard
//            let value = snapshot.value as? [String: AnyObject],
//            let timestamp = value[FirebaseConstants.ProfileUserData.TimeStamp] as? String,
//        let passion = value[FirebaseConstants.ProfileUserData.Passion] as? String,
//        let purpose = value[FirebaseConstants.ProfileUserData.Purpose] as? String,
//        let goals = value[FirebaseConstants.ProfileUserData.Goals] as? String,
//        let fears = value[FirebaseConstants.ProfileUserData.Fears] as? String else {
//            return nil
//        }
//
//        self.ref = snapshot.ref
//        self.key = snapshot.key
//        self.timestamp = timestamp
//        self.passion = passion
//        self.purpose = purpose
//        self.goals = goals
//        self.fears = fears
//    }
//
//    //toAnyObject() is used to call the saved properties when we write to Firebase
//    func toAnyObject() -> Any {
//        return [
//            FirebaseConstants.ProfileUserData.TimeStamp: timestamp,
//            FirebaseConstants.ProfileUserData.Passion: passion,
//            FirebaseConstants.ProfileUserData.Purpose: purpose,
//            FirebaseConstants.ProfileUserData.Goals: goals,
//            FirebaseConstants.ProfileUserData.Fears: fears,
//        ]
//    }
//}
