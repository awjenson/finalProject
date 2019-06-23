//
//  CircleButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/6/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit

class CircleButton: UIButton {

    var isOn = false //originally set to false

    //allow for customization of UIButton
    override init(frame: CGRect) {
        super.init(frame: frame)
        //setup button
        initButton()
    }
    //allow for customization of UIButton
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //setup button
        initButton()
    }

    //setup UI of button (color, corner radius...)
    func initButton() {

//        frame = CGRect(x: 50, y: 50, width: 10, height: 10)
//        frame.size.width = frame.size.height
        layer.cornerRadius = frame.size.width/2
        clipsToBounds = true



//        layer.masksToBounds = true
        imageEdgeInsets = UIEdgeInsets(top: 15, left: 15 , bottom: 15, right: 15)
        imageView?.contentMode = .scaleAspectFit


        addTarget(self, action: #selector(CircleButton.buttonPressed), for: .touchUpInside)

    }

    //what happens when the button is pressed
    @objc func buttonPressed() {
        activateButton(bool: !isOn)//! == opposite

    }

    //toggle
    func activateButton(bool: Bool) {
        isOn = bool //flip our isOn boolean
    }



}
