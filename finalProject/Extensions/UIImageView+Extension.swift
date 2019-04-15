//
//  UIImageView+Extension.swift
//  finalProject
//
//  Created by Andrew Jenson on 1/31/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit

let imageCache = NSCache<NSString, UIImage>()

class CustomImageView: UIImageView {

    var imageString: String?

    func loadImageUsingString(_ string: String) {

        imageString = string

        image = nil

        if let imageFromCache = imageCache.object(forKey: string as NSString) {
            self.image = imageFromCache
            return
        }

        DispatchQueue.main.async(execute: {



            //cache image
            let imageToCache = UIImage(named: string)

            if self.imageString == string {

                self.image = imageToCache
            }
            print("***\(imageToCache)")

            imageCache.setObject(imageToCache!, forKey: string as NSString)
        })

    }

}
