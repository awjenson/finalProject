//
//  JournalAdvice.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class JournalAdvice {

    // MARK: - Properties

    var quote: String
    var source: String
    var url: String?

    init(quote: String, source: String, url: String?) {

        self.quote = quote
        self.source = source
        self.url = url
    }

    
}
