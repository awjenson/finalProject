//
//  RoundedSquareButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/16/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundedSquareButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }

    func initButton() {
        //        layer.borderWidth = 0.5
//        clipsToBounds = true


        // Shadow and Radius
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 1.5)
        layer.shadowOpacity = 0.9
        layer.shadowRadius = 0.0
        layer.masksToBounds = false
        layer.cornerRadius = 5.0


//        layer.shadowColor = UIColor.lightGray.cgColor
//        layer.shadowOpacity = 1
//        layer.shadowOffset = CGSize(width: 1, height: 1)
//        layer.shadowRadius = 2

//            layer.borderColor = UIColor.lightGray.cgColor
//            layer.borderWidth = 0.05



//        layer.borderColor = UIColor.init(red: 0, green: 122/255, blue: 255, alpha: 1).cgColor
//        backgroundColor = UIColor.init(red: 0, green: 122/255, blue: 255, alpha: 1)

        setTitleColor(UIColor.black, for: .normal)
        backgroundColor = UIColor(white: 1, alpha: 0.975)


    }

}
