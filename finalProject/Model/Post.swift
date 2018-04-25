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

    // Create an initializer that creates a new Post from a userText
    init(imageURL: String) {
        // TODO: Change imageURL to userText
        self.imageURL = imageURL
        self.creationDate = Date()
    }


    // Computed variable. This will be convenient for turning our Post objects into dictionaries of type [String : Any]:
    var dictValue: [String : Any] {
        let createdAgo = creationDate.timeIntervalSince1970

        return ["image_url" : imageURL,
                "created_at" : createdAgo]
    }

    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let imageURL = dict["image_url"] as? String,
            let createdAgo = dict["created_at"] as? TimeInterval
            else { return nil }

        self.key = snapshot.key
        self.imageURL = imageURL
        self.creationDate = Date(timeIntervalSince1970: createdAgo)
    }


}


