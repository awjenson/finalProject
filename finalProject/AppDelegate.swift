//
//  AppDelegate.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var nowVC: NowViewController?
    var adviceVC: ProfileViewController?
    var hobbyVC: HobbyViewController?
    var userInfoVC: UserInfoViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("didFinishLaunchingWithOptions")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("applicationWillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("applicationDidEnterBackground")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("applicationWillEnterForeground")

    }


    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("applicationDidBecomeActive")
        
        userInfoVC?.reloadViewFromNib()
        nowVC?.segueToIntroVC()
        adviceVC?.segueToIntroVC()
        hobbyVC?.segueToIntroVC()

    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("applicationWillTerminate")
    }
}

// MARK: - didFinishLaunchingWithOptions: UIStoryboard and UserDefaults

// Determine which Storyboard to display at launch by checking if the user is already logged in.  See AppDelegate extension (related to UserDefaults and keeping users logged in on launch)
// This calls "Refresh NOW table view" and calls the timeAndDay function in the NowViewController before we leave didFinishLaunchingWithOptions.
//        configureInitialRootViewController(for: window)


// Keeping Users Logged In on Launch
// Check UserDefaults for the currentUser key when the app first launches. If the the data exists, we'll know that the user has been previously authenticated and set the rootViewController accordingly.
// We need to add some logic that checks UserDefaults for the currentUser key when the app first launches. If the the data exists, we'll know that the user has been previously authenticated and set the rootViewController accordingly.
//extension AppDelegate {
//
//    func configureInitialRootViewController(for window: UIWindow?) {
//
//        // Create instances
//        let defaults = UserDefaults.standard
//        let initialViewController: UIViewController
//
//        if UserDefaults.standard.bool(forKey: Constants.UserDefaults.currentUser) != true,
//            let userData = defaults.object(forKey: Constants.UserDefaults.currentUser) as? Data {
//
//            // Existing User
////            User.setCurrent(user)
////            print("APP DELEGATE, EXISTING USER: \(user.uid)")
//
//            // go to main VC
//            initialViewController = UIStoryboard.initialViewController(for: .main)
//        } else {
//            // New user, go to login VC
//            // Save to UserDefaults - user have opened the app (true)
//            UserDefaults.standard.set(true, forKey: Constants.UserDefaults.currentUser)
//            initialViewController = UIStoryboard.initialViewController(for: .login)
//        }
//
//        window?.rootViewController = initialViewController
//        window?.makeKeyAndVisible()
//        print("FINISH")
//    }
//}

