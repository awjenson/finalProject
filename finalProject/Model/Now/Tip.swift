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

    var isChecked: Bool = false

    let header: String
    let title: String
    let body: String
    let sourceName: String
    let sourceURL: String?  // ?, in case URL doesn't work
    let doneType: Bool
    let doneKey: String
    let buyURL: String? // ?, in case URL doesn't work

    // MARK: Initializer

    init(header: String, title: String, body: String, sourceName: String, sourceURL: String?, doneBool: Bool, doneKey: String, buyURL: String?) {

        self.header = header
        self.title = title
        self.body = body
        self.sourceName = sourceName
        self.sourceURL = sourceURL
        self.doneType = doneBool
        self.doneKey = doneKey
        self.buyURL = buyURL
    }
}

//TEST
var test1 = Tip(header: "test1", title: "test2", body: "test3", sourceName: "test4", sourceURL: "test5", doneBool: true, doneKey: "", buyURL: "test6")


