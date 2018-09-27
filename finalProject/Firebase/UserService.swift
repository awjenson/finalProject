//
//  UserService.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/15/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import Foundation
import FirebaseAuth.FIRUser
import FirebaseDatabase

// The service struct will act as an intermediary for communicating between our app and Firebase.

struct UserService {

    /*
     To read data from the database, we need to implement the following steps:

     1. Build a DatabaseReference to the location you want to read from
     2. Use observe(_:with) or observeSingleEvent(of:with:) method of DatabaseReference to observe DataEventType.value events
     3. Handle the event callback that is passed a snapshot that contains all data at the location. When we retrieve data from Firebase, we receive a DataSnapshot object that contains the data we retrieved. We can now access the data through its value property

     - - - - -
     Data is read from the database by using observe(_:with) or observeSingleEvent(of:with:) method of DatabaseReference.

     observe(_:with) will create an object that continuously listens for an event type. Whenever an event happens, usually a change that's made to the data, the event callback will be triggered. With observe(_:with), the event callback can be triggered multiple times.

     observeSingleEvent(of:with:) will only trigger the event callback once. This is useful for reading data that only needs to be loaded once and isn't expected to change. For this tutorial we'll mainly focus on using observeSingleEvent(of:with:).
     */


    // MARK: - READ EXISTING USER

    /*
     After the user is authenticated, we'll want to redirect the user to a different view controller depending on whether they are a new user or an existing user:

     New users will be sent to choose their username
     Existing users will be sent to the now view controller that displays their feed
     To determine if the user is a new user, we'll need to have some way to retrieve previous data about the user.

     Build a DatabaseReference to the location you want to read from
     Use observe(_:with) or observeSingleEvent(of:with:) method of DatabaseReference to observe DataEventType.value events
     Handle the event callback that is passed a snapshot that contains all data at the location
     */

    static func readUser(forUID uid: String, completion: @escaping (User?) -> Void) {

        // construct a relative path to the reference of the user's information in our database.
        let ref = Database.database().reference().child(FirebaseConstants.DbChild.Users).child(uid)
        ref.observeSingleEvent(of: .value, with: { (snapshot) in

            // 2 handle snapshot containing data. If there is no data at the location read from, the value of the snapshot returned is nil.
            guard let user = User(snapshot: snapshot) else {
                // user is nil, this is a New user
                return completion(nil)
            }
            // user contains data, this is an Existing user
            completion(user)
        })
    }


    /*
     To write data to the database we'll need to implement the following steps:

     Build a DatabaseReference to the location you want to write to
     Use setValue or updateChildValues method of DatabaseReference to write data to the database

     We can write data to our database with setValue or updateChildValues methods. The setValue will write the data we give it at the specified location.

     One important note is that using setValue will overwrite any data already stored at the specified location, including any child nodes.

     The other method of writing data is using updateChildValues. The updateChildValues method will write data at the specified location without overwriting other existing values or child nodes.

     One capability of the updateChildValues method is the ability to simultaneously write specific children at multiple locations. We'll explore this concept later, but keep it in the back of your head for now.

     https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/handling-new-users
     */

    // MARK: - WRITE NEW USER

    // write to the database the first time a FIRUser is created at Login and a user JSON object will also be created for them within our database.
    
    static func writeUser(_ firUser: FIRUser, completion: @escaping (User?) -> Void) {

        print("Entered writeUser()")

        // MARK: - Create New User in Firebase

        // create a dictionary to store the username the user has provided inside our database
        // Can add more later
        let userAttrs = ["email": firUser.email]

        // specify a path for the location of where we want to store our data
        let ref = Database.database().reference().child(FirebaseConstants.DbChild.Users).child(firUser.uid)
        // write the data we want to store at the location
        ref.setValue(userAttrs) { (error, ref) in
            if let error = error {
                assertionFailure(error.localizedDescription)
                return completion(nil)
            }

            // read the user data we just wrote to the database and create a user from the snapshot
            ref.observeSingleEvent(of: .value, with: { (snapshot) in
                let user = User(snapshot: snapshot)
                completion(user)
            })
        }
    }

}

