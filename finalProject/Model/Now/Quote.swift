//
//  JournalQuote.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/22/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

class Quote {

    // MARK: - Properties

    let quote: String
    let source: String
    let bio: String


    init(quote: String, source: String, bio: String) {
        self.quote = quote
        self.source = source
        self.bio = bio
    }
}
