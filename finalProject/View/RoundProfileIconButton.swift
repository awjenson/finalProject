//
//  RoundProfileIconButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/11/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundProfileIconButton: UIButton {

        // Round Button
        override func layoutSubviews() {
            super.layoutSubviews()

            imageView?.alpha = 0.25

            layer.borderColor = UIColor.init(complementaryFlatColorOf: UIColor.lightGray, withAlpha: 0.5)?.cgColor
            layer.borderWidth = 2

            layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.2
            layer.shadowRadius = 0.75

            layer.cornerRadius = self.frame.width / 2
            clipsToBounds = true
        }

}
