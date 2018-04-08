//
//  ProfileStatement.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/7/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

struct ProfileStatement {
    var sender: String = ""
    var statement: String = ""

    init(sender: String, statement: String) {
        self.sender = sender
        self.statement = statement
    }
}
