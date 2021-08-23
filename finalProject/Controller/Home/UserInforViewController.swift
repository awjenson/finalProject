//
//  UserInfoViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import SwiftUI

import MapKit
import CoreLocation

//import Firebase

/*
 Could create UI that allows users to follow filtered information based on interests and preferences.

    Example, you could follow male health tips or quotes from a specfic book or quotes from a successful athlete, muscian, actor, business leader

 https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/setting-followers

 */

class UserInfoViewController: UIViewController {

    // MARK: - IBOutlets


    @IBOutlet weak var touchButton: UIButton!

    @IBOutlet weak var natureImageView: UIImageView!

    @IBOutlet weak var greetingLabel: ShadowLabel!

    @IBOutlet weak var arrowButton: UIButton!
    @IBOutlet weak var authorLabel: ShadowLabel!
    @IBOutlet weak var quoteLabel: ShadowLabel!


    @IBOutlet weak var quoteView: UIView!



    @IBOutlet weak var atHomeButton: CircleButton!

    @IBOutlet weak var notHomeButton: CircleButton!

    // MARK: - Parameters

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current
    var dayOfWeek = 0
    var hour = 0
    var day = 0
    var week = 0
    var weekOfMonth = 0
    var month = 0

    let arrowIcon = "icons8-collapse_arrow-1"
    let authorText = "Relax"
    let quoteText = "Inhale deeply, exhale slowly"

    var selectedImage: String?

    var buttonTapped = ""

    //Hide status bar (time, wifi, etc.)
    override var prefersStatusBarHidden: Bool {
        return true
    }


    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


    // MARK: - Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")

        //Used to refresh app when re-entering from background
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.userInfoVC = self

        let notificationCenter = NotificationCenter.default
        //detect when your app moves to the background
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.willResignActiveNotification, object: nil)
        //detect when your app returns from background
        //MARK: - Call SetupUI()
        //Calling setupUI in appReturnedFromBackground
        notificationCenter.addObserver(self, selector: #selector(appReturnedFromBackground), name: UIApplication.didBecomeActiveNotification, object: nil)

        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        leftSwipe.direction = .left
        self.view.addGestureRecognizer(leftSwipe)

        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        rightSwipe.direction = .right
        self.view.addGestureRecognizer(rightSwipe)

        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        upSwipe.direction = .up
        self.view.addGestureRecognizer(upSwipe)

        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        downSwipe.direction = .down
        self.view.addGestureRecognizer(downSwipe)


    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear - called everytime you come to the viewController")
        //Assign data to the ViewController or making API calls inside viewWillAppear that will call everytime when you came to that viewcontroller

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("HomeVC viewDidAppear")
        beginAnimation()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")

        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }


    @objc func appMovedToBackground() {
        print("App moved to background!")
    }

    @objc func appReturnedFromBackground() {
        print("App returned from Background")
        setupUI()
    }


    func reloadViewFromNib() {

    }


    let appTabBar = MainTabBarViewController()


    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        segueToNextVC()

    }

    


   


    //MARK: - IB Actions

    @IBAction func tapAction(_ sender: Any) {
        segueToNextVC()
    }

    @IBAction func atHomeButtonTapped(_ sender: Any) {
        buttonTapped = "atHome"
    }


    @IBAction func notHomeButtonTapped(_ sender: Any) {
        buttonTapped = "notHome"
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //pass data from UITabBarController to ViewControllers

        let barViewControllers = segue.destination as! UITabBarController

            let destinationViewController = barViewControllers.viewControllers?[0] as! NowViewController
            destinationViewController.homeButtonSeleted = buttonTapped

            // access the second tab bar
            let secondDes = barViewControllers.viewControllers?[1] as! ProfileViewController
            secondDes.homeButtonSeleted = buttonTapped


        if (segue.identifier == "atHomeSegue") {
            buttonTapped = "atHome"
            let destinationVC : MainTabBarViewController = segue.destination as! MainTabBarViewController;
            destinationVC.homeButtonSeleted = buttonTapped
        }
        if (segue.identifier == "notHomeSegue") {
            buttonTapped = "notHome"
            let destinationVC : MainTabBarViewController = segue.destination as! MainTabBarViewController;
            destinationVC.homeButtonSeleted = buttonTapped
        }
    }








    func segueToNextVC() {
        performSegue(withIdentifier: "swipe", sender: self)
        arrowButton.imageView?.removeFromSuperview()

        authorLabel.text = ""
        quoteLabel.text = ""
        removeAnimation()
    }

    func removeAnimation() {
        self.quoteLabel.layer.removeAllAnimations() //stop the animation
        self.view.layer.removeAllAnimations()
        self.view.layoutIfNeeded()

    }


    func removeNatureImage() {
        natureImageView.removeFromSuperview()
        natureImageView.image = nil
    }


    func setupUI() {
        print("UserVC SetupUI")
        dayOfWeekAndHour()
        
        authorLabel.text = authorText
        quoteLabel.text = quoteText
        quoteLabel.transform = quoteLabel.transform.scaledBy(x: 0.9, y: 0.9)
    }

    func dayOfWeekAndHour() {

        greetingLabel.text = ""

        dayOfWeek = calendar.component(.weekday, from: date)
        hour = calendar.component(.hour, from: date)
        day = calendar.component(.day, from: date)
        day = Int.random(in: 1...31)
        week = calendar.component(.weekOfYear, from: date)
        weekOfMonth = calendar.component(.weekOfMonth, from: date)

        switch hour {
        case 0...4:
            greetingLabel.text = "Good Night"
        case 5...8:
            greetingLabel.text = "Rise and Shine"
        case 9...10:
            greetingLabel.text = "Good Morning"
        case 11...13:
            greetingLabel.text = "Good Day"
        case 14...17:
            greetingLabel.text = "Good Afternoon"
        case 18...21:
            greetingLabel.text = "Good Evening"
        case 22...23:
            greetingLabel.text = "Good Night"
        default:
            greetingLabel.text = "Hello"
        }

        switch hour {
        case 0...4:
            setNatureImage(to: "night\(day)")

        case 5...8:
            setNatureImage(to: "morning\(day)")

        case 9...11:
            setNatureImage(to: "midmorning\(day)")

        case 12...13:
            setNatureImage(to: "day\(day)")

        case 14...16:
            setNatureImage(to: "afternoon\(day)")

        case 17...18:
            setNatureImage(to: "evening\(day)")

        case 19...20:
            setNatureImage(to: "sunset\(day)")

        case 21:
            setNatureImage(to: "dusk\(day)")

        case 22...24:
            setNatureImage(to: "night\(day)")

        default:
            greetingLabel.text = "Hello"
        }


    }


    func beginAnimation() {
        print("beginAnimation")




        UIView.animate(withDuration: 4.9, delay: 0, options: [.repeat, .autoreverse, .beginFromCurrentState], animations: {

            self.quoteLabel.transform = self.quoteLabel.transform.scaledBy(x: 1.3, y: 1.3)

        }, completion: nil)

    }




////////////////////////////////////////////////////////////////

    func setNatureImage(to imageTitle: String?) {

        print("imageTitle: \(String(describing: imageTitle))")

        if let imageToLoad = imageTitle {
            self.natureImageView.image = UIImage(named: imageToLoad)
        }
    }

    func updateQuote(quote: Quote) {
//        performUIUpdatesOnMain {
//            self.quoteLabel.text = quote.quote
//            self.authorLabel.text = quote.source
//
//            //            self.sizeFooterToFit()// needs to be called after setting quote
//
//            self.quoteView.frame.size.height = self.view.frame.size.width
//        }
    }

}



