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
    var question: String?
    var description: String
    var time: String
    var url: String?

    init(quote: String, source: String, question: String?, description: String, time: String, url: String?) {

        self.quote = quote
        self.source = source
        self.question = question
        self.description = description
        self.time = time
        self.url = url

    }

    
}
