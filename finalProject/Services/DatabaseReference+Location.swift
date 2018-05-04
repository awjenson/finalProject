//
//  DatabaseReference+Location.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

/*
 Source:
 https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/firebase-router

 In this extension, we learned about using associated types on enums to build an enum router for our Firebase database. Using our router, we're able to make APIs to easily add, reuse and modify for future locations in our database. As part of good architecture, we're able to make our code modular and reusable!
 */

import Foundation
import FirebaseDatabase

extension DatabaseReference {
    enum RouterLocation {
        case root

        case posts(uid: String)
        case showPost(uid: String, postKey: String)
        case newPost(currentUID: String)

        case users
        case showUser(uid: String)
        case timeline(uid: String)

        case followers(uid: String)

        case likes(postKey: String, currentUID: String)
        case isLiked(postKey: String)
        case likesCount(posterUID: String, postKey: String)

        func asDatabaseReference() -> DatabaseReference {
            let root = Database.database().reference()

            switch self {
            case .root:
                return root

            case .posts(let uid):
                return root.child("posts").child(uid)

            case let .showPost(uid, postKey):
                return root.child("posts").child(uid).child(postKey)

            case .newPost(let currentUID):
                return root.child("posts").child(currentUID).childByAutoId()

            case .users:
                return root.child("users")

            case .showUser(let uid):
                return root.child("users").child(uid)

            case .timeline(let uid):
                return root.child("timeline").child(uid)

            case .followers(let uid):
                return root.child("followers").child(uid)

            case let .likes(postKey, currentUID):
                return root.child("postLikes").child(postKey).child(currentUID)

            case .isLiked(let postKey):
                return root.child("postLikes/\(postKey)")

            case let .likesCount(posterUID, postKey):
                return root.child("posts").child(posterUID).child(postKey).child("likes_count")
            }
        }
    }

    static func toLocation(_ location: RouterLocation) -> DatabaseReference {
        return location.asDatabaseReference()
    }
}


