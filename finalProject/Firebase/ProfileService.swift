//
//  ProfileService.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/26/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct ProfileService {

    // Retrieve only one ProfileItem
    static func readProfileItemAll(for user: User, completion: @escaping (ProfileItem) -> Void) {
        let ref = DatabaseReference.toLocation(.readProfileItem(uid: user.uid))
        ref.queryLimited(toLast: 1).observe(.childAdded) { (snapshot) in

            if snapshot.exists(),
                let retrievedProfileItem = ProfileItem(snapshot: snapshot) {

                completion(retrievedProfileItem)
            }
            print("ERROR: ProfileService.readProfileItemAll: \(snapshot)")
        }
    }

    static func readProfileItemLastOne(for user: User, completion: @escaping (ProfileItem) -> Void) {
        let ref = DatabaseReference.toLocation(.readProfileItem(uid: user.uid))
        ref.queryLimited(toLast: 1).observe(.childAdded) { (snapshot) in

            if snapshot.exists(),
                let retrievedProfileItem = ProfileItem(snapshot: snapshot)  {

                completion(retrievedProfileItem)
            }
            print("ERROR: ProfileService.readProfileItemLastOne: \(snapshot)")
        }
    }

    static func writeProfileItem(for user: User, profileItem: ProfileItem, success: @escaping (Bool) -> Void) {
        let ref = DatabaseReference.toLocation(.writeProfileItem(uid: user.uid))
        ref.setValue(profileItem.toAnyObject()) { (error, _) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                success(false)
            }
            success(true)
        }
    }


}
