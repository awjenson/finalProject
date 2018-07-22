//
//  JournalTip.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/22/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

class JournalTip {

    // MARK: Properties
    let title: String
    let body: String
    let sourceName: String
    let sourceURL: String?  // ?, in case URL doesn't work

    // MARK: Initializer

    init(title: String, body: String, sourceName: String, sourceURL: String?) {

        self.title = title
        self.body = body
        self.sourceName = sourceName
        self.sourceURL = sourceURL
    }
}
