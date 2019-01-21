//
//  NewUserViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 9/20/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

///*
// WRITING A NEW USER TO OUR DATABASE
// https://www.makeschool.com/academy/track/build-ios-apps/build-a-photo-sharing-app/handling-new-users
// */
//
//class NewUserViewController: UIViewController {
//
//    @IBOutlet weak var goToAppButton: UIButton!
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    // MARK: - IBAction
//
//    @IBAction func goToAppButtonTapped(_ sender: Any) {
//
////        // create current user
////        // Get a reference to the current user that's logged into Firebase. We'll need the user uid to create the relative path to write to.
////        guard let firUser = Auth.auth().currentUser else {return}
////
////        // Write the dictionary at the specified location
////        UserService.writeUser(firUser, completion: { (user) in
////            guard let user = user else {return}
////
////            // Check UserDefaults
////            User.setCurrent(user, writeToUserDefaults: true)
////            print("...CREATED new user: \(user.email)...")
////
////
////            // Setup New User's Inital Keystone Habits
////            GoalItemService.writeKeystoneGoals(for: User.current, success: { (success) in
////
////                guard success == true else {return}
////
////                // go to main storyboard
////                let initialViewController = UIStoryboard.initialViewController(for: .main)
////                self.view.window?.rootViewController = initialViewController
////                self.view.window?.makeKeyAndVisible()
////
////                print("...GO TO 'NOW' VC.")
////
////            }) // GoalItemSerive.writeKeystoneGoals
////        }) // UserService.writeUser
//
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
