//
//  MainTabBarViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

// Managing View Controllers With Container View Controllers
// Source: https://cocoacasts.com/managing-view-controllers-with-container-view-controllers/

// Container View Controllers
// Source: https://useyourloaf.com/blog/container-view-controllers/

class MainTabBarViewController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()

        let fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12.0)]
        UITabBarItem.appearance().setTitleTextAttributes(fontAttributes, for: .normal)
    }

    //https://stackoverflow.com/questions/3520049/uitabbaritem-icon-animation

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {

        let index = self.tabBar.items?.index(of: item)
        let subView = tabBar.subviews[index!+1].subviews.first as! UIImageView
        self.performSpringAnimation(imgView: subView)
    }

    //func to perform spring animation on imageview
    func performSpringAnimation(imgView: UIImageView) {

        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {

            imgView.transform = CGAffineTransform.init(scaleX: 1.4, y: 1.4)

            //reducing the size
            UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {
                imgView.transform = CGAffineTransform.init(scaleX: 1, y: 1)
            }) { (flag) in
            }
        }) { (flag) in
        }
    }
}
