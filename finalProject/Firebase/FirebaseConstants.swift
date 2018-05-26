//
//  FirebaseConstants.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct FirebaseConstants {

    struct DbChild {
        static let Messages = "Messages"
        static let GoalItems = "GoalItems"
        static let ProfileUserData = "ProfileUserData"
    }

    struct Message {
        static let Sender = "Sender"
        static let Text = "Text"
        static let TimeStamp = "TimeStamp"
    }

    struct GoalItem {
        static let Name = "Name"
        static let Count = "Count"
        static let TimeStamp = "TimeStamp"
        static let Color = "Color"
    }

    struct ProfileUserData {
        static let TimeStamp = "TimeStamp"
        static let Passion = "Passion"
        static let Purpose = "Purpose"
        static let Goals = "Goals"
        static let Fears = "Fears"
    }
}
