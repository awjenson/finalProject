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

        // Multiple lines
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.numberOfLines = 2 // if you want unlimited number of lines put 0
        titleLabel?.textAlignment = .center

        // UI
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowOpacity = 0.9
        layer.shadowRadius = 4
        layer.masksToBounds = false
        layer.cornerRadius = 6
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
        setTitleColor(UIColor.black, for: .normal)
        backgroundColor = UIColor(white: 1, alpha: 0.975)


    }

}
