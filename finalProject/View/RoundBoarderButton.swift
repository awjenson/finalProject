//
//  RoundBoarderButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/29/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundBoarderButton: UIButton {

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
        layer.cornerRadius = 12
//        layer.borderWidth = 1.4
//        layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2.6)
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 0.75
        layer.masksToBounds = false
    }

    func setTitleWithOutAnimation(title: String?) {
        UIView.setAnimationsEnabled(false)

        setTitle(title, for: .normal)

        layoutIfNeeded()
        UIView.setAnimationsEnabled(true)
    }

}

