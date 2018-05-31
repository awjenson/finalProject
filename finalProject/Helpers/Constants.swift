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
        static let Button1 = "Inferior"
        static let Button2 = "Depressed"
        static let Button3 = "Bored"
        static let Button4 = "Relaxed"
        static let Button5 = "Good"
        static let Button6 = "Mad!"
        static let Button7 = "Helpless"
        static let Button8 = "Stressed"
        static let Button9 = "Numb"
        static let Button10 = "Motivated!"
        static let Button11 = "Happy!"
    }

}
