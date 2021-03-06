//
//  ShadowLabel.swift
//  finalProject
//
//  Created by Andrew Jenson on 7/17/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class ShadowLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initLabel()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initLabel()
    }

    func initLabel() {

        backgroundColor = UIColor.clear
        textColor = UIColor.white
        textAlignment = .center

        layer.shadowOffset = CGSize(width: 0.25, height: 0.25)
        layer.shadowOpacity = 5
        layer.shadowRadius = 10



    }

    func copyLabel() -> UILabel {
        let label = UILabel()
        label.font = self.font
        label.frame = self.frame
        label.text = self.text
        return label
    }

}

