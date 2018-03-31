//
//  RoundImage.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class RoundImage: UIImageView {


    override func layoutSubviews(){
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }

}

