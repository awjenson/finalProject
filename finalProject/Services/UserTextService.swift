//
//  UserTextService.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct UserTextService {
    // add a service method for editing text posts:
    // 1. Each post that we like must have a key. We check the post has a key and return false if there is not.
    // 2. We create a reference to the current user's UID. We'll use this soon to build the location of where we'll store the data for liking the post.
    static func create(for post: Post, success: @escaping (Bool) -> Void) {
        // 1 Define a location for where we're planning to write data
        guard let key = post.key else {
            return success(false)
        }

        // 2 Write the data by setting the value for the location specified
        let currentUID = User.current.uid

        // 3 code to edit text in a post, Handle a callback for the success of the write
        // likesRef should be userTextRef
        let likesRef = Database.database().reference().child("postLikes").child(key).child(currentUID)
        // SET TO TRUE
        likesRef.setValue(true) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }

            // Our success callback returns a Bool on whether the network request was successfully executed and our like (userText) data was saved to the database.
            return success(true)
        }
    }

    static func delete(for post: Post, success: @escaping (Bool) -> Void) {
        // 1 Define a location for where we're planning to write data
        guard let key = post.key else {
            return success(false)
        }

        // 2 Write the data by setting the value for the location specified
        let currentUID = User.current.uid

        // 3 code to edit text in a post, Handle a callback for the success of the write
        // likesRef should be userTextRef

        
        let likesRef = Database.database().reference().child("postLikes").child(key).child(currentUID)
        // Set to NIL to delete the current node at that location
        likesRef.setValue(nil) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }

            // Our success callback returns a Bool on whether the network request was successfully executed and our like (userText) data was saved to the database.
            return success(true)
        }
    }


}
