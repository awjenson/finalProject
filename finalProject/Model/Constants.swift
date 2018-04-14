//
//  Constants.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/13/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct Constants {

    // MARK: NotificationKeys

    struct NotificationKeys {
        static let SignedIn = "onSignInCompleted"
    }

    struct DbChild {
        static let Messages = "Messages"
    }

    struct Message {
        static let Sender = "Sender"
        static let MessageBody = "MessageBody"
        static let TimeStamp = "TimeStamp"
    }

}
