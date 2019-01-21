//
//  Thread+Extension.swift
//  finalProject
//
//  Created by Andrew Jenson on 1/6/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import Foundation

// Check if on the main thread
extension Thread {
    class func printCurrent() {
        print("\r⚡️: \(Thread.current)\r" + "🏭: \(OperationQueue.current?.underlyingQueue?.label ?? "None")\r")
    }
}
