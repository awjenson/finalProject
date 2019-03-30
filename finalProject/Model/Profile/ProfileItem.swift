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
struct ProfileItem {

//    let ref: DatabaseReference? // not set until snapshot received from Firebase

    // Customize desired data to be stored/retrieved in/from Firebase
    let timestamp: String
    let passion: String
    let purpose: String
    let goals: String
    let fears: String

    init(timestamp: String, passion: String, purpose: String, goals: String, fears: String, key: String = "") {


        self.timestamp = timestamp
        self.passion = passion
        self.purpose = purpose
        self.goals = goals
        self.fears = fears
    }

 


}
