//
//  UserInfoViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase

/*

 Could create UI that allows users to follow filtered information based on interests and preferences.

    Example, you could follow male health tips or quotes from a specfic book or quotes from a successful athlete, muscian, actor, business leader

 https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/setting-followers

 */

class UserInfoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    fileprivate var _authHandle: AuthStateDidChangeListenerHandle!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let name = Auth.auth().currentUser?.displayName else {return}
        nameLabel.text = "Hello \(name)"

        // Do any additional setup after loading the view.
    }


    @IBAction func dismissButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


    @IBAction func logOutButtonTapped(_ sender: Any) {

        // Logout and send the user back to the Welcome View Controller
        // signOut is a function that throws an error so put it inside a do try catch.

        do  {
            try Auth.auth().signOut()

//            performSegue(withIdentifier: "LogoutSegue", sender: self)

            let initialViewController = UIStoryboard.initialViewController(for: .login)
            self.view.window?.rootViewController = initialViewController
            self.view.window?.makeKeyAndVisible()
        } catch {
            print(error)
            // TODO: Update UILabel for user to know there was an error
            createAlert(title: "Error", message: error.localizedDescription)
        }

        
    }

    

}
