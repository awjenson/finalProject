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

extension UITabBar {
    static func setTransparentTabbar() {
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().clipsToBounds = true
    }
}



class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate{


    var homeButtonSeleted = ""

    let layerGradient = CAGradientLayer()



    override func viewDidLoad() {
        super.viewDidLoad()

        print("MainTabController homeButtonSeleted: \(homeButtonSeleted)")

        //for tab bar delegate
        self.delegate = self

        let fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .semibold)]
        UITabBarItem.appearance().setTitleTextAttributes(fontAttributes, for: .normal)


//        UITabBar.setTransparentTabbar()
//        layerGradient.colors = [UIColor(complementaryFlatColorOf: .black, withAlpha: 0.6), UIColor(complementaryFlatColorOf: .black, withAlpha: 0.8)]
//        layerGradient.startPoint = CGPoint(x: 0.5, y: 0)
//        layerGradient.endPoint = CGPoint(x: 0.5, y: 1)
//        layerGradient.frame = CGRect(x: 0, y: 0, width: tabBar.bounds.width,height: 90)
//        self.tabBar.layer.addSublayer(layerGradient)



    }

    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor)  {
        layerGradient.colors = [colorOne, colorTwo]
        layerGradient.startPoint = CGPoint(x: 0.5, y: 0.0)
        layerGradient.endPoint = CGPoint(x: 0.5, y: 1.0)
//        layerGradient.locations = [0.0, 1.0]
        layerGradient.frame = self.tabBar.bounds
        self.tabBar.layer.addSublayer(layerGradient)
    }






    //https://stackoverflow.com/questions/3520049/uitabbaritem-icon-animation

//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//
//        let index = self.tabBar.items?.index(of: item)
//        let subView = tabBar.subviews[index!+1].subviews.first as! UIImageView
//        self.performSpringAnimation(imgView: subView)
//    }

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

    // UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Selected item")

        tapped()

    }

    //https://www.hackingwithswift.com/example-code/uikit/how-to-generate-haptic-feedback-with-uifeedbackgenerator
    @objc func tapped() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }

    // UITabBarControllerDelegate


}
