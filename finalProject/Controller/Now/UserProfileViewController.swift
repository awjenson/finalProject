//
//  UserProfileViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/11/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func dismissButton(_ sender: UIButton) {

        dismiss(animated: true, completion: nil)
    }


}
