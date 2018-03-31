//
//  Profile3DataModel.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class Profile3DataModel {

    var categoryHeader: String?
    var userDataInput: String?
    var quoteText: String?
    var quoteSource: String?
    var mediaImage: String?
    var mediaTitle: String?
    var mediaSource: String?

    init(categoryHeader: String, userDataInput: String, quoteText: String, quoteSource: String, mediaImage: String, mediaTitle: String, mediaSource: String) {
        self.categoryHeader = categoryHeader
        self.userDataInput = userDataInput
        self.quoteText = quoteText
        self.quoteSource = quoteSource
        self.mediaImage = mediaImage
        self.mediaTitle = mediaTitle
        self.mediaSource = mediaSource
    }
}
