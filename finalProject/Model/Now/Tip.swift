//
//  Tip.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/11/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class Tip {

    // MARK: Properties

    let header: String
    let title: String
    let body: String
    let sourceName: String
    let sourceURL: String?  // ?, in case URL doesn't work
    let doneType: String
    let buyURL: String? // ?, in case URL doesn't work

    // MARK: Initializer

    init(header: String, title: String, body: String, sourceName: String, sourceURL: String?, doneType: String, buyURL: String?) {

        self.header = header
        self.title = title
        self.body = body
        self.sourceName = sourceName
        self.sourceURL = sourceURL
        self.doneType = doneType
        self.buyURL = buyURL
    }
}




