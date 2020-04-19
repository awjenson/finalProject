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

//        if Auth.auth().currentUser == nil {
//            // There's no user logged in, so show the LoginViewController
//            // Take existing user to main storyboard
//            let initialViewController = UIStoryboard.initialViewController(for: .login)
//            self.view.window?.rootViewController = initialViewController
//            self.view.window?.makeKeyAndVisible()
//        } else {
//            // user is logged in
//            print("USER IS LOGGED IN")
//        }

        // selected VC to display
//        self.selectedIndex = 0

        let fontAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12.0)]
        UITabBarItem.appearance().setTitleTextAttributes(fontAttributes, for: .normal)

//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "FontName", size: 10)!], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "FontName", size: 10)!], for: .selected)


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
