//
//  Topic.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/22/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct Topic {
    let title: String
    let icon: String
    let tip: [Tip] // TODO: re-name as 'tips' (plural)

    init(title: String, icon: String, tip: [Tip]) {
        self.title = title
        self.icon = icon
        self.tip = tip
    }
}

// I want to pull the Now tips and 4 other Topic tips. 

