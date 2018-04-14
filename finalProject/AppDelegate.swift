//
//  AppDelegate.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import RealmSwift
import Firebase
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("didFinishLaunchingWithOptions")

        if window?.rootViewController as? UITabBarController != nil {
            let tabBarController = window!.rootViewController as! UITabBarController
            tabBarController.selectedIndex = 1 // Opens the 4th Tab
        } else{
            print("couldn't reach rootViewController named UITabBarController")
        }

        // Firebase.
        // Initialize and configure Firebase
        FirebaseApp.configure()

        // Realm.
        // Realms are like different persistent containers.
        // Location of our Realm file.
        print(Realm.Configuration.defaultConfiguration.fileURL!)

        // Initalize new Realm object. Use the context to commit the current state to our persistent container (our Realm database)
        do {
            // both Realm() and .write could throw an error so that is why we put them inside do-try-catch statements. Since we're not using it we can make it an underscore.
            _ = try Realm()

        } catch {
            print("Error initializing new realm, \(error)")
        }

        // IQKeyboardManagerSwift
        IQKeyboardManager.sharedManager().enable = true
        IQKeyboardManager.sharedManager().reloadLayoutIfNeeded()

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
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("applicationWillTerminate")
    }


}

