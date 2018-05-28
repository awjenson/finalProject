//
//  InternetService.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/27/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import Firebase

// Unsure why this was displaying both "Not connected" and "Connected"

//struct InternetService {
//
//    static func checkConnection(completion: @escaping (Bool) -> Void){
//
//        let connectedRef = Database.database().reference(withPath: ".info/connected")
//        connectedRef.observe(.value, with: { snapshot in
//            if snapshot.value as? Bool ?? false {
//                print("Connected")
//                completion(true)
//            } else {
//                print("Not connected")
//                completion(false)
//            }
//        })
//    }
//}

