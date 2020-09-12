//
//  RoundedOvalButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/16/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundedOvalButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }

    func initButton() {



        // Shadow and Radius
//        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
//        layer.shadowOffset = CGSize(width: 0.0, height: 1.5)
//        layer.shadowOpacity = 0.9
//        layer.shadowRadius = 0.8
//        layer.masksToBounds = false

        clipsToBounds = true
        layer.cornerRadius = layer.frame.height / 2
        setTitleColor(UIColor.systemGray, for: .normal)
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.systemGray.cgColor
        backgroundColor = UIColor.clear




//        layer.shadowColor = UIColor.lightGray.cgColor
//        layer.shadowOpacity = 1
//        layer.shadowOffset = CGSize(width: 1, height: 1)
//        layer.shadowRadius = 2

//            layer.borderColor = UIColor.lightGray.cgColor
//            layer.borderWidth = 0.05



//        layer.borderColor = UIColor.init(red: 0, green: 122/255, blue: 255, alpha: 1).cgColor
//        backgroundColor = UIColor.init(red: 0, green: 122/255, blue: 255, alpha: 1)

    }

}
