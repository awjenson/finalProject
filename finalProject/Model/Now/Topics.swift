//
//  Topics.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/16/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import Foundation

struct Topics {
    let title: String
    let icon: String
    let topics: [Topic] // TODO: re-name as 'tips' (plural)

    init(title: String, icon: String, topics: [Topic]) {
        self.title = title
        self.icon = icon
        self.topics = topics
    }
}
