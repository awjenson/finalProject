//
//  MainTopic.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/9/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import Foundation

struct MainTopic {
    let title: String
    let subTitle: String
    let icon: String
    let topics: [Topic]

    init(title: String, subTitle: String, icon: String, topics: [Topic]) {
        self.title = title
        self.subTitle = subTitle
        self.icon = icon
        self.topics = topics
    }
}

// I want to pull the Now tips and 4 other Topic tips.
