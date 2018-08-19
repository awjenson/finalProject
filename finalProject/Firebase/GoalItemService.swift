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

    static func writeKeystoneGoals(for user: User, success: @escaping (Bool) -> Void) {

        // MARK: - Create default keystone habits
        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy h:mm a"
        let currentDate = formatter.string(from: now)

        // REFs (UNIQUE KEYS)
        let ref0 = DatabaseReference.toLocation(.writeGoal(uid: user.uid))
        let ref1 = DatabaseReference.toLocation(.writeGoal(uid: user.uid))
        let ref2 = DatabaseReference.toLocation(.writeGoal(uid: user.uid))
        let ref3 = DatabaseReference.toLocation(.writeGoal(uid: user.uid))
        let ref4 = DatabaseReference.toLocation(.writeGoal(uid: user.uid))
        let ref5 = DatabaseReference.toLocation(.writeGoal(uid: user.uid))

        // Keystone habits
        let keystone0 = GoalItem(name: "🔑 Make Your Bed", why: "Making your bed is correlated with increased happiness, better productivity, and starts the day with a sense of accomplishment", timestamp: currentDate, count: 0)
        let keystone1 = GoalItem(name: "🔑 Practice Gratitude", why: "Gratitude is correlated with increased happiness and health and reduced depression and negative emotions", timestamp: currentDate, count: 0)
        let keystone2 = GoalItem(name: "🔑 Exercise 30+ Minutes", why: "Exercise is correlated with healthier eating, better mood, less stress, and more confidence", timestamp: currentDate, count: 0)
        let keystone3 = GoalItem(name: "🔑 Meditate/Sit in Silience 5+ Minutes", why: "Meditation is correlated with reduced anxiety and stress and increased memory and awareness", timestamp: currentDate, count: 0)
        let keystone4 = GoalItem(name: "🔑 Clean-up 3 Items At Home", why: "A cleaner home is correlated with healthier eating, more physical activity, less anxiety, and less depression", timestamp: currentDate, count: 0)
        let keystone5 = GoalItem(name: "🔑 Read 2+ Pages of a Book", why: "Reading is correlated with higher income and inteligence, lower stress, and longer life", timestamp: currentDate, count: 0)



        // WRITE KEYSTONE HABITS TO FIREBASE
        ref0.setValue(keystone0.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }

        ref1.setValue(keystone1.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }

        ref2.setValue(keystone2.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }

        ref3.setValue(keystone3.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }

        ref4.setValue(keystone4.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }

        ref5.setValue(keystone5.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return success(false)
            }
            return success(true)
        }
    }

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
