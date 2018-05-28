//
//  GoalItemService.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import FirebaseDatabase // changed from Firebase to FirebaseDatabase

struct GoalItemService {

    static func writeGoal(for user: User, goal: GoalItem, success: @escaping (Bool) -> Void) {
        let ref = DatabaseReference.toLocation(.writeGoal(uid: user.uid))

        ref.setValue(goal.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }
    }

    static func deleteGoal(for user: User, goal: GoalItem, success: @escaping (Bool) -> Void) {
        goal.ref?.removeValue() { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }
    }

    static func readGoals(for user: User, completion: @escaping ([GoalItem]) -> Void) {
        let ref = DatabaseReference.toLocation(.readGoals(uid: user.uid))
        ref.observe(.value) { (snapshot) in

            var newItems: [GoalItem] = []

            // Create goals array that will display in table view
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot, let goalItem = GoalItem(snapshot: snapshot) {
                    newItems.append(goalItem)
                }
            } // end of for-loop
            // end of for-loop, now pass newItems in closure
            completion(newItems)
        }
    }

}
