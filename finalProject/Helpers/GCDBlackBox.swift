//
//  GCDBlackBox.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/3/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation

// Accessing the main queue from any other queue
// Upon call you specify if it’s a synchronous or an asynchronous execution
func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}
