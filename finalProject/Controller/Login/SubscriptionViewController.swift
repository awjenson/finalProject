//
//  CreateUsernameViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/21/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class SubscriptionViewController: UIViewController {

    @IBOutlet weak var basicButton: UIButton!
    @IBOutlet weak var monthlyButton: UIButton!
    @IBOutlet weak var yearlyButton: UIButton!


    /*
     When a user taps a subscribe button we want the following to happen:

     1. Get a reference to the current user that's logged into Firebase. We'll need the user uid to create the relative path to write to.
     2. Check that the user has entered a username in the username text field.
     3. Create a reference to the location we want to store the data
     4. Create a dictionary of the data we want to store in our database
     5. Write the dictionary at the specified location
     6. Handle the success or failure of writing to the database
     */

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func subscribeButtonTapped(_ sender: UIButton) {

        /*
         When a user taps the next button we want the following to happen:

         1. Get a reference to the current user that's logged into Firebase. We'll need the user uid to create the relative path to write to.
         2. Check that the user has entered a username in the username text field.
         3. Create a reference to the location we want to store the data
         4. Create a dictionary of the data we want to store in our database
         5. Write the dictionary at the specified location
         6. Handle the success or failure of writing to the database
         */

//        let username: String
//
//        switch sender {
//        case basicButton:
//        // Basic
//            paidUser = false
//            print("Basic Button Tapped")
//        case monthlyButton:
//        // Monthly
//            paidUser = true
//            print("Monthly Button Tapped")
//        case yearlyButton:
//        // Yearly
//            paidUser = true
//            print("Yearly Button Tapped")
//        default:
//            print("Unknown button tapped")
//            return
//        }


        // guard to check that a FIRUser is logged in and that the user has provided a username in the text field.
        guard let firUser = Auth.auth().currentUser, let username = Auth.auth().currentUser?.displayName else { return }

        UserService.writeUser(firUser, username: username) { (user) in
            guard let user = user else {
                // handle error
                return
            }

            User.setCurrent(user, writeToUserDefaults: true)

            let initialViewController = UIStoryboard.initialViewController(for: .main)
            self.view.window?.rootViewController = initialViewController
            self.view.window?.makeKeyAndVisible()
        }
    }

}
