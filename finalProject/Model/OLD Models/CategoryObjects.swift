//
//  CategoryObjects.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/13/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct CategoryObjects {
    var sectionName: String!
    var sectionObjects: [Tip]!

    init(sectionName: String, sectionObjects: [Tip]) {
        self.sectionName = sectionName
        self.sectionObjects = sectionObjects
    }
}
