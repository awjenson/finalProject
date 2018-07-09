//
//  Constants.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/13/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct Constants {

    struct Now {
        static let selectedIconDisplay = "X"
    }

    struct Segue {
        static let subscribeSegue = "subscribeSegue"
    }

    // MARK: UserDefaults
    
    struct UserDefaults {
        static let currentUser = "currentUser"
        static let uid = "uid"
        static let email = "email"
    }

    // MARK: NotificationKeys

    struct NotificationKeys {
        static let SignedIn = "onSignInCompleted"
    }

    // Journal

    struct SelectedMood {
        static let Button0 = "Sad"
        static let Button1 = "Depressed"
        static let Button2 = "Bored"
        static let Button3 = "Good"
        static let Button4 = "Grateful"

        static let Button5 = "Mad!"
        static let Button6 = "Stressed"
        static let Button7 = "Anxious"
        static let Button8 = "Motivated"
        static let Button9 = "Happy!"

        static let Button10 = "Lonely"
        static let Button11 = "Jealous"
        static let Button12 = "Tired"
        static let Button13 = "Proud"
        static let Button14 = "Love"
    }

}
