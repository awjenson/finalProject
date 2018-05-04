//
//  Constants.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/13/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct Constants {

    struct Segue {
        static let subscribeSegue = "subscribeSegue"
    }

    // MARK: UserDefaults
    
    struct UserDefaults {
        static let currentUser = "currentUser"
        static let uid = "uid"
        static let username = "username"
    }

    // MARK: NotificationKeys

    struct NotificationKeys {
        static let SignedIn = "onSignInCompleted"
    }

    struct DbChild {
        static let Messages = "Messages"
        static let ProfileUserData = "ProfileUserData"

    }

    struct Message {
        static let Sender = "Sender"
        static let Text = "Text"
        static let TimeStamp = "TimeStamp"
    }

    struct ProfileUserData {
        static let Sender = "Sender"
        static let DailyRoutine = "DailyRoutine"
        static let OneYearGoal = "OneYearGoal"
        static let LifetimeGoal = "LifetimeGoal"
        static let Vision = "Vision"
        static let TimeStamp = "TimeStamp"
    }

}
