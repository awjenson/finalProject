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
        static let Button3 = "Grateful"
        static let Button4 = "Good"
        static let Button5 = "Mad!"
        static let Button6 = "Stressed"
        static let Button7 = "Numb"
        static let Button8 = "Motivated"
        static let Button9 = "Happy!"
    }

}
