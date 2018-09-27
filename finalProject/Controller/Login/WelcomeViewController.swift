//
//  WelcomeViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/5/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// *** I may use this VC in the next version of my app.

// Security Rules:
// https://classroom.udacity.com/nanodegrees/nd003/parts/678d613a-7f60-4330-9aa3-8fc2e2be2b89/modules/0a581284-b899-4196-84bd-8c61184c8006/lessons/fce29016-a52a-4740-95fe-ccf0ab16710c/concepts/60c2664c-3419-4b96-a2cb-42865f29e89f

import UIKit
import Firebase
import FirebaseUI
//import FirebaseGoogleAuthUI
import SVProgressHUD

//class WelcomeViewController: UIViewController {
//
//    @IBOutlet weak var emailTextField: UITextField!
//    @IBOutlet weak var passwordTextField: UITextField!
//    @IBOutlet weak var loginButton: UIButton!
//    @IBOutlet weak var registerButton: UIButton!
//
//    fileprivate var _authHandle: AuthStateDidChangeListenerHandle!
//    var user: User?
//    var displayName = "Anonymous"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//
//
//
//
//
//    func disableUI() {
//        SVProgressHUD.show()
//        emailTextField.isEnabled = false
//        passwordTextField.isEnabled = false
//        loginButton.isEnabled = false
//        registerButton.isEnabled = false
//    }
//
//    func enableUI() {
//        emailTextField.isEnabled = true
//        emailTextField.text = ""
//        passwordTextField.isEnabled = true
//        passwordTextField.text = ""
//        loginButton.isEnabled = true
//        registerButton.isEnabled = true
//        SVProgressHUD.dismiss()
//    }
//
//
//    @IBAction func loginButtonTapped(_ sender: Any) {
//
//        disableUI()
//
//        guard let email = emailTextField.text, email != "" else {
//            createAlert(title: "Error", message: "Please enter your email address")
//            self.enableUI()
//            return
//        }
//        guard let password = passwordTextField.text, password != "" else {
//            createAlert(title: "Error", message: "Please enter your password")
//            self.enableUI()
//            return
//        }
//
//
//    }
//
//
//    @IBAction func registerButtonTapped(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "goToRegistration", sender: self)
//
//    }
//
//
//
//
//
//}

