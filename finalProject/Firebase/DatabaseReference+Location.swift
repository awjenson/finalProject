//
//  DatabaseReference+Location.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// Source: https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/firebase-router

import Foundation
//import FirebaseDatabase

// APIs to easily add, reuse, and modify for locations in our database
//extension DatabaseReference {
//
//    enum FirebaseLocation {
//        // insert cases to read/write to locations in Firebase
//        case root
//        // reading to a user's goalItems
//        // To navigate the posts node to a given user's posts, we'll need the user's uid.
//        case readGoals(uid: String)
//        case deleteGoal(uid: String)
//        case writeGoal(uid: String)
//
//        case readMessages(uid: String)
//        case deleteMessage(uid: String)
//        case writeMessage(uid: String)
//
//        case readProfileItem(uid: String)
//        case writeProfileItem(uid: String)
//
//
//        // Add a function within our MGLocation enum that returns a DatabaseReference for each specific case.
//        func asDatabaseReference() -> DatabaseReference {
//            let root = Database.database().reference()
//
//            // Handle each enum case inside switch statement
//            switch self {
//            case .root:
//                return root
//
//            // GOALS
//            case .readGoals(let uid):
//                // extract the associated value of the enum value and construct a new value for our posts case
//                return root.child(FirebaseConstants.DbChild.GoalItems).child(uid)
//                // next is .observe()
//
//                // *** NOT NEEDED RIGHT NOW, ONLY FOCUSED ON ONE HISTORICAL GOAL
//            case .deleteGoal(let uid):
//                return root.child(FirebaseConstants.DbChild.GoalItems).child(uid)
//
//            case .writeGoal(let uid):
//                return root.child(FirebaseConstants.DbChild.GoalItems).child(uid).childByAutoId()
//                // next is .setValue()
//
//            // MESSAGES
//            case .readMessages(let uid):
//                // extract the associated value of the enum value and construct a new value for our posts case
//                return root.child(FirebaseConstants.DbChild.Messages).child(uid)
//                // next is .observe()
//
//            // *** NOT NEEDED RIGHT NOW, ONLY FOCUSED ON ONE HISTORICAL GOAL
//            case .deleteMessage(let uid):
//                return root.child(FirebaseConstants.DbChild.Messages).child(uid)
//
//            case .writeMessage(let uid):
//                return root.child(FirebaseConstants.DbChild.Messages).child(uid).childByAutoId()
//                // next is .setValue()
//
//
//            // PROFILE
//            case .readProfileItem(let uid):
//                return root.child(FirebaseConstants.DbChild.ProfileUserData).child(uid)
//                // next is .observe(.childAdded)
//
//            case .writeProfileItem(let uid):
//                return root.child(FirebaseConstants.DbChild.ProfileUserData).child(uid).childByAutoId()
//                // next is .setValue()
//
//            }
//        }
//    }
//
//    // To make our API easier to access, we'll create a static method for constructing a DatabaseReference given a MGLocation case.
//    static func toLocation(_ location: FirebaseLocation) -> DatabaseReference {
//        return location.asDatabaseReference()
//    }
//
//}
