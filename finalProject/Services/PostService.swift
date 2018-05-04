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

    // TODO: Need to FIX

    static func create(for user: User) {

        /*
         // This is not the right link, but right tutorial (search back through this tutorial to find the relevant section)
         https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/firebase-router

        // 1 Create a reference to the current user. We'll need the user's UID to construct the location of where we'll store our post data in our database.
        let currentUser = User.current

        // 2 Initialize a new Post using the data passed in by the parameters.
        let post = Post(imageURL: user)

        // 3 Convert the new post object into a dictionary so that it can be written as JSON in our database. We haven't added this computed variable to our Post object yet so the compiler will throw an error right now.
        let dict = post.dictValue

        // 4 Construct the relative path to the location where we want to store the new post data. Notice that we're using the current user's UID as child nodes to keep track of which Post belongs to which user.
        // With the posts subtree, individual Post objects will be grouped by user UIDs that will identify the poster of each subset of posts. This tree structure allows us to quickly retrieve any user's JSON object from Firebase, without automatically retrieving their posts as well.

        // OLD CODE (ref)
        let ref = Database.database().reference().child("posts").child(currentUser.uid).childByAutoId()


        // NEW CODE (ref)
        let ref = DatabaseReference.toLocation(.posts(uid: user.uid))

        
        //5 Write the data to the specified location
        ref.updateChildValues(dict)

        */
    }
}
