//
//  Post.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/24/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseDatabase.FIRDataSnapshot

class Post {
    // properties and initializers
    var key: String?
    let imageURL: String
    let creationDate: Date
    var likeCount: Int
    // Our poster property will store a reference to the user that owns the post.
    var poster: User


    // Computed variable. This will be convenient for turning our Post objects into dictionaries of type [String : Any]:
    // We want our database representation of each post to include the new likeCount and poster data:
    var dictValue: [String : Any] {
        let createdAgo = creationDate.timeIntervalSince1970

        let userDict = ["uid" : poster.uid,
                        "username" : poster.username]

        return ["image_url" : imageURL,
                "created_at" : createdAgo,
                "like_count" : likeCount,
                "poster" : userDict,]
    }

    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let imageURL = dict["image_url"] as? String,
            let createdAgo = dict["created_at"] as? TimeInterval,
            let likeCount = dict["like_count"] as? Int,
            let userDict = dict["poster"] as? [String : Any],
            let uid = userDict["uid"] as? String,
            let username = userDict["username"] as? String

            else { return nil }

        self.key = snapshot.key
        self.imageURL = imageURL
        self.creationDate = Date(timeIntervalSince1970: createdAgo)
        self.likeCount = likeCount
        self.poster = User(uid: uid, username: username)
    }

    // Create an initializer that creates a new Post from a userText
    init(imageURL: String) {
        // TODO: Change imageURL to userText
        self.imageURL = imageURL
        self.creationDate = Date()
        self.likeCount = 0
        self.poster = User.current
    }


}


