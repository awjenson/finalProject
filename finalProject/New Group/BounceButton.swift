//
//  BounceButton.swift
//  finalProject
//
//  Created by Andrew Jenson on 8/21/21.
//  Copyright © 2021 Andrew Jenson. All rights reserved.
//

import UIKit

//YouTube Tutorial: https://www.youtube.com/watch?v=jWobdUlUWQ0
//Animating UIButton Clicks Tutorial (iOS, Xcode 8, Swift 3)
class BounceButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */



    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        doneButtontapped()

        //animate when user touches button
        //self below means UIButton
        //1.0 is the original size
        //1.1 = 1.1 bigger

        let emojiArray = ["🎉", "👏", "💪", "🚀", "🔥",]
        let selectedEmoji = emojiArray.random()


        self.setTitle(selectedEmoji, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 34)

        self.transform = CGAffineTransform(scaleX: 10, y: 10)
        self.transform = CGAffineTransform(translationX: 0, y: -15)

        UIView.animate(withDuration: 0.075, delay: 0, usingSpringWithDamping: 10, initialSpringVelocity: 10, options: .allowUserInteraction, animations: {

            self.transform = CGAffineTransform.identity //reset to default size

            }, completion: {_ in

            //reset to original button style
                self.titleLabel?.font = UIFont.systemFont(ofSize: 24)
            self.setTitle("☑︎", for: .normal)
            }
        )

        //remove override func above and return back to default functionality
        super.touchesBegan(touches, with: event)
    }

    //https://www.hackingwithswift.com/example-code/uikit/how-to-generate-haptic-feedback-with-uifeedbackgenerator
    @objc func doneButtontapped() {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }

}
