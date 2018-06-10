//
//  UIColor+Conveinence.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//
// Source: http://www.codingexplorer.com/create-uicolor-swift/

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255

        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
