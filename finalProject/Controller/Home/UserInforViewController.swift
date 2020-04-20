//
//  UserInfoViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

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

    @IBOutlet weak var greetingLabel: UILabel!

    @IBOutlet weak var arrowButton: UIButton!
    @IBOutlet weak var quoteLabel: ShadowLabel!
    @IBOutlet weak var authorLabel: ShadowLabel!

    @IBOutlet weak var quoteView: UIView!

    // MARK: - Parameters

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current
    var dayOfWeek = 0
    var hour = 0
    var day = 0
    var week = 0
    var weekOfMonth = 0


    var selectedImage: String?

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

//        setupUI()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear - called everytime you come to the viewController")
        //Assign data to the ViewController or making API calls inside viewWillAppear that will call everytime when you came to that viewcontroller
//        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("HomeVC viewDidAppear")
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


    @IBAction func tapAction(_ sender: Any) {
        segueToNextVC()
    }

    func segueToNextVC() {

        performSegue(withIdentifier: "swipe", sender: self)

        arrowButton.imageView?.removeFromSuperview()
        quoteLabel.removeFromSuperview()
        authorLabel.text = ""
    }

    func removeAnimation() {
        self.quoteLabel.layer.removeAllAnimations()
        self.view.layer.removeAllAnimations()
        self.view.layoutIfNeeded()
    }


    func removeNatureImage() {
        natureImageView.removeFromSuperview()
        natureImageView.image = nil
    }


    func setupUI() {
        print("UserVC SetupUI")

        // Quote View
//        let selectedGradientColor = UIColor(gradientStyle:UIGradientStyle.topToBottom, withFrame: quoteView.frame, andColors:[UIColor.clear, UIColor.black])
//        //        self.view.backgroundColor = selectedGradientColor
//        self.quoteView.backgroundColor = selectedGradientColor

        dayOfWeekAndHour()
    }

    func dayOfWeekAndHour() {

        //reset natureIamgeView.image so when it's in the background for a while it doesn't display an old image
        self.natureImageView.image = UIImage(named: "")
        greetingLabel.text = ""

        dayOfWeek = calendar.component(.weekday, from: date)
        hour = calendar.component(.hour, from: date)
        day = calendar.component(.day, from: date)
        day = Int.random(in: 1...31)
        week = calendar.component(.weekOfYear, from: date)
        weekOfMonth = calendar.component(.weekOfMonth, from: date)

        if week % 2 == 0 {
            print("Week: \(week) is even")

        } else {
            print("Week: \(week) is odd")

        }



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


    //Animation
    //https://medium.com/livefront/animating-font-size-in-uilabels-fb6fd273a5f3
    let duration = 1.0
    let enlargeDuration = 0.7
    let shrinkDuration = 1.8
    let fontSizeSmall: CGFloat = 18
    let fontSizeBig: CGFloat = 34
    var isSmall: Bool = true

    func reset(_ sender: Any) {

        print("quoteLabel.font.pointSize \(quoteLabel.font.pointSize)")

        var bounds = quoteLabel.bounds
        quoteLabel.font = quoteLabel.font.withSize(fontSizeSmall)
        bounds.size = quoteLabel.intrinsicContentSize
        quoteLabel.bounds = bounds

        isSmall = true

        enlarge()

        isSmall = !isSmall
    }

    func enlarge() {
        print("enlarge")
        print("quoteLabel.font.pointSize \(quoteLabel.font.pointSize)")


        var biggerBounds = quoteLabel.bounds

        quoteLabel.font = quoteLabel.font.withSize(fontSizeBig)
        biggerBounds.size = quoteLabel.intrinsicContentSize

        quoteLabel.transform = scaleTransform(from: biggerBounds.size, to: quoteLabel.bounds.size)

        quoteLabel.bounds = biggerBounds

        UIView.animate(withDuration: enlargeDuration) {

            guard self.quoteLabel != nil else {
                print("False (enlarge): quoteLabel is nil")
                return
            }
            self.quoteLabel.transform = .identity
            self.quoteLabel.bounds = biggerBounds
            self.shrink()
        }
    }



    func shrink() {
        print("shrink")
        print("quoteLabel.font.pointSize \(quoteLabel.font.pointSize)")

        let labelCopy = quoteLabel.copyLabel()
        var smallerBounds = labelCopy.bounds
        print("quoteLabel.bounds in shrink \(quoteLabel.bounds)")
        labelCopy.font = quoteLabel.font.withSize(fontSizeSmall)
        smallerBounds.size = labelCopy.intrinsicContentSize

        let shrinkTransform = scaleTransform(from: quoteLabel.bounds.size, to: smallerBounds.size)

        UIView.animate(withDuration: shrinkDuration, animations: {
            self.quoteLabel.transform = shrinkTransform
        }, completion: { done in

            guard self.quoteLabel != nil else {
                print("False (shrink): quoteLabel is nil")
                return
            }
            self.quoteLabel.font = labelCopy.font
            self.quoteLabel.transform = .identity
            self.quoteLabel.bounds = smallerBounds
            self.enlarge()
        })
    }

    private func scaleTransform(from: CGSize, to: CGSize) -> CGAffineTransform {

        var scaleX = to.width / from.width
        var scaleY = to.height / from.height

        return CGAffineTransform(scaleX: scaleX, y: scaleY)
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

