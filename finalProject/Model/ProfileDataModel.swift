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
    var title: String
    var body: String
    var url: String?
    var headerUserTextLabel: String
//    var userInput: ProfileStatement

    init(category: String, title: String, body: String, url: String, headerUserTextLabel: String) {
        self.category = category
        self.title = title
        self.body = body
        self.url = url
        self.headerUserTextLabel = headerUserTextLabel
//        self.userInput = userInput
    }
}
