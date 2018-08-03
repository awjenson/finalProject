//
//  NewLoginViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/15/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI
import FirebaseDatabase

// typealias created to avoid namespace conflicts for Xcode
// syntax: typealias aliasName = existingType
// FIRUser to refer to the FirebaseAuth.User type
typealias FIRUser = FirebaseAuth.User

class NewLoginViewController: UIViewController {

    /* To implement the AuthViewController, we'll need to:
    1. access the FUIAuth default auth UI singleton
    2. set the FUIAuth's singleton's delegate
    3. present the auth view controller
    4. implement FUIAuthDelegate protocol */

    @IBOutlet weak var signInSignUpButton: UIButton!

    // by default, the initial view controller of the Main.storyboard will be shown to users when the app is launched. we'll add code so when the app first launches it'll direct new users to our Login.storyboard. We'll need to add our logic with the AppDelegate's life cycle method application(_:didFinishLaunchingWithOptions:)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signInSignUpButtonTapped(_ sender: UIButton) {

        // GOAL: read data from the database to see if New or Existing User. 

        // get a ref to the currentUser that's logged into Firebase. We'll need the user uid to create the relative path to write to.
        // Check that the username has entered a username
        print("Login button tapped")
        // 1 - access the FUIAuth default auth UI singleton
        guard let authUI = FUIAuth.defaultAuthUI()
            else { return }

        // 2 - set FUIAuth's singleton delegate.
        // NOTE: Here we set NewLoginViewController to be a delegate of authUI, we confirm to the FUIAuthDelegate protocol below
        authUI.delegate = self
        // If you want to list another provider: PhoneNumber, Google
//        authUI.providers = [PhoneAuth(authUI: self.authUI!),]

        // 3 - present the auth view controller
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }

}
// FirebaseAuth doesn't help us much outside of providing an easy way to authenticate users.
// conform NewLoginViewController to the FUIAuthDelegate protocol
// each time you sign up or log into an existing accounts, the FUIAuthDelegate method authUI(_:didSignInWith:error:) will be called. This method's parameters are the FirebaseAuth user that was authenticated and/or an error that occurred
extension NewLoginViewController: FUIAuthDelegate {
    // FIRUser? used to refer to the FirebaseAuth.User type to avoid namespace conflicts
    // FIRUser? can be nil when there is no user currently logged in with Firebase.
    // After you present the authentication view and the user signs in, the result is returned to the FirebaseUI Auth delegate in the didSignInWithUser:error: method
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {

        if let error = error {
            print("ERROR: authUI")
            print(error.localizedDescription)
            return
        }

        // Handle user sign in / login
        // After the user is authenticated, we'll want to redirect the user to a different view controller depending on whether they are a new user or an existing user
        // 1. New users will be sent to choose their username
        // 2. Existing users will be sent to the now view controller that displays their feed

        // reading the user JSON object from our database if it exists

        // check that the FIRUser returned from authentication is not nil by unwrapping it. We guard this statement, because we cannot proceed further if the user is nil. We need the FIRUser object's uid property to build the relative path for the user at /users/#{uid}.
        guard let user = user
            else { return }

        UserService.readUser(forUID: user.uid) { (user) in
            if let user = user {
                // completion return data for user. handle existing user

                // SINGLETON: Once we receive the user from the database, we set the singleton with our custom setter method. After the singleton is set, it will remain in memory for the rest of the app's lifecycle. It will be accessible from any view controller with the following code: let user = User.current
                // Check UserDefaults
                // make use of the User.setCurrent method when an existing user logs in.
                User.setCurrent(user, writeToUserDefaults: true)
                print("EXISTING USER LOGGED IN: \(user.email)")

                let initialViewController = UIStoryboard.initialViewController(for: .main)
                self.view.window?.rootViewController = initialViewController
                self.view.window?.makeKeyAndVisible()
            } else {
                print("NEW USER SUCCESSFULLY LOGGED IN...")

                // create current user
                guard let firUser = Auth.auth().currentUser else {return}

                UserService.writeUser(firUser, completion: { (user) in
                    guard let user = user else {return}

                    // Check UserDefaults
                    User.setCurrent(user, writeToUserDefaults: true)
                    print("...CREATED new user: \(user.email)...")

                    // TODO:
                    // Setup inital Keystone habits
                    GoalItemService.writeKeystoneGoals(for: User.current, success: { (success) in

                        guard success == true else {return}

                        let initialViewController = UIStoryboard.initialViewController(for: .main)
                        self.view.window?.rootViewController = initialViewController
                        self.view.window?.makeKeyAndVisible()

                        print("... LEFT LOGIN PAGE TO GO TO NOW VC.")


                    })

                })

            } // end of '} else {'
        }
    }
}

