//
//  ProfileSelectedPerson.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/10/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class ProfileSelectedPerson {

    var name: String
    var bio: String
    var advice: String
    var adviceURL: String?

    init(name: String, bio: String, advice: String, adviceURL: String) {
        self.name = name
        self.bio = bio
        self.advice = advice
        self.adviceURL = adviceURL
    }
}
