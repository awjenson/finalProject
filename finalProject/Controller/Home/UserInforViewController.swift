//
//  UserInfoViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import ChameleonFramework
//import Firebase

/*
 Could create UI that allows users to follow filtered information based on interests and preferences.

    Example, you could follow male health tips or quotes from a specfic book or quotes from a successful athlete, muscian, actor, business leader

 https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/setting-followers

 */

class UserInfoViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var natureImageView: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!

    @IBOutlet weak var quoteLabel: ShadowLabel!
    @IBOutlet weak var authorLabel: ShadowLabel!

    @IBOutlet weak var quoteView: UIView!

    // MARK: - Parameters

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

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

        //Used to refresh app when re-entering from background
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.userInfoVC = self

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
        

        setupUI()

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)


    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

       

    }





    func reloadViewFromNib() {
        let parent = view.superview
        view.removeFromSuperview()
        view = nil
        parent?.addSubview(view) // This line causes the view to be reloaded
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
        let selectedGradientColor = UIColor(gradientStyle:UIGradientStyle.topToBottom, withFrame: quoteView.frame, andColors:[UIColor.clear, UIColor.black])
        //        self.view.backgroundColor = selectedGradientColor
        self.quoteView.backgroundColor = selectedGradientColor

        dayOfWeekAndHour()

//        reset(self)

    }

    override func viewDidAppear(_ animated: Bool) {

    }



    func dayOfWeekAndHour() {

        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)
        let day = calendar.component(.day, from: date)
        let week = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)




        if week % 2 == 0 {
            print("Week: \(week) is even")


        } else {
            print("Week: \(week) is odd")

        }

//        func oddWeek() {
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sundayOdd(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                mondayOdd(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesdayOdd(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesdayOdd(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursdayOdd(hour)
//            case 6: // Friday
//                print("today is Friday")
//                fridayOdd(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturdayOdd(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//
//        }
//
//        func evenWeek() {
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sundayEven(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                mondayEven(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesdayEven(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesdayEven(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursdayEven(hour)
//            case 6: // Friday
//                print("today is Friday")
//                fridayEven(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturdayEven(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//
//        }



//        switch weekOfMonth {
//        case 1,3,5:
//            oddWeek()
//
//        default:
//            evenWeek()
//        }


        
        let beginningStatement = "repeating this"

        print("HI GREETING")
        //greeting
        switch hour {
        case 0...4:
            greetingLabel.text = "Good Night"
        case 5...8:
            greetingLabel.text = "Rise and Shine"
        case 9...11:
            greetingLabel.text = "Good Morning"
        case 12...17:
            greetingLabel.text = "Good Afternoon"
        case 18...21:
            greetingLabel.text = "Good Evening"
        case 22...23:
            greetingLabel.text = "Good Night"
        default:
            greetingLabel.text = "Hello"
        }

        //breathing tip
        switch hour {
        case 0...4:
            setNatureImage(to: "night\(day)")

        case 5...7:
            setNatureImage(to: "morning\(day)")

        case 8:
            setNatureImage(to: "morning\(day)")

        case 9:
            setNatureImage(to: "midmorning\(day)")

        case 10...11:
            setNatureImage(to: "midmorning\(day)")

        case 12...13:
            setNatureImage(to: "day\(day)")

        case 14...16:
            setNatureImage(to: "afternoon\(day)")

        case 17...18:
            setNatureImage(to: "evening\(day)")

        case 19...20:
            setNatureImage(to: "sunset\(day)")

        case 21...24:
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





/*
     authorLabel.text = "\(beginningStatement) helps you to fall asleep"

     authorLabel.text = "\(beginningStatement) makes you feel alert and energized"

     authorLabel.text = "\(beginningStatement) reduces stress, anxiety, and depresion"

     authorLabel.text = "\(beginningStatement) reduces stress, anxiety, and depresion"

     authorLabel.text = "\(beginningStatement) improves concentration, focus, memorization"

     authorLabel.text = "\(beginningStatement) improves posture"

     authorLabel.text = "\(beginningStatement) protects the body from bacteria and viruses"

     authorLabel.text = "\(beginningStatement) protects the body from bacteria and viruses"

     authorLabel.text = "\(beginningStatement) improves heart and organ function"

     authorLabel.text = "\(beginningStatement) improves heart and organ function"
     authorLabel.text = "\(beginningStatement) improves heart and organ function"
     authorLabel.text = "\(beginningStatement) improves athletic performance"
     authorLabel.text = "\(beginningStatement) slows the aging process"
               authorLabel.text = "\(beginningStatement) slows the aging process"

     authorLabel.text = "\(beginningStatement) makes you feel calm and relaxed"


     */

/*

    func sundayOdd(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics

            setNatureImage(to: "night1")
            updateQuote(quote: QuoteData.q1)

        case 5...9:
            print("Weekend, Early Morning")


            setNatureImage(to: "morning1")
            updateQuote(quote: QuoteData.q1)

        case 10:
            print("Weekend, Late Morning")

            setNatureImage(to: "midmorning1")
            updateQuote(quote: QuoteData.q1)

        case 11...13:
            print("Weekend, Midday")

            setNatureImage(to: "day1")
            updateQuote(quote: QuoteData.q2)

        case 14...16:
            print("Weekend, Afternoon")

            setNatureImage(to: "afternoon1")
            updateQuote(quote: QuoteData.q2)

        case 17...18:
            print("Weekend, Early Evening")

            setNatureImage(to: "sunset1")
            updateQuote(quote: QuoteData.q3)

        case 19...20:
            print("Weekend, Mid Evening")

            setNatureImage(to: "sunset1")
            updateQuote(quote: QuoteData.q3)


        case 21..<24:
            print("Weekend, Late evening")

            setNatureImage(to: "night1")
            updateQuote(quote: QuoteData.q3)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func mondayOdd(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")

            setNatureImage(to: "night2")
            updateQuote(quote: QuoteData.q4)

        case 5...7:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning2")
            updateQuote(quote: QuoteData.q4)

        case 8...9:
            print("weekdayMTW, mid Morning")

            setNatureImage(to: "morning2")
            updateQuote(quote: QuoteData.q4)

        case 10:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning2")
            updateQuote(quote: QuoteData.q4)

        case 11:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning2")
            updateQuote(quote: QuoteData.q4)

        case 12...13:
            print("weekdayMTW, Midday")

            setNatureImage(to: "day2")
            updateQuote(quote: QuoteData.q5)

        case 14...15:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon2")
            updateQuote(quote: QuoteData.q5)

        case 16:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon2")
            updateQuote(quote: QuoteData.q5)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            setNatureImage(to: "sunset2")
            updateQuote(quote: QuoteData.q6)

        case 19...20:
            print("Weekday, Evening")

            updateQuote(quote: QuoteData.q6)
            setNatureImage(to: "sunset2")

        case 21..<24:
            print("Weekday, Late evening")

            setNatureImage(to: "night2")
            updateQuote(quote: QuoteData.q6)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesdayOdd(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")

            setNatureImage(to: "night3")
            updateQuote(quote: QuoteData.q7)
        case 5...7:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning3")
            updateQuote(quote: QuoteData.q7)

        case 8...9:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning3")
            updateQuote(quote: QuoteData.q7)

        case 10:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning3")
            updateQuote(quote: QuoteData.q7)

        case 11:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "day3")
            updateQuote(quote: QuoteData.q8)
        case 12...13:
            print("weekdayMTW, Midday")

            setNatureImage(to: "day3")
            updateQuote(quote: QuoteData.q8)

        case 14...15:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon3")
            updateQuote(quote: QuoteData.q8)
        case 16:
            print("weekdayMTW, Afternoon")


            setNatureImage(to: "afternoon3")
            updateQuote(quote: QuoteData.q8)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            setNatureImage(to: "sunset3")
            updateQuote(quote: QuoteData.q9)

        case 19...20:
            print("Weekday, Evening")

            setNatureImage(to: "sunset3")
            updateQuote(quote: QuoteData.q9)

        case 21..<24:
            print("Weekday, Late evening")

            setNatureImage(to: "night3")
            updateQuote(quote: QuoteData.q9)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesdayOdd(_ hour: Int) {
        switch hour {
        case 0...4:

            setNatureImage(to: "night4")
            updateQuote(quote: QuoteData.q10)
        case 5...7:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning4")
            updateQuote(quote: QuoteData.q10)

        case 8...9:
            print("weekdayMTW, Mid Morning")

            setNatureImage(to: "morning4")
            updateQuote(quote: QuoteData.q10)

        case 10:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning4")
            updateQuote(quote: QuoteData.q10)

        case 11:

            setNatureImage(to: "day4")
            updateQuote(quote: QuoteData.q11)

        case 12...13:
            print("weekdayMTW, Midday")


            setNatureImage(to: "day4")
            updateQuote(quote: QuoteData.q11)

        case 14...15:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon4")
            updateQuote(quote: QuoteData.q11)

        case 16:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon4")
            updateQuote(quote: QuoteData.q11)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            setNatureImage(to: "sunset4")
            updateQuote(quote: QuoteData.q12)

        case 19...20:
            print("Weekday, Evening")


            setNatureImage(to: "sunset4")
            updateQuote(quote: QuoteData.q12)

        case 21..<24:
            print("Weekday, Late evening")

            setNatureImage(to: "night4")
            updateQuote(quote: QuoteData.q12)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursdayOdd(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics

            setNatureImage(to: "night5")
            updateQuote(quote: QuoteData.q13)

        case 5...7:
            print("weekdayTF, Early Morning")

            setNatureImage(to: "morning5")
            updateQuote(quote: QuoteData.q13)

        case 8...9:

            setNatureImage(to: "morning5")
            updateQuote(quote: QuoteData.q13)

        case 10:
            print("weekdayTF, Late Morning")

            setNatureImage(to: "midmorning5")
            updateQuote(quote: QuoteData.q13)

        case 11:
            print("weekdayTF, Late Morning")

            setNatureImage(to: "midmorning5")
            updateQuote(quote: QuoteData.q13)

        case 12...13:
            print("weekdayTF, Midday")

            setNatureImage(to: "day5")
            updateQuote(quote: QuoteData.q14)

        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 16:
            print("weekdayTF, Afternoon")

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 17...18:
            print("weekdayTF, Evening 5PM")

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 19...20:
            print("weekdayTF, Evening")

            updateQuote(quote: QuoteData.q16)
            setNatureImage(to: "sunset5")
        case 21..<24:
            print("weekdayTF, Late evening")

            setNatureImage(to: "night5")
            updateQuote(quote: QuoteData.q16)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func fridayOdd(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")

            setNatureImage(to: "night6")
            updateQuote(quote: QuoteData.q17)

        case 5...7:
            print("weekday Fri, Early Morning")

            setNatureImage(to: "morning6")
            updateQuote(quote: QuoteData.q17)

        case 8...9:
            print("weekday Fri, Late Morning")

            setNatureImage(to: "midmorning6")
            updateQuote(quote: QuoteData.q17)

        case 10:
            print("weekday Fri, Late Morning")

            setNatureImage(to: "midmorning6")
            updateQuote(quote: QuoteData.q17)

        case 11:
            print("weekday Fri, Midday")

            setNatureImage(to: "day6")
            updateQuote(quote: QuoteData.q18)

        case 12...13:
            print("weekday Fri, Midday")

            setNatureImage(to: "day6")
            updateQuote(quote: QuoteData.q18)

        case 14...15:
            print("weekday Fri, Afternoon")

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q18)

        case 16:
            print("weekday Fri, Afternoon")

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q18)

        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q19)

        case 19...20:
            print("weekday Fri, Evening 7-8PM")

            setNatureImage(to: "sunset6")
            updateQuote(quote: QuoteData.q19)
        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")

            setNatureImage(to: "night6")
            updateQuote(quote: QuoteData.q19)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturdayOdd(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")

            setNatureImage(to: "night7")
            updateQuote(quote: QuoteData.q20)
        case 5...9:
            print("Weekend, Early Morning")

            setNatureImage(to: "morning7")
            updateQuote(quote: QuoteData.q20)

        case 10:
            print("Weekend, Late Morning")

            setNatureImage(to: "midmorning7")
            updateQuote(quote: QuoteData.q20)

        case 11:
            print("Weekend, Late Morning")

            setNatureImage(to: "midmorning7")
            updateQuote(quote: QuoteData.q20)

        case 12...13:
            print("Weekend, Midday")

            setNatureImage(to: "day7")
            updateQuote(quote: QuoteData.q21)

        case 14...15:
            print("Weekend, Afternoon")

            setNatureImage(to: "afternoon7")
            updateQuote(quote: QuoteData.q21)

        case 15...16:
            print("Weekend, Afternoon")

            setNatureImage(to: "afternoon7")
            updateQuote(quote: QuoteData.q21)

        case 17...18:
            print("Weekend, Early Evening")

            setNatureImage(to: "sunset7")
            updateQuote(quote: QuoteData.q22)

        case 19...20:
            print("Weekend, Early Evening")

            setNatureImage(to: "sunset7")
            updateQuote(quote: QuoteData.q22)

        case 21..<24:
            print("Weekend, Late evening")

            setNatureImage(to: "night7")
            updateQuote(quote: QuoteData.q22)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    ////////////////////////////////////////////////////////////////

    func sundayEven(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics

            setNatureImage(to: "night1")
            updateQuote(quote: QuoteData.q1)

        case 5...9:
            print("Weekend, Early Morning")


            setNatureImage(to: "morning1")
            updateQuote(quote: QuoteData.q1)

        case 10:
            print("Weekend, Late Morning")

            setNatureImage(to: "midmorning1")
            updateQuote(quote: QuoteData.q1)

        case 11...13:
            print("Weekend, Midday")

            setNatureImage(to: "day1")
            updateQuote(quote: QuoteData.q2)

        case 14...16:
            print("Weekend, Afternoon")

            setNatureImage(to: "afternoon1")
            updateQuote(quote: QuoteData.q2)

        case 17...18:
            print("Weekend, Early Evening")

            setNatureImage(to: "sunset1")
            updateQuote(quote: QuoteData.q3)

        case 19...20:
            print("Weekend, Mid Evening")

            setNatureImage(to: "sunset1")
            updateQuote(quote: QuoteData.q3)


        case 21..<24:
            print("Weekend, Late evening")

            setNatureImage(to: "night1")
            updateQuote(quote: QuoteData.q3)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func mondayEven(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")

            setNatureImage(to: "night2")
            updateQuote(quote: QuoteData.q4)

        case 5...7:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning2")
            updateQuote(quote: QuoteData.q4)

        case 8...9:
            print("weekdayMTW, mid Morning")

            setNatureImage(to: "morning2")
            updateQuote(quote: QuoteData.q4)

        case 10:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning2")
            updateQuote(quote: QuoteData.q4)

        case 11:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning2")
            updateQuote(quote: QuoteData.q4)

        case 12...13:
            print("weekdayMTW, Midday")

            setNatureImage(to: "day2")
            updateQuote(quote: QuoteData.q5)

        case 14...15:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon2")
            updateQuote(quote: QuoteData.q5)

        case 16:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon2")
            updateQuote(quote: QuoteData.q5)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            setNatureImage(to: "sunset2")
            updateQuote(quote: QuoteData.q6)

        case 19...20:
            print("Weekday, Evening")

            updateQuote(quote: QuoteData.q6)
            setNatureImage(to: "sunset2")

        case 21..<24:
            print("Weekday, Late evening")

            setNatureImage(to: "night2")
            updateQuote(quote: QuoteData.q6)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesdayEven(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")

            setNatureImage(to: "night3")
            updateQuote(quote: QuoteData.q7)
        case 5...7:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning3")
            updateQuote(quote: QuoteData.q7)

        case 8...9:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning3")
            updateQuote(quote: QuoteData.q7)

        case 10:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning3")
            updateQuote(quote: QuoteData.q7)

        case 11:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "day3")
            updateQuote(quote: QuoteData.q8)
        case 12...13:
            print("weekdayMTW, Midday")

            setNatureImage(to: "day3")
            updateQuote(quote: QuoteData.q8)

        case 14...15:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon3")
            updateQuote(quote: QuoteData.q8)
        case 16:
            print("weekdayMTW, Afternoon")


            setNatureImage(to: "afternoon3")
            updateQuote(quote: QuoteData.q8)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            setNatureImage(to: "sunset3")
            updateQuote(quote: QuoteData.q9)

        case 19...20:
            print("Weekday, Evening")

            setNatureImage(to: "sunset3")
            updateQuote(quote: QuoteData.q9)

        case 21..<24:
            print("Weekday, Late evening")

            setNatureImage(to: "night3")
            updateQuote(quote: QuoteData.q9)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesdayEven(_ hour: Int) {
        switch hour {
        case 0...4:

            setNatureImage(to: "night4")
            updateQuote(quote: QuoteData.q10)
        case 5...7:
            print("weekdayMTW, Early Morning")

            setNatureImage(to: "morning4")
            updateQuote(quote: QuoteData.q10)

        case 8...9:
            print("weekdayMTW, Mid Morning")

            setNatureImage(to: "morning4")
            updateQuote(quote: QuoteData.q10)

        case 10:
            print("weekdayMTW, Late Morning")

            setNatureImage(to: "midmorning4")
            updateQuote(quote: QuoteData.q10)

        case 11:

            setNatureImage(to: "day4")
            updateQuote(quote: QuoteData.q11)

        case 12...13:
            print("weekdayMTW, Midday")


            setNatureImage(to: "day4")
            updateQuote(quote: QuoteData.q11)

        case 14...15:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon4")
            updateQuote(quote: QuoteData.q11)

        case 16:
            print("weekdayMTW, Afternoon")

            setNatureImage(to: "afternoon4")
            updateQuote(quote: QuoteData.q11)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            setNatureImage(to: "sunset4")
            updateQuote(quote: QuoteData.q12)

        case 19...20:
            print("Weekday, Evening")


            setNatureImage(to: "sunset4")
            updateQuote(quote: QuoteData.q12)

        case 21..<24:
            print("Weekday, Late evening")

            setNatureImage(to: "night4")
            updateQuote(quote: QuoteData.q12)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursdayEven(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics

            setNatureImage(to: "night5")
            updateQuote(quote: QuoteData.q13)

        case 5...7:
            print("weekdayTF, Early Morning")

            setNatureImage(to: "morning5")
            updateQuote(quote: QuoteData.q13)

        case 8...9:

            setNatureImage(to: "morning5")
            updateQuote(quote: QuoteData.q13)

        case 10:
            print("weekdayTF, Late Morning")

            setNatureImage(to: "midmorning5")
            updateQuote(quote: QuoteData.q13)

        case 11:
            print("weekdayTF, Late Morning")

            setNatureImage(to: "midmorning5")
            updateQuote(quote: QuoteData.q13)

        case 12...13:
            print("weekdayTF, Midday")

            setNatureImage(to: "day5")
            updateQuote(quote: QuoteData.q14)

        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 16:
            print("weekdayTF, Afternoon")

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 17...18:
            print("weekdayTF, Evening 5PM")

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 19...20:
            print("weekdayTF, Evening")

            updateQuote(quote: QuoteData.q16)
            setNatureImage(to: "sunset5")
        case 21..<24:
            print("weekdayTF, Late evening")

            setNatureImage(to: "night5")
            updateQuote(quote: QuoteData.q16)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func fridayEven(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")

            setNatureImage(to: "night6")
            updateQuote(quote: QuoteData.q17)

        case 5...7:
            print("weekday Fri, Early Morning")

            setNatureImage(to: "morning6")
            updateQuote(quote: QuoteData.q17)

        case 8...9:
            print("weekday Fri, Late Morning")

            setNatureImage(to: "midmorning6")
            updateQuote(quote: QuoteData.q17)

        case 10:
            print("weekday Fri, Late Morning")

            setNatureImage(to: "midmorning6")
            updateQuote(quote: QuoteData.q17)

        case 11:
            print("weekday Fri, Midday")

            setNatureImage(to: "day6")
            updateQuote(quote: QuoteData.q18)

        case 12...13:
            print("weekday Fri, Midday")

            setNatureImage(to: "day6")
            updateQuote(quote: QuoteData.q18)

        case 14...15:
            print("weekday Fri, Afternoon")

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q18)

        case 16:
            print("weekday Fri, Afternoon")

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q18)

        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q19)

        case 19...20:
            print("weekday Fri, Evening 7-8PM")

            setNatureImage(to: "sunset6")
            updateQuote(quote: QuoteData.q19)
        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")

            setNatureImage(to: "night6")
            updateQuote(quote: QuoteData.q19)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturdayEven(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")

            setNatureImage(to: "night7")
            updateQuote(quote: QuoteData.q20)
        case 5...9:
            print("Weekend, Early Morning")

            setNatureImage(to: "morning7")
            updateQuote(quote: QuoteData.q20)

        case 10:
            print("Weekend, Late Morning")

            setNatureImage(to: "midmorning7")
            updateQuote(quote: QuoteData.q20)

        case 11:
            print("Weekend, Late Morning")

            setNatureImage(to: "midmorning7")
            updateQuote(quote: QuoteData.q20)

        case 12...13:
            print("Weekend, Midday")

            setNatureImage(to: "day7")
            updateQuote(quote: QuoteData.q21)

        case 14...15:
            print("Weekend, Afternoon")

            setNatureImage(to: "afternoon7")
            updateQuote(quote: QuoteData.q21)

        case 15...16:
            print("Weekend, Afternoon")

            setNatureImage(to: "afternoon7")
            updateQuote(quote: QuoteData.q21)

        case 17...18:
            print("Weekend, Early Evening")

            setNatureImage(to: "sunset7")
            updateQuote(quote: QuoteData.q22)

        case 19...20:
            print("Weekend, Early Evening")

            setNatureImage(to: "sunset7")
            updateQuote(quote: QuoteData.q22)

        case 21..<24:
            print("Weekend, Late evening")

            setNatureImage(to: "night7")
            updateQuote(quote: QuoteData.q22)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

*/

////////////////////////////////////////////////////////////////

    func setNatureImage(to imageTitle: String?) {

        print("imageTitle: \(imageTitle)")

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

