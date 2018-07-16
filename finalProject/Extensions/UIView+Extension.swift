//
//  UIView+Extension.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/16/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

extension UIView {

    func fadeTransition(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            kCAMediaTimingFunctionEaseInEaseOut)
        animation.type = kCATransitionFade
        animation.duration = duration
        layer.add(animation, forKey: kCATransitionFade)
    }
}
