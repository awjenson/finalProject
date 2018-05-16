//
//  EditButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/14/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// https://www.youtube.com/watch?v=14rwyDsFma8

import UIKit

class EditButton: UIButton {

    // initially set to false
    var isOn = false

    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }

    // This is where we'll do all the initial setup of our button
    // Example: color, corner radius, boarder
    func initButton() {
//        setTitle("EDITX", for: .normal)

        // Add target when the button is pressed
        addTarget(self, action: #selector(EditButton.buttonPressed), for: .touchUpInside)
    }

    // What happens when we press the button (#selector requires this to start with @objc
    @objc func buttonPressed() {
        // oppositve of status of button
        activateButton(bool: !isOn)
    }

    // Real magic, toggles button on/off
    func activateButton(bool: Bool) {
        isOn = bool
        let title = bool ? "SAVEX" : "EDITX"

        // set button attributes
        setTitle(title, for: .normal)


    }


}


