//
//  Post.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/24/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseDatabase.FIRDataSnapshot

//class Post {
//    // properties and initializers
//    var key: String?
//    let creationDate: Date
//    var dailyRoutine = ""
//    var oneYearGoal = ""
//    var lifetimeGoal = ""
//    var vision = ""
//
//    // Our poster property will store a reference to the user that owns the post.
//    var poster: User
//
//
//    // Computed variable. This will be convenient for turning our Post objects into dictionaries of type [String : Any]:
//    // We want our database representation of each post to include the new likeCount and poster data:
//    var dictValue: [String : Any] {
//        let createdAgo = creationDate.timeIntervalSince1970
//
//        let userDict = ["uid" : poster.uid,
//                        "username" : poster.username]
//
//        return ["poster" : userDict,
//                "created_at" : createdAgo,
//                "dailyRoutine" : dailyRoutine,
//                "oneYearGoal" : oneYearGoal,
//                "lifetimeGoal" : lifetimeGoal,
//                "vision" : vision,
//                ]
//    }
//
//    init?(snapshot: DataSnapshot) {
//        guard let dict = snapshot.value as? [String : Any],
//            let createdAgo = dict["created_at"] as? TimeInterval,
//            let userDict = dict["poster"] as? [String : Any],
//            let uid = userDict["uid"] as? String,
//            let username = userDict["username"] as? String,
//
//            let dailyRoutine = dict["dailyRoutine"] as? String,
//            let oneYearGoal = dict["oneYearGoal"] as? String,
//            let lifetimeGoal = dict["lifetimeGoal"] as? String,
//            let vision = dict["vision"] as? String
//            else { return nil }
//
//        self.key = snapshot.key
//        self.creationDate = Date(timeIntervalSince1970: createdAgo)
//        self.poster = User(uid: uid, username: username)
//        self.dailyRoutine = dailyRoutine
//        self.oneYearGoal = oneYearGoal
//        self.lifetimeGoal = lifetimeGoal
//        self.vision = vision
//    }
//
//    // Create an initializer that creates a new Post from a userText
//    init(dailyRoutine: String, oneYearGoal: String, lifetimeGoal: String, vision: String) {
//        // TODO: Change imageURL to userText
//        self.creationDate = Date()
//        self.poster = User.current
//        self.dailyRoutine = dailyRoutine
//        self.oneYearGoal = oneYearGoal
//        self.lifetimeGoal = lifetimeGoal
//        self.vision = vision
//    }
//
//
//}


