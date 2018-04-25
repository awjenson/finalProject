//
//  NewRegisterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/20/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class NewRegisterViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerButtonTapped(_ sender: UIButton) {
        print("Register Button Tapped")

//        guard let firUser = Auth.auth().currentUser,
//            let username = emailTextField.text,
//            !username.isEmpty else { return }
//
//        UserService.createUser(firUser) { (user) in
//            guard let user = user else {
//                // handle error
//                return
//            }
//
//            print("Created new user: \(user.username)")
//
//            // set the current user and write to userDefaults
//            User.setCurrent(user, writeToUserDefaults: true)
//
//            // After creating a new user, we want to let the user into the main storyboard.
//            let initialViewController = UIStoryboard.initialViewController(for: .main)
//            self.view.window?.rootViewController = initialViewController
//            self.view.window?.makeKeyAndVisible()
//        }
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
