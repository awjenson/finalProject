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

    // Option 1: Red, Green, Blue
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255

        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }

    // Option 2: Hex Color
    // rbgValue - define hex color value
    // alpha - define transparency value
    // returns - CGColor

    static func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
}
