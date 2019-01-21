//
//  User.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/15/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// FirebaseDatabase.FIRDataSnapshot
// https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/managing-user-accounts
//import UIKit
////import FirebaseDatabase.FIRDataSnapshot // used in the failable initializer so we can add the DataSnapshot into our User model.
//
//// User class is app's user.
//
///*
// To persist authentication, we'll use UserDefaults to store our User singleton between sessions. We'll need to use NSKeyedArchiver to convert our class from type User to the Data type. To use NSKeyedArchiver to archive our User, we'll need for:
// 1. User must be a subclass NSObjec.
// 2. User must implement the NSCoding protocol
//
// Add the NSObject superclass to your User class. We'll also need to add super.init() to our initializers to be explicit about calling init from NSObject.  And implement the NSCoding protocol so the user object can properly be encoded as Data
// */
//
//// User is a subclass of NSObject in order to enable NSKeyedArchiver to archive our User using UserDefaults
//class User: NSObject {
//
//    // MARK: - Properties
//
//    let uid: String
//    let email: String
//
//    // MARK: - Initializers and UserDefaults
//
//    // What is a failable initializer?
//    // https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/managing-user-accounts
//    // If a user doesn't have a UID or a paidUser bool, we'll fail the initialization and return nil. This is useful for requiring the initialization to have key information.
//    // Here we guard by requiring the snapshot to be casted to a dictionary and checking that the dictionary contains username key/value. If either of these requirements fail, we return nil.
//    // Note that we also store the key property of DataSnapshot which is the UID that correlates with the user being initialized.
//    // This cleans up our code by creating a reusable initializer that we can use to create user objects from snapshots. In addition, we no longer have to fetch information directly from snapshots using stringly-typed key/value pairs.
//
//    // Failable initializers allow the initialization of an object to fail. If an initializer fails, it'll return nil instead. This is useful for requiring the initialization to have key information. In our case, if a user doesn't have a UID or a username, we'll fail the initialization and return nil.
////    init?(snapshot: DataSnapshot) {
////
////        // retrieve the data from the DataSnapshot using the value property. We unwrap and check that the type is what we're expecting it to be, in this case a dictionary.
////        guard let dict = snapshot.value as? [String : Any],
////            let email = dict["email"] as? String
////            else { return nil }
////
////        self.uid = snapshot.key
////        self.email = email
////
////        super.init()
////    }
//
//    init(uid: String, email: String) {
//        self.uid = uid
//        self.email = email
//
//        super.init()
//    }
//
//
//    // Required init?() allows users to conform to the NSCoding protocol and to be decoded from data.
//    required init?(coder aDecoder: NSCoder) {
//        guard let uid = aDecoder.decodeObject(forKey: Constants.UserDefaults.uid) as? String,
//            let email = aDecoder.decodeObject(forKey: Constants.UserDefaults.email) as? String
//            else { return nil }
//        print("email: \(email)")
//        self.uid = uid
//        self.email = email
//
//        super.init()
//    }
//
//
//    // MARK: - Singleton
//
//    // Now that we've created a User singleton, we need to make sure to set it. Once we receive the user from the database, we set the singleton with our custom setter method. After the singleton is set, it will remain in memory for the rest of the app's lifecycle. It will be accessible from any view controller
//
//    // 1 Create a private static variable to hold our current user. This method is private so it can't be access outside of this class.
//    private static var _current: User?
//
//    // 2 computed property
//    static var current: User {
//        // 3
//        guard let currentUser = _current else {
//            fatalError("Error: current user doesn't exist")
//        }
//
//        // 4
//        return currentUser
//    }
//
//    // MARK: - Class Methods, Storing Our Current User in User Defaults
//
//    // 5: create an option in our setCurrent(_:) method to persist the current user to UserDefaults.  We add another parameter that takes a Bool on whether the user should be written to UserDefaults. We give this value a default value of false.
//    class func setCurrent(_ user: User, writeToUserDefaults: Bool = false) {
//        // 2 We check if the boolean value for writeToUserDefaults is true. If true, we write the user object to UserDefaults.
//        if writeToUserDefaults {
//            // 3 We use NSKeyedArchiver to turn our user object into Data. We needed to implement the NSCoding protocol and inherit from NSObject to use NSKeyedArchiver.
//            let data = NSKeyedArchiver.archivedData(withRootObject: user)
//
//            // 4 We store the data for our current user with the correct key in UserDefaults.
//            UserDefaults.standard.set(data, forKey: Constants.UserDefaults.currentUser)
//            print("Wrote to UserDefaults complete")
//        }
//
//        _current = user
//    }
//}
//
//// For User Defaults: implement the NSCoding protocol so the user object can properly be encoded as Data.
//extension User: NSCoding {
//    func encode(with aCoder: NSCoder) {
//        aCoder.encode(uid, forKey: Constants.UserDefaults.uid)
//        aCoder.encode(email, forKey: Constants.UserDefaults.email)
//    }
//}


