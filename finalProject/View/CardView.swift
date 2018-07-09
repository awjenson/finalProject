//
//  CardView.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class CardView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initCardView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initCardView()
    }

    func initCardView() {
        layer.borderWidth = 0.5
        layer.cornerRadius = 4
        layer.borderColor = UIColor.gray.cgColor
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: -0.6, height: 1.2)
        layer.shadowRadius = 1
        backgroundColor = UIColor.white
    }

}
