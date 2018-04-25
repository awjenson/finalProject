//
//  RegisterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/5/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {

    //Pre-linked IBOutlets

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var backButton: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func disableUI() {
        SVProgressHUD.show()
        nameTextField.isEnabled = false
        emailTextField.isEnabled = false
        passwordTextField.isEnabled = false
        registerButton.isEnabled = false
        backButton.isEnabled = false
    }

    func enableUI() {
        nameTextField.isEnabled = true
        nameTextField.text = ""
        emailTextField.isEnabled = true
        emailTextField.text = ""
        passwordTextField.isEnabled = true
        passwordTextField.text = ""
        registerButton.isEnabled = true
        backButton.isEnabled = true
        SVProgressHUD.dismiss()
    }


    @IBAction func registerButtonTapped(_ sender: UIButton) {

        disableUI()

        guard let name = nameTextField.text, name != "" else {
            print("email is empty")
            createAlert(title: "Error", message: "Please enter your first name")
            return
        }

        guard let email = emailTextField.text, email != "" else {
            print("email is empty")
            createAlert(title: "Error", message: "Please enter your email address")
            return
        }

        guard let password = passwordTextField.text, password != "" else {
            print("password is empty")
            createAlert(title: "Error", message: "Please enter your password that is at least 6 characters long.")
            return
        }

        //Create NEW user on our Firbase database
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            // inside a 'callback' method (closure) which only gets called once the process of creating a users gets completd in the Firebase Authentication class.

            guard error == nil else {
                print(error!)
                self.createAlert(title: "Error", message: error!.localizedDescription)
                return
            }
            guard let user = user else {return}

            print("Succes: Registration succesful with Firebase")
            print(user.email ?? "Firebase: MISSING EMAIL")
            print(user.uid)

            let changeRequest = user.createProfileChangeRequest()
            changeRequest.displayName = name
            changeRequest.commitChanges(completion: { (error) in
                guard error == nil else {
                    self.createAlert(title: "Error", message: error!.localizedDescription)
                    return
                }

                // Success
                print(user.displayName)
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToApp", sender: self)
            })
        }
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }



}
