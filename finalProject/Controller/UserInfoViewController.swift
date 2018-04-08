//
//  UserInfoViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase

class UserInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func dismissButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


    @IBAction func logOutButtonTapped(_ sender: Any) {

        // Log out and send the user back to the Welcome View Controller
        do  {
            try Auth.auth().signOut()
        } catch {
            print("Error with Sign Out.")
            // TODO: Update UILabel for user to know there was an error
            self.dismiss(animated: true, completion: nil)
        }

        
    }

    

}
