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

        //Rounded Card with Shadows
        //https://www.refactorstudios.com/blog/corners-borders-shadows-oh-my

        layer.borderWidth = 0.5
        layer.cornerRadius = 12
//        layer.borderColor = UIColor.gray.cgColor
        layer.borderColor = UIColor.gray.cgColor.copy(alpha: 0.5)

        
    }

}
