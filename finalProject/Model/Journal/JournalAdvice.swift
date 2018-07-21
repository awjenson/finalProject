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
    var quoteSource: String
    var tip: String
    var tipSource: String
    var mediaTitle: String
    var url: String?

    init(quote: String, quoteSource: String, tip: String, tipSource: String, mediaTitle: String, url: String?) {

        self.quote = quote
        self.quoteSource = quoteSource
        self.tip = tip
        self.tipSource = tipSource
        self.mediaTitle = mediaTitle
        self.url = url

    }

    
}
