//
//  RoundCorneredButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/1/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundCorneredButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }

    func initButton() {
        //        layer.borderWidth = 2.0
        layer.cornerRadius = 12

        //        layer.borderColor = UIColor.darkGray.cgColor
        //        layer.borderWidth = 1.0
        clipsToBounds = true

        layer.borderWidth = 1.0
        layer.borderColor = UIColor.init(red: 0, green: 122/255, blue: 255, alpha: 1).cgColor
        backgroundColor = UIColor.init(red: 0, green: 122/255, blue: 255, alpha: 0.05)



    }

}
