//
//  Header.swift
//  finalProject
//
//  Created by Andrew Jenson on 12/18/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

// Similar to Topic
struct Header {
    let title: String
    let quote: Quote
    let hints: [Hint] //Similar to [Tip]

    init(title: String, quote: Quote, hints: [Hint]) {
        self.title = title
        self.quote = quote
        self.hints = hints
    }
}
