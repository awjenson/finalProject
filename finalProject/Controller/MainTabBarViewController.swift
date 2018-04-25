//
//  MainTabBarViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainTabBarViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()

        if Auth.auth().currentUser == nil {
            // There's no user logged in, so show the LoginViewController
            // Take existing user to main storyboard
            let initialViewController = UIStoryboard.initialViewController(for: .login)
            self.view.window?.rootViewController = initialViewController
            self.view.window?.makeKeyAndVisible()
        } else {
            // user is logged in
            print("ENTER USER LOGGED IN")

        }




        self.selectedIndex = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
