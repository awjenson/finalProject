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
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func registerPressed(_ sender: AnyObject) {
        SVProgressHUD.show()

        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            // inside a 'callback' method (closure) which only gets called once the process of creating a users gets completd in the Firebase Authentication class.

            if error != nil {
                print(error!)
            } else {
                // success
                print("Registration succesful with Firebase")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToApp", sender: self)
            }
        }



    }


}
