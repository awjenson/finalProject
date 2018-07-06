//
//  KeyboardService.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/5/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class KeyboardService: NSObject {
    static var serviceSingleton = KeyboardService()
    var measuredSize: CGRect = CGRect.zero

    @objc class func keyboardHeight() -> CGFloat {
        let keyboardSize = KeyboardService.keyboardSize()
        return keyboardSize.size.height
    }

    @objc class func keyboardSize() -> CGRect {
        return serviceSingleton.measuredSize
    }

    private func observeKeyboardNotifications() {
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(self.keyboardChange), name: .UIKeyboardDidShow, object: nil)
    }

    private func observeKeyboard() {
        let textView = UITextView()
        UIApplication.shared.windows.first?.addSubview(textView)
        textView.becomeFirstResponder()
        textView.resignFirstResponder()
        textView.removeFromSuperview()
    }

    @objc private func keyboardChange(_ notification: Notification) {
        guard measuredSize == CGRect.zero, let info = notification.userInfo,
            let value = info[UIKeyboardFrameEndUserInfoKey] as? NSValue
            else { return }

        measuredSize = value.cgRectValue
    }

    override init() {
        super.init()
        observeKeyboardNotifications()
        observeKeyboard()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
