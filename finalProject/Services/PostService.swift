//
//  PostService.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/24/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth.FIRUser

struct PostService {

    // create a static method within our new service for creating a Post from an image:

    // Udacity Forum: make nodes for each type of post (Goals, Vision, Mantra)
    
    static func create(for text: String) {

        // 1 Create a reference to the current user. We'll need the user's UID to construct the location of where we'll store our post data in our database.
        let currentUser = User.current

        // 2 Initialize a new Post using the data passed in by the parameters.
        let post = Post(imageURL: text)

        // 3 Convert the new post object into a dictionary so that it can be written as JSON in our database. We haven't added this computed variable to our Post object yet so the compiler will throw an error right now.
        let dict = post.dictValue

        // 4 Construct the relative path to the location where we want to store the new post data. Notice that we're using the current user's UID as child nodes to keep track of which Post belongs to which user.
        // With the posts subtree, individual Post objects will be grouped by user UIDs that will identify the poster of each subset of posts. This tree structure allows us to quickly retrieve any user's JSON object from Firebase, without automatically retrieving their posts as well.
        let postRef = Database.database().reference().child("posts").child(currentUser.uid).childByAutoId()
        
        //5 Write the data to the specified location
        postRef.updateChildValues(dict)
    }
}
