//
//  BottomCornersRoundedView.swift
//  finalProject
//
//  Created by Andrew Jenson on 1/21/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit

class BottomCornersRoundedView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }

    func initView() {

        clipsToBounds = true
        layer.cornerRadius = 30
        layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner] //bottom
    }

}
