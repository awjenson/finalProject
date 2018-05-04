//
//  ProfileDataModel.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class ProfileDataModel {

// ProfileStatement is Dictionary that retrives value data based on key name (vision).

    var category: String
    var adviceText: String
    var adviceAuthor: String
    var adviceURL: String?
    var userInput: ProfileUserData

    init(category: String, adviceText: String, adviceAuthor: String, adviceURL: String, userInput: ProfileUserData) {
        self.category = category
        self.adviceText = adviceText
        self.adviceAuthor = adviceAuthor
        self.adviceURL = adviceURL
        self.userInput = userInput
    }
}
