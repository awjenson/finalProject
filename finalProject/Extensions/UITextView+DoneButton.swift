//
//  UITextView+DoneButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/5/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

// MARK: - Add keyboard Done button using UIToolbar

// Important: The inspectable will add a dropdown in the Interface Builder under the Attribute Inspector tab. Since the attribute inspector will be boolean, the options in the dropdown will be On/Off.
// Source: https://medium.com/theappspace/swift-add-keyboard-done-button-using-uitoolbar-c2bea50a12c7
extension UITextView{

    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }

    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default

        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))

        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()

        self.inputAccessoryView = doneToolbar
    }

    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}

