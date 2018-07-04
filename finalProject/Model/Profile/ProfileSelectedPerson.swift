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
    var description: String
    var time: String
    var url: String?

    init(name: String, bio: String, advice: String, description: String, time: String, url: String?) {
        self.name = name
        self.bio = bio
        self.advice = advice
        self.description = description
        self.time = time
        self.url = url
    }
}

