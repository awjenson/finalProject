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
    let sponsorLogo: String
    let sponsorURL: String? // ?, in case URL doesn't work

    // MARK: Initializer

    init(header: String, title: String, body: String, sourceName: String, sourceURL: String?, sponsorLogo: String, sponsorURL: String?) {

        self.header = header
        self.title = title
        self.body = body
        self.sourceName = sourceName
        self.sourceURL = sourceURL
        self.sponsorLogo = sponsorLogo
        self.sponsorURL = sponsorURL
    }
}




