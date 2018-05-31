//
//  MessageItemService.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/26/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import FirebaseDatabase // Used to be Firebase but switched to FirebaseDatabase

struct MessageItemService {

    static func writeMessage(for user: User, message: MessageItem, success: @escaping (Bool) -> Void) {
        let ref = DatabaseReference.toLocation(.writeMessage(uid: user.uid))
        ref.setValue(message.toAnyObject()) { (error, _) in
            if let error = error {
                print("ERROR: MessageItemService.writeMessage")
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }
    }

    static func readMessagesLastTen(for user: User, completion: @escaping ([MessageItem]) -> Void) {


        let ref = DatabaseReference.toLocation(.readMessages(uid: user.uid))
        ref.queryLimited(toLast: 10).observe(.value) { (snapshot) in

            // Create message array that will be sent to VC and displayed in table view
            var retrievedMessagesLastTen: [MessageItem] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot, let messageItem = MessageItem(snapshot: snapshot) {
                    retrievedMessagesLastTen.append(messageItem)
                }
            } //end of for loop
            // for loop complete, now pass newItems in closure
            completion(retrievedMessagesLastTen)
        }
    }

    static func readMessagesAll(for user: User, completion: @escaping ([MessageItem]) -> Void) {
        let ref = DatabaseReference.toLocation(.readMessages(uid: user.uid))
        ref.observe(.value) { (snapshot) in

            // Create message array that will be sent to VC and displayed in table view
            var retrievedMessagesAll: [MessageItem] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot, let messageItem = MessageItem(snapshot: snapshot) {
                    retrievedMessagesAll.append(messageItem)
                }
            } // end of for loop
            // for loop complete, pass newItems in closure
            completion(retrievedMessagesAll)
        }
    }
}
