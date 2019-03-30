//
//  TopCornersRoundedView.swift
//  finalProject
//
//  Created by Andrew Jenson on 1/21/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit

class TopCornersRoundedView: UIView {

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
        layer.cornerRadius = 20
        layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]

        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: -5)
        layer.shadowOpacity = 0.08
        layer.shadowRadius = 0.5
        layer.masksToBounds = false

    }

}
