//
//  RoundButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    var isOn = false

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
        layer.cornerRadius = frame.size.height/2

//        layer.borderColor = UIColor.darkGray.cgColor
//        layer.borderWidth = 1.0
        clipsToBounds = true
//        addTarget(self, action: #selector(RoundButton.buttionPressed), for: .touchUpInside)
    }

    @objc func buttionPressed() {
//        activateButton(iconText: , bool: !isOn)
    }

    func activateButton(iconText: String, bool: Bool) {
        isOn = bool

        let color = bool ? Colors.twitterBlue : .clear
        let title = bool ? iconText : "Xy"
        let titleColor = bool ? Colors.twitterBlue : .white

        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }



    let SHADOW_GRAY: CGFloat = 120.0 / 255.0

    override func awakeFromNib() {
        super.awakeFromNib()

        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0 // how far the shadow spans out
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        imageView?.contentMode = .scaleAspectFit

    }

    // Round Button
    override func layoutSubviews() {
        super.layoutSubviews()

        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }




}
