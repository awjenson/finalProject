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
    let icon: String
    let hints: [Hint] //Similar to [Tip]

    init(title: String, icon: String, quote: Quote, hints: [Hint]) {
        self.title = title
        self.icon = icon
        self.quote = quote
        self.hints = hints
    }
}
