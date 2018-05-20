//
//  EditUserTextViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/18/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

protocol PassTextDelegate {
    func send(text: String, toArray atIndex: Int)
}

class EditUserTextViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!

    var selectedText: String?
    var selectedTitle: String?
    var selectedIndex: Int?

    var editUserTextDelegate: PassTextDelegate?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(selectedIndex!)

//            print("text: \(selectedText!)")
//        editUserTextDelegate?.send(text: selectedText!, toArray: selectedIndex!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedTitle
        textView.text = selectedText
        textView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)

        // What we want to pass back to initial VC
        editUserTextDelegate?.send(text: textView.text, toArray: selectedIndex!)

    }




    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
