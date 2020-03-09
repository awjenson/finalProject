//
//  Array+Extension.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/1/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import Foundation

//Source: https://learnappmaking.com/random-numbers-swift/#array

extension Array
{
    func random() -> Element
    {
        return self[Int(arc4random_uniform(UInt32(self.count)))]
    }
}
