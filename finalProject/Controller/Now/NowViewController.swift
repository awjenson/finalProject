//
//  NowViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// Two table views in one VC:
// Source: https://www.youtube.com/watch?v=vnreJRPvd3Y


/*
 In the future, "followers" and "following" could be based on the time of day. So your timeline would follow certain followers based on the time of day. And who you are following will be based on your user preferences (age, gender, diet).
 https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/building-the-timeline
 */

/*
 Add Modal Popups Within A View Controller for playing videos/displaying articles
https://www.youtube.com/watch?v=k-GvIqh5Xcs
 */

//Pause timer when applicationWillResignActive
//Refresh UI when applicationDidBecomeActive

import UIKit
import SafariServices // to display webview
import ChameleonFramework

class NowViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var quoteView: UIView!



    @IBOutlet weak var natureImageView: UIImageView!
    @IBOutlet weak var natureView: UIView!

    @IBOutlet weak var clearView: UIView!

//    @IBOutlet weak var greetingLabel: UILabel!


    @IBOutlet weak var buttonView: UIView!

    @IBOutlet weak var titleLabel: UILabel!


    @IBOutlet weak var nowTableView: UITableView!
    @IBOutlet weak var topicView: UIView!





    // topicButtion OutletCollection only used for flipping UI when buttons tapped
    // All topicButtons need to be linked to this
    @IBOutlet var topicButtons: [CircleButton]!

    // individual outlets used to maintain order with buttons and labels in UI
    @IBOutlet weak var topic0Button: CircleButton!
    @IBOutlet weak var topic1Button: CircleButton!
    @IBOutlet weak var topic2Button: CircleButton!
    @IBOutlet weak var topic3Button: CircleButton!
    // 2nd row
    @IBOutlet weak var topic4Button: CircleButton!
    @IBOutlet weak var topic5Button: CircleButton!
    @IBOutlet weak var topic6Button: CircleButton!
    @IBOutlet weak var topic7Button: CircleButton!
    // 3rd row
    @IBOutlet weak var topic8Button: CircleButton!
    @IBOutlet weak var topic9Button: CircleButton!
    @IBOutlet weak var topic10Button: CircleButton!
    @IBOutlet weak var topic11Button: CircleButton!

    // All topicLabels need to be linked to this
    @IBOutlet var topicLabels: [UILabel]!
    // 1st row
    @IBOutlet weak var topic0Label: UILabel!
    @IBOutlet weak var topic1Label: UILabel!
    @IBOutlet weak var topic2Label: UILabel!
    @IBOutlet weak var topic3Label: UILabel!

    @IBOutlet weak var topic4Label: UILabel!
    @IBOutlet weak var topic5Label: UILabel!
    @IBOutlet weak var topic6Label: UILabel!
    @IBOutlet weak var topic7Label: UILabel!

    @IBOutlet weak var topic8Label: UILabel!
    @IBOutlet weak var topic9Label: UILabel!
    @IBOutlet weak var topic10Label: UILabel!
    @IBOutlet weak var topic11Label: UILabel!



    // Return button
    @IBOutlet weak var returnToTopButton: RoundCorneredButton!
    @IBOutlet weak var footerView: UIView!



    // MARK: - Properties



    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current
    var hour = 0 // set at load time
    var newHour = 0 // updates at the top of every hour

    var headers: [Header] = [] // array of headers used for QUOTES

    var currentIndex:Int = -1 //initial integer since UIButton.index start at 0






    // Tips and Topics
    var topic0: Topic!
    var topic1: Topic!
    var topic2: Topic!
    var topic3: Topic!
    var topic4: Topic!
    var topic5: Topic!
    var topic6: Topic!
    var topic7: Topic!
    var topic8: Topic!
    var topic9: Topic!
    var topic10: Topic!
    var topic11: Topic!

    var topics: [Topic] = [] // array of topics
    var tips: [Tip] = []


//    var cellHeaderColor: [UIColor] = []
//    var topicColor: UIColor?


    // MARK: - Lifecycle Methods

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()


        //Used to refresh app when re-entering from background
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.nowVC = self
    }






//    @objc func runTimedCode() {
//
//        newHour = calendar.component(.hour, from: date)
//
//        if newHour != hour {
//            // refresh UI
//            print("REFRESH UI FOR NEW HOUR TIPS")
//
//            dayOfWeekAndHour()
//            nowTableViewSetup()
//
//        } else {
//            print("Original Hour \(hour) == Current Hour \(newHour)")
//        }
//    }


    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)

    }



    var selectedTopicTitle = ""

    func refreshUI() {




        print("Refresh NowVC")



//        performUIUpdatesOnMain {
//            // removed animation because it was too slow
//            self.nowTableView.setContentOffset(.zero, animated: false)
//        }
//
//        topics = []
//        tips = []
//        topicButtons = []
//
//        quoteLabel.text = ""
//        authorLabel.text = ""
//
//        topic0Button.titleLabel?.text = ""
//        topic1Button.titleLabel?.text = ""
//        topic2Button.titleLabel?.text = ""
//        topic3Button.titleLabel?.text = ""
//
//        topic4Button.titleLabel?.text = ""
//        topic5Button.titleLabel?.text = ""
//        topic6Button.titleLabel?.text = ""
//        topic7Button.titleLabel?.text = ""
//
//        resetTopicButtonOriginalStyle(button: topic0Button)
//        resetTopicButtonOriginalStyle(button: topic1Button)
//        resetTopicButtonOriginalStyle(button: topic2Button)
//        resetTopicButtonOriginalStyle(button: topic3Button)
//
//        resetTopicButtonOriginalStyle(button: topic4Button)
//        resetTopicButtonOriginalStyle(button: topic5Button)
//        resetTopicButtonOriginalStyle(button: topic6Button)
//        resetTopicButtonOriginalStyle(button: topic7Button)
//
//
//
//
//        let blankTip1 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
//        let blankTip2 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
//        let blankTip3 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
//        let blankTip4 = Tip(header: "", title: "", body: "" , sourceName: "", sourceURL: "", sponsorLogo: "", sponsorURL: "")
//
//        let blankTipArray = [blankTip1, blankTip2, blankTip3, blankTip4]
//
//        let blankTopic0 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankTopic1 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankTopic2 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankTopic3 = Topic(title: "", icon: "", tip: blankTipArray)
//
//        let blankTopic4 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankTopic5 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankTopic6 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankTopic7 = Topic(title: "", icon: "", tip: blankTipArray)
//        let blankNowTopic8 = Topic(title: "", icon: "", tip: blankTipArray)
//
//        // set UIButtons
//        self.resetTopicButtonOriginalStyle(button: self.topic0Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic1Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic2Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic3Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic4Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic5Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic6Button)
//        self.resetTopicButtonOriginalStyle(button: self.topic7Button)
//
//        appendNineTopics(blankTopic0, blankTopic1, blankTopic2, blankTopic3, blankTopic4, blankTopic5, blankTopic6, blankTopic7, blankNowTopic8)
//
//        nowTableView.reloadData()
//
//        setupUI()
//
//        performUIUpdatesOnMain {
//            // removed animation because it was too slow
//            self.nowTableView.reloadData()
//            self.view.layoutIfNeeded()
//            self.nowTableView.setContentOffset(.zero, animated: false)
//        }
    }











    // MARK: - Methods

    func setupUI() {


//        self.view.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        self.view.backgroundColor = UIColor.init(hexString: "2283F6", withAlpha: 1)
//        self.view.backgroundColor = UIColor.red
        self.quoteView.backgroundColor = UIColor.init(hexString: "2283F6", withAlpha: 1)



        // place 8 buttons in desired order (excludes Now tips)
        topicButtons = [topic0Button, topic1Button, topic2Button, topic3Button,
                        topic4Button, topic5Button, topic6Button, topic7Button,
                        topic8Button, topic9Button, topic10Button, topic11Button,]

        topicLabels = [topic0Label, topic1Label, topic2Label, topic3Label,
                       topic4Label, topic5Label, topic6Label, topic7Label,
                       topic8Label, topic9Label, topic10Label, topic11Label,]

        // set footer
        footerView.frame.size.height = 140
        //setupQuote() moved into dayOfWeekAndHour()

        dayOfWeekAndHour()

        nowTableViewSetup()


    }

















    func setupButtonsQuoteImage(day: Int) {

        //        if let imageToLoad = selectedImage {
        //            imageView.image  = UIImage(named: imageToLoad)
        //        }

        // Set initial quote

    }


////    func setupQuoteOdd() {
////        print("Refresh COUNTER table view")
////        let dayOfWeek = calendar.component(.weekday, from: date)
////        let hour = calendar.component(.hour, from: date)
////
////        //
////        func sunday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.sunday1
////            case 10...14:
////                quote = QuoteData.Week1.sunday2
////            case 15...18:
////                quote = QuoteData.Week1.sunday3
////            case 19...24:
////                quote = QuoteData.Week1.sunday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func monday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.monday1
////            case 10...14:
////                quote = QuoteData.Week1.monday2
////            case 15...18:
////                quote = QuoteData.Week1.monday3
////            case 19...24:
////                quote = QuoteData.Week1.monday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func tuesday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.tuesday1
////            case 10...14:
////                quote = QuoteData.Week1.tuesday2
////            case 15...18:
////                quote = QuoteData.Week1.tuesday3
////            case 19...24:
////                quote = QuoteData.Week1.tuesday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func wednesday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.wednesday1
////            case 10...14:
////                quote = QuoteData.Week1.wednesday2
////            case 15...18:
////                quote = QuoteData.Week1.wednesday3
////            case 19...24:
////                quote = QuoteData.Week1.wednesday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func thursday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.thursday1
////            case 10...14:
////                quote = QuoteData.Week1.thursday2
////            case 15...18:
////                quote = QuoteData.Week1.thursday3
////            case 19...24:
////                quote = QuoteData.Week1.thursday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func friday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.friday1
////            case 10...14:
////                quote = QuoteData.Week1.friday2
////            case 15...18:
////                quote = QuoteData.Week1.friday3
////            case 19...24:
////                quote = QuoteData.Week1.friday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
////
////        func saturday(_ hour: Int) {
////            switch hour {
////            case 0...9:
////                quote = QuoteData.Week1.saturday1
////            case 10...14:
////                quote = QuoteData.Week1.saturday2
////            case 15...18:
////                quote = QuoteData.Week1.saturday3
////            case 19...24:
////                quote = QuoteData.Week1.saturday4
////            default:
////                print("ERROR: INVALID HOUR!")
////            }
////        }
//
//        switch dayOfWeek {
//        case 1: // Sun
//            print("today is a weekend")
//            sunday(hour)
//        case 2:
//            monday(hour)
//        case 3:
//            tuesday(hour)
//        case 4:
//            wednesday(hour)
//        case 5:
//            thursday(hour)
//        case 6:
//            friday(hour)
//        case 7:
//            saturday(hour)
//        default:
//            print("ERROR: error with dayAndHour")
//            print(dayOfWeek)
//        }
//
//
//
//    }

    //
//    func setupQuoteEven() {
//        print("Refresh COUNTER table view")
//        let dayOfWeek = calendar.component(.weekday, from: date)
//        let hour = calendar.component(.hour, from: date)
//
//        //
//        func sunday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.sunday1
//            case 10...14:
//                quote = QuoteData.Week2.sunday2
//            case 15...18:
//                quote = QuoteData.Week2.sunday3
//            case 19...24:
//                quote = QuoteData.Week2.sunday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func monday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.monday1
//            case 10...14:
//                quote = QuoteData.Week2.monday2
//            case 15...18:
//                quote = QuoteData.Week2.monday3
//            case 19...24:
//                quote = QuoteData.Week2.monday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func tuesday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.tuesday1
//            case 10...14:
//                quote = QuoteData.Week2.tuesday2
//            case 15...18:
//                quote = QuoteData.Week2.tuesday3
//            case 19...24:
//                quote = QuoteData.Week2.tuesday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func wednesday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.wednesday1
//            case 10...14:
//                quote = QuoteData.Week2.wednesday2
//            case 15...18:
//                quote = QuoteData.Week2.wednesday3
//            case 19...24:
//                quote = QuoteData.Week2.wednesday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func thursday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.thursday1
//            case 10...14:
//                quote = QuoteData.Week2.thursday2
//            case 15...18:
//                quote = QuoteData.Week2.thursday3
//            case 19...24:
//                quote = QuoteData.Week2.thursday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func friday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.friday1
//            case 10...14:
//                quote = QuoteData.Week2.friday2
//            case 15...18:
//                quote = QuoteData.Week2.friday3
//            case 19...24:
//                quote = QuoteData.Week2.friday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        func saturday(_ hour: Int) {
//            switch hour {
//            case 0...9:
//                quote = QuoteData.Week2.saturday1
//            case 10...14:
//                quote = QuoteData.Week2.saturday2
//            case 15...18:
//                quote = QuoteData.Week2.saturday3
//            case 19...24:
//                quote = QuoteData.Week2.saturday4
//            default:
//                print("ERROR: INVALID HOUR!")
//            }
//        }
//
//        switch dayOfWeek {
//        case 1: // Sun
//            print("today is a weekend")
//            sunday(hour)
//        case 2:
//            monday(hour)
//        case 3:
//            tuesday(hour)
//        case 4:
//            wednesday(hour)
//        case 5:
//            thursday(hour)
//        case 6:
//            friday(hour)
//        case 7:
//            saturday(hour)
//        default:
//            print("ERROR: error with dayAndHour")
//            print(dayOfWeek)
//        }
//
//    }



























     // MARK: - Refresh Control
    // https://medium.com/anantha-krishnan-k-g/pull-to-refresh-how-to-implement-f915743703f8

    func nowTableViewSetup() {

        nowTableView.dataSource = self
        nowTableView.delegate = self
        // set estimated row height (needed for auto row height size)
        nowTableView.rowHeight = UITableView.automaticDimension
        nowTableView.estimatedRowHeight = 44
        nowTableView.separatorStyle = .none
    }


    func segueToIntroVC() {
        // return back to main/intro VC
        performSegue(withIdentifier: "Back", sender: self)
    }



    func displayHourInTopicLabel() {
        formatter.dateFormat = "h a" // "a" prints "pm" or "am"
        formatter.amSymbol = "AM"
        formatter.pmSymbol = "PM"

        let hourString = formatter.string(from: Date()) // "12 AM"
        titleLabel.text = "\(hourString) Tips"
    }



    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {



        let dayOfWeek = calendar.component(.weekday, from: date)
        hour = calendar.component(.hour, from: date)
        let week = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)


        //greeting
//        switch hour {
//        case 0...4:
//            greetingLabel.text = "Your Nighttime Tips"
//        case 5...8:
//            greetingLabel.text = "Your Early Morning Tips"
//        case 9...10:
//            greetingLabel.text = "Your Midmorning Tips"
//        case 11...13:
//            greetingLabel.text = "Your Midday Tips"
//        case 14...16:
//            greetingLabel.text = "Your Afternoon Tips"
//        case 17...19:
//            greetingLabel.text = "Your Early Evening Tips"
//        case 20...21:
//            greetingLabel.text = "Your Late Evening Tips"
//        case 22...23:
//            greetingLabel.text = "Your Nighttime Tips"
//        default:
//            greetingLabel.text = "Your Tips"
//        }

        //Display hour for topic title
        displayHourInTopicLabel()


//        if week % 2 == 0 {
//            print("Week: \(week) is even")
//            setupQuoteEven()
//
//
//        } else {
//            print("Week: \(week) is odd")
//            setupQuoteOdd()
//
//        }

        func week1() {
            print("Odd Week")

            switch dayOfWeek {
            case 1: // Sunday
                print("today is Sunday")
                sunday1(hour)
            case 2: // Monday
                print("today is a Monday")
                monday1(hour)
            case 3: // Tuesday
                print("today is a Tuesday")
                tuesday1(hour)
            case 4: // Wednesday
                print("today is a Wednesday")
                wednesday1(hour)
            case 5: // Thursday
                print("today is Thursday")
                thursday1(hour)
            case 6: // Friday
                print("today is Friday")
                friday1(hour)
            case 7: // Saturday
                print("today is Saturday")
                saturday1(hour)
            default:
                print("ERROR: error with dayAndHour")
            }
        }

        func week2() {
            print("Even Week")

            switch dayOfWeek {
            case 1: // Sunday
                print("today is Sunday")
                sunday2(hour)
            case 2: // Monday
                print("today is a Monday")
                monday2(hour)
            case 3: // Tuesday
                print("today is a Tuesday")
                tuesday2(hour)
            case 4: // Wednesday
                print("today is a Wednesday")
                wednesday2(hour)
            case 5: // Thursday
                print("today is Thursday")
                thursday2(hour)
            case 6: // Friday
                print("today is Friday")
                friday2(hour)
            case 7: // Saturday
                print("today is Saturday")
                saturday2(hour)
            default:
                print("ERROR: error with dayAndHour")
            }
        }

        func week3() {
            print("Even Week")

            switch dayOfWeek {
            case 1: // Sunday
                print("today is Sunday")
                sunday3(hour)
            case 2: // Monday
                print("today is a Monday")
                monday3(hour)
            case 3: // Tuesday
                print("today is a Tuesday")
                tuesday3(hour)
            case 4: // Wednesday
                print("today is a Wednesday")
                wednesday3(hour)
            case 5: // Thursday
                print("today is Thursday")
                thursday3(hour)
            case 6: // Friday
                print("today is Friday")
                friday3(hour)
            case 7: // Saturday
                print("today is Saturday")
                saturday3(hour)
            default:
                print("ERROR: error with dayAndHour")
            }
        }

        func week4() {
            print("Even Week")

            switch dayOfWeek {
            case 1: // Sunday
                print("today is Sunday")
                sunday4(hour)
            case 2: // Monday
                print("today is a Monday")
                monday4(hour)
            case 3: // Tuesday
                print("today is a Tuesday")
                tuesday4(hour)
            case 4: // Wednesday
                print("today is a Wednesday")
                wednesday4(hour)
            case 5: // Thursday
                print("today is Thursday")
                thursday4(hour)
            case 6: // Friday
                print("today is Friday")
                friday4(hour)
            case 7: // Saturday
                print("today is Saturday")
                saturday4(hour)
            default:
                print("ERROR: error with dayAndHour")
            }
        }

        func week5() {
            print("Even Week")

            switch dayOfWeek {
            case 1: // Sunday
                print("today is Sunday")
                sunday5(hour)
            case 2: // Monday
                print("today is a Monday")
                monday5(hour)
            case 3: // Tuesday
                print("today is a Tuesday")
                tuesday5(hour)
            case 4: // Wednesday
                print("today is a Wednesday")
                wednesday5(hour)
            case 5: // Thursday
                print("today is Thursday")
                thursday5(hour)
            case 6: // Friday
                print("today is Friday")
                friday5(hour)
            case 7: // Saturday
                print("today is Saturday")
                saturday5(hour)
            default:
                print("ERROR: error with dayAndHour")
            }
        }


        switch weekOfMonth {
        case 1:
            week1()

        case 2:
            week2()

        case 3:
            week3()

        case 4:
            week4()

        case 5:
            week5()

        default:
            week3()
        }

    }


    //MARK: - WEEK 1

    func sunday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic0, safetyTopic0,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic0,
                             sunday0to4Topic0)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, getReadyAMTopic0, breakfastTopic0, homeAMTopic0, bathroomTopic0, cafeTopic0, networkingTopic0, groceryStoreWENDTopic0, travelTopic0,
                             sundayNow5to8Topic0)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic0, groceryStoreWENDTopic0, travelTopic0,
                             sundayNow9to10Topic0)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                networkingTopic0, groceryStoreTopic0, shoppingClothesTopic0, travelTopic0,
                sundayNow9to10Topic0)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic0, groceryStoreWENDTopic0, shoppingClothesTopic0, travelTopic0, sundayNow11to13Topic1)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic0, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic0, networkingTopic0, dateTopic0, shoppingClothesTopic0, groceryStoreTopic0, travelTopic0, sundayNow14to16Topic1)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic0, dateTopic0, networkingTopic0, groceryStoreTopic0, shoppingClothesTopic0, gymTopic0, runningTopic0, yogaTopic0, travelTopic0,
                             sundayNow17to18Topic1)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic0, dateTopic0, safetyTopic0, groceryStoreTopic0, shoppingClothesTopic0, gymTopic0, runningTopic0, yogaTopic0, travelTopic0,
                             sundayNow19to20Topic1)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic0, barTopic0, dateTopic0, safetyTopic0, networkingTopic0, gymTopic0, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic0,
                             sunday21to24Topic1)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func monday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic1, barTopic1, networkingTopic1, safetyTopic1,
                              restaurantTopic1, lateNightSnackTopic1, groceryStoreTopic1, bathroomPMTopic1,
                             homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic1,
                             mondayNow0to4Topic1)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic1, gymTopic1, runningTopic1, yogaTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic0, mondayNow5to8Topic1)

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic1, gymTopic1, runningTopic1, yogaTopic1,  getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic1,
                             cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic0,
                             mondayNow5to8Topic1)

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic1, gymTopic1, runningTopic1, yogaTopic1,  getReadyAMTopic1, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic0, mondayNow9to11Topic1)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic1, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic1, breakTopic1, schoolAMTopic0, mondayNow9to11Topic1)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(morningSnackTopic1, lunchTopic1, restaurantTopic1, cafeTopic1, gymTopic1, runningTopic1, yogaTopic1, workAMTopic0, bathroomTopic1, networkingTopic1, breakTopic0, schoolAMTopic0,
                             mondayNow11to13Topic1)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic1, cafePMTopic1, afternoonSnackTopic1, gymTopic1, runningTopic1, yogaTopic1, workPMTopic0, bathroomTopic1, networkingTopic1, breakTopic0, schoolPMTopic0,
                             mondayNow11to13Topic1)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic1, workPMTopic0, networkingTopic1, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic1, gymTopic1, runningTopic1, yogaTopic1, schoolPMTopic0,
                             mondayNow14to16Topic1)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic1, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic1, happyHourTopic1, networkingTopic1, gymTopic1, runningTopic1, yogaTopic1, schoolPMTopic0,
                             mondayNow14to16Topic1)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic1, runningTopic1, yogaTopic1, groceryStoreWDAYTopic0, shoppingClothesTopic1, dinnerTopic1, restaurantTopic1, happyHourTopic1, networkingTopic1, homePMTopic1,
                             mondayNow17to18Topic1)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic1, runningTopic1, yogaTopic1, groceryStoreWDAYTopic0, shoppingClothesTopic1, dinnerTopic1, restaurantTopic1, barTopic1, dateTopic1, networkingTopic1, safetyTopic1, homePMTopic1,
                             mondayNow19to20Topic1)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic1, restaurantTopic1, barTopic1, networkingTopic1, dateTopic1, safetyTopic1, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic1,
                             mondayNow21to24Topic1)

            
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic2, barTopic2, networkingTopic2, safetyTopic2,
                             restaurantTopic2, lateNightSnackTopic2, groceryStoreTopic2, bathroomPMTopic2, homePMTopic2, eveningRoutineTopic2, bedtimeTopic2, cantSleepTopic2,
                             tuesdayNow0to4Topic1)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic2, gymTopic2, runningTopic2,  yogaTopic2, getReadyAMTopic2, breakfastTopic2, bathroomTopic2, homeAMTopic2, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, schoolAMTopic1,
                             tuesdayNow5to8Topic1) //*

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic2, gymTopic2, runningTopic2, yogaTopic2, getReadyAMTopic2, breakfastTopic2, bathroomTopic2, homeAMTopic2,
                             cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, schoolAMTopic1,
                             tuesdayNow5to8Topic1) //*

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic2, gymTopic2, runningTopic2, yogaTopic2, getReadyAMTopic2, breakfastTopic2, bathroomTopic2, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, networkingTopic2, schoolAMTopic1,
                             tuesdayNow9to11Topic1) //*

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic2, getReadyAMTopic2, breakfastTopic2, bathroomTopic2, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, networkingTopic2, morningSnackTopic2, breakTopic1, schoolAMTopic1,
                             tuesdayNow9to11Topic1)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lunchTopic2, restaurantTopic2, cafePMTopic2, afternoonSnackTopic2, gymTopic2, yogaTopic2, runningTopic2, workPMTopic1, bathroomTopic2, breakTopic1, networkingTopic2, schoolPMTopic1,
                             tuesdayNow11to13Topic1)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic2, restaurantTopic2, cafePMTopic2, afternoonSnackTopic2, gymTopic2, runningTopic2, yogaTopic2, workPMTopic1, bathroomTopic2, networkingTopic2, breakTopic1, schoolPMTopic1,
                             tuesdayNow11to13Topic1) // Tues specific tips

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic2, cafePMTopic2, workPMTopic1, networkingTopic2, breakPMTopic1, commutePMTopic1, groceryStoreWDAYTopic0, shoppingClothesTopic2, gymTopic2, runningTopic2, yogaTopic2, schoolPMTopic1,
                             tuesdayNow14to16Topic1)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic1, afternoonSnackTopic2, breakPMTopic1, commutePMTopic1, groceryStoreWDAYTopic0, shoppingClothesTopic2, happyHourTopic2, networkingTopic2, gymTopic2, runningTopic2, yogaTopic2, schoolPMTopic1,
                             tuesdayNow14to16Topic1)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic1, commutePMTopic1, gymTopic2, runningTopic2, yogaTopic2, groceryStoreWDAYTopic0, shoppingClothesTopic2, dinnerTopic2, restaurantTopic2, happyHourTopic2, networkingTopic2, homePMTopic2,
                             tuesdayNow17to18Topic1)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic2, yogaTopic2, groceryStoreWDAYTopic0, shoppingClothesTopic2, dinnerTopic2, restaurantTopic2, barTopic2, dateTopic2, networkingTopic2, safetyTopic2, homePMTopic2,
                             tuesdayNow19to20Topic1)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic2, restaurantTopic2, barTopic2, networkingTopic2, dateTopic2, safetyTopic2, homePMTopic2, lateNightSnackTopic2, bathroomPMTopic2, eveningRoutineTopic2, bedtimeTopic2, cantSleepTopic2,
                             tuesdayNow21to24Topic1)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(dinnerAfter9PMTopic3, barTopic3, networkingTopic3, safetyTopic3,
                             restaurantTopic3, lateNightSnackTopic3, groceryStoreTopic3, bathroomPMTopic3, homePMTopic3, eveningRoutineTopic3, bedtimeTopic3, cantSleepTopic3,
                             wednesdayNow0to4Topic1)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic3, runningTopic3, yogaTopic3, getReadyAMTopic3, breakfastTopic3, bathroomTopic3, homeAMTopic3, cafeTopic3, commuteAMTopic3, workAMTopic2, schoolAMTopic2,
                             wednesdayNow5to8Topic1) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic3, runningTopic3, yogaTopic3, getReadyAMTopic3, breakfastTopic3, bathroomTopic3, homeAMTopic3,
                             cafeTopic3, commuteAMTopic2, workAMTopic2, schoolAMTopic2,
                             wednesdayNow5to8Topic1)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic3, runningTopic3, yogaTopic3, getReadyAMTopic3, breakfastTopic3, bathroomTopic3, cafeTopic3, commuteAMTopic3, workAMTopic2, networkingTopic3, schoolAMTopic2,
                             wednesdayNow9to11Topic1)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(gymTopic3, runningTopic3, getReadyAMTopic3, breakfastTopic3, bathroomTopic3, cafeTopic3, commuteAMTopic3, workAMTopic2, networkingTopic3, morningSnackTopic3, breakTopic2, schoolAMTopic2,
                             wednesdayNow9to11Topic1)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(lunchTopic3, restaurantTopic3, cafePMTopic3, afternoonSnackTopic3, gymTopic3, yogaTopic3, runningTopic3, workPMTopic3, bathroomTopic3, breakTopic2, networkingTopic3, schoolPMTopic2,
                             wednesdayNow11to13Topic1)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic3, restaurantTopic3, cafePMTopic3, afternoonSnackTopic3, gymTopic3, runningTopic3, yogaTopic3, workPMTopic2, bathroomTopic3, networkingTopic3, breakTopic2, schoolPMTopic2,
                             wednesdayNow11to13Topic1)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(afternoonSnackTopic3, cafePMTopic3, workPMTopic2, networkingTopic3, breakPMTopic2, commutePMTopic2, groceryStoreWDAYTopic0, shoppingClothesTopic2, gymTopic3, runningTopic3, yogaTopic3, schoolPMTopic2,
                             wednesdayNow14to16Topic1)

            setNatureImage(to: "afternoon4")

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic2, afternoonSnackTopic3, breakPMTopic3, commutePMTopic2, groceryStoreWDAYTopic0, shoppingClothesTopic3, happyHourTopic3, networkingTopic3, gymTopic3, runningTopic3, yogaTopic3, schoolPMTopic2,
                             wednesdayNow14to16Topic1)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic2, commutePMTopic2, gymTopic3, runningTopic3, yogaTopic3, groceryStoreWDAYTopic0, shoppingClothesTopic3, dinnerTopic3, restaurantTopic3, happyHourTopic3, networkingTopic3, homePMTopic3,
                             wednesdayNow17to18Topic1)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic3, runningTopic3, yogaTopic3, groceryStoreWDAYTopic0, shoppingClothesTopic3, dinnerTopic3, restaurantTopic3, barTopic3, dateTopic3, networkingTopic3, safetyTopic3, homePMTopic3,
                             wednesdayNow19to20Topic1)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic3, restaurantTopic3, barTopic3, networkingTopic3, dateTopic3, safetyTopic3, homePMTopic3, lateNightSnackTopic3, bathroomPMTopic3, eveningRoutineTopic3, bedtimeTopic3, cantSleepTopic3,
                             wednesdayNow21to24Topic1)

            setNatureImage(to: "night4")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic4, barTopic4, networkingTopic4, safetyTopic4,
                             restaurantTopic4, lateNightSnackTopic4, groceryStoreTopic4, bathroomPMTopic4, homePMTopic4, eveningRoutineTopic4, bedtimeTopic4, cantSleepTopic4,
                             thursdayNow0to4Topic1)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(AMRoutineTopic4, gymTopic4, yogaTopic4, runningTopic4, getReadyAMTopic4, breakfastTopic4, bathroomTopic4, homeAMTopic4, cafeTopic4, commuteAMTopic3, workAMTopic3, schoolAMTopic3,
                             thursdayNow5to8Topic1)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(AMRoutineTopic4, gymTopic4, runningTopic4, yogaTopic4, getReadyAMTopic4, breakfastTopic4, bathroomTopic4, homeAMTopic4,
                             cafeTopic4, commuteAMTopic3, workAMTopic3, schoolAMTopic3,
                             thursdayNow5to8Topic1)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(AMRoutineTopic4, gymTopic4, runningTopic4, yogaTopic4, getReadyAMTopic4, breakfastTopic4, bathroomTopic4, cafeTopic4, commuteAMTopic3, workAMTopic3, networkingTopic4, schoolAMTopic3,
                             thursdayNow9to11Topic1)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(gymTopic4, runningTopic4, getReadyAMTopic4, breakfastTopic4, bathroomTopic4, cafeTopic4, commuteAMTopic3, workAMTopic3, networkingTopic4, morningSnackTopic4, breakTopic3, schoolAMTopic3,
                             thursdayNow9to11Topic1)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(lunchTopic4, restaurantTopic4, cafePMTopic4, afternoonSnackTopic4, gymTopic4, yogaTopic4, runningTopic4, workPMTopic3, bathroomTopic4, breakTopic3, networkingTopic4, schoolPMTopic3,
                             thursdayNow11to13Topic1)

            setNatureImage(to: "midmorning5")

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(lunchTopic4, restaurantTopic4, cafePMTopic4, afternoonSnackTopic4, gymTopic4, runningTopic4, yogaTopic4, workPMTopic3, bathroomTopic4, networkingTopic4, breakTopic3, schoolPMTopic3,
                             thursdayNow11to13Topic1)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(afternoonSnackTopic4, cafePMTopic4, workPMTopic3, networkingTopic4, breakPMTopic3, commutePMTopic3, groceryStoreWDAYTopic0, shoppingClothesTopic4, gymTopic4, runningTopic4, yogaTopic4, schoolPMTopic3,
                             thursdayNow14to16Topic1)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic3, afternoonSnackTopic4, breakPMTopic3, commutePMTopic3, groceryStoreWDAYTopic0, shoppingClothesTopic4, happyHourTopic4, networkingTopic4, gymTopic4, runningTopic4, yogaTopic4, schoolPMTopic3,
                             thursdayNow14to16Topic1)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic3, commutePMTopic3, gymTopic4, runningTopic4, yogaTopic4, groceryStoreWDAYTopic0, shoppingClothesTopic4, dinnerTopic4, restaurantTopic4, happyHourTopic4, networkingTopic4, homePMTopic4,
                             thursdayNow17to18Topic1)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic4, runningTopic4, yogaTopic4, groceryStoreWDAYTopic0, shoppingClothesTopic4, dinnerTopic4, restaurantTopic4, barTopic4, dateTopic4, networkingTopic4, safetyTopic4, homePMTopic4,
                             thursdayNow19to20Topic1)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic4, restaurantTopic4, barTopic4, networkingTopic4, dateTopic4, safetyTopic4, homePMTopic4, lateNightSnackTopic4, bathroomPMTopic4, eveningRoutineTopic4, bedtimeTopic4, cantSleepTopic4,
                             thursdayNow21to24Topic1)

            setNatureImage(to: "night5")


        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic5, barTopic5, networkingTopic5, safetyTopic5,
                             restaurantTopic5, lateNightSnackTopic5, groceryStoreTopic5, bathroomPMTopic5, homePMTopic5, eveningRoutineTopic5, bedtimeTopic4, cantSleepTopic5,
                             fridayNow0to4Topic1)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(AMRoutineTopic5, gymTopic5, yogaTopic5, runningTopic5, getReadyAMTopic5, breakfastTopic5, bathroomTopic5, homeAMTopic5, cafeTopic5, commuteAMTopic4, workAMTopic4, schoolAMTopic4,
                             fridayNow5to8Topic1)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic5, gymTopic5, runningTopic5, yogaTopic5, getReadyAMTopic5, breakfastTopic5, bathroomTopic5, homeAMTopic5,
                             cafeTopic5, commuteAMTopic4, workAMTopic4, schoolAMTopic4,
                             fridayNow5to8Topic1)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic5, gymTopic5, runningTopic5, yogaTopic5, getReadyAMTopic5, breakfastTopic5, bathroomTopic5, cafeTopic5, commuteAMTopic4, workAMTopic4, networkingTopic5, schoolAMTopic4,
                             fridayNow9to11Topic1)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(gymTopic5, runningTopic5, getReadyAMTopic5, breakfastTopic5, bathroomTopic5, cafeTopic5, commuteAMTopic4, workAMTopic4, networkingTopic5, morningSnackTopic5, breakTopic4, schoolAMTopic4,
                             fridayNow9to11Topic1)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic5, restaurantTopic5, cafePMTopic5, afternoonSnackTopic5, gymTopic5, runningTopic5, workPMTopic4, bathroomTopic5, breakTopic4, networkingTopic5, travelTopic1, schoolPMTopic4,
                             fridayNow11to13Topic1)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic5, restaurantTopic5, cafePMTopic5, afternoonSnackTopic5, gymTopic5, runningTopic5, workPMTopic4, bathroomTopic5, networkingTopic5, breakTopic4, travelTopic1, schoolPMTopic4,
                             fridayNow11to13Topic1)

            setNatureImage(to: "day6")

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic5, cafePMTopic5, workPMTopic4, networkingTopic5, breakPMTopic4, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic5, gymTopic5, runningTopic5, travelTopic1, schoolPMTopic2,
                             fridayNow14to16Topic1)

            setNatureImage(to: "afternoon6")


        case 16:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic5, cafePMTopic5, workPMTopic4, breakPMTopic4, commuteFridayPMTopic0, gymTopic5, runningTopic5, happyHourTopic5, networkingTopic5, groceryStoreTopic5, shoppingClothesTopic5, travelTopic1,
                             fridayNow14to16Topic1)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
            appendNineTopics(commuteFridayPMTopic0, gymTopic5, runningTopic5, homePMTopic5, goingOutTopic5, happyHourTopic5, networkingTopic5, dinnerTopic5, restaurantTopic5, groceryStoreTopic5, shoppingClothesTopic5, travelTopic1,
                             fridayNow17to18Topic1)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, runningTopic5, homePMTopic5, goingOutTopic5, dinnerTopic5, restaurantTopic5, barTopic5, networkingTopic5, dateTopic5, safetyTopic5, groceryStoreTopic5, travelTopic1,
                             fridayNow19to20Topic1)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic5, goingOutTopic5, dinnerAfter9PMTopic5, restaurantTopic5,  barTopic5, networkingTopic5, dateTopic5, safetyTopic5,
                lateNightSnackTopic5, eveningRoutineTopic5, bedtimeFriPMTopic5, cantSleepTopic5,
                fridayNow21to24Topic1)

            setNatureImage(to: "night6")

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic6, barTopic6, networkingTopic6, safetyTopic6,
                             restaurantTopic6, lateNightSnackTopic6, groceryStoreTopic6, bathroomPMTopic6, homePMTopic6, eveningRoutineTopic6, bedtimeTopic6, cantSleepTopic2,
                             saturday0to4Topic1)

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic6, gymTopic6, runningTopic6, yogaTopic6, homeAMTopic6, bathroomTopic6, getReadyAMTopic6, breakfastTopic6, cafeTopic6, networkingTopic6, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow5to8Topic1)

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic6, gymTopic6, runningTopic6, yogaTopic6, homeAMTopic6, bathroomTopic6, getReadyAMTopic6, breakfastTopic6, cafeTopic6, networkingTopic6, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow9to10Topic0)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(AMRoutineTopic6, gymTopic6, runningTopic6, yogaTopic6, homeAMTopic6, getReadyAMTopic6, brunchTopic6, cafeTopic6,
                networkingTopic6, groceryStoreTopic6, shoppingClothesTopic6, travelTopic6,
                saturdayNow9to10Topic0)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic6, gymTopic6, runningTopic6, cafePMTopic6,
                             brunchTopic6, lunchTopic6, restaurantTopic6, barTopic6,
                             networkingTopic6, groceryStoreWENDTopic0, shoppingClothesTopic6, travelTopic2,
                             saturdayNow11to13Topic1)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic6, gymTopic6, runningTopic6, yogaTopic6, afternoonSnackTopic6, cafePMTopic6, barTopic6, networkingTopic6, dateTopic6, shoppingClothesTopic6, groceryStoreTopic6, travelTopic2,
                             saturdayNow14to16Topic1)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic6, dinnerTopic6, restaurantTopic6, barTopic6, dateTopic6, networkingTopic6, groceryStoreTopic6, shoppingClothesTopic6, gymTopic6, runningTopic6, yogaTopic6, travelTopic2,
                             saturdayNow17to18Topic1)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic6, dinnerTopic6, restaurantTopic6, barTopic6, dateTopic6, safetyTopic6, groceryStoreTopic6, shoppingClothesTopic6, gymTopic6, runningTopic6, yogaTopic6, travelTopic2,
                             saturdayNow19to20Topic1)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic6, lateNightSnackTopic6, barTopic6, dateTopic6, safetyTopic6, networkingTopic6, gymTopic6, homePMTopic6,
                             bathroomPMTopic6, eveningRoutineTopic6, bedtimeTopic6, cantSleepTopic6,
                             saturday21to24Topic1)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }



    //MARK: - WEEK 2

    func sunday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday0to4Topic2)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow5to8Topic2)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow9to10Topic1)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             sundayNow9to10Topic1)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             sundayNow11to13Topic2)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             sundayNow14to16Topic2)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow17to18Topic2)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow19to20Topic2)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday21to24Topic2)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func monday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow0to4Topic2)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic2)

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic2)

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic1,
                             mondayNow9to11Topic2)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
                             mondayNow9to11Topic2)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic0, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
                             mondayNow11to13Topic2)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             mondayNow11to13Topic2)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic2)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic2)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             mondayNow17to18Topic2)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             mondayNow19to20Topic2)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow21to24Topic2)


        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow0to4Topic2)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic2) //*

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic2) //*

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             tuesdayNow9to11Topic2) //*

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             tuesdayNow9to11Topic2)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             tuesdayNow11to13Topic2)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             tuesdayNow11to13Topic2) // Tues specific tips

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic2)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic2)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             tuesdayNow17to18Topic2)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             tuesdayNow19to20Topic2)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow21to24Topic2)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow0to4Topic2)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic2) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic2)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             wednesdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             wednesdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             wednesdayNow11to13Topic2)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             wednesdayNow11to13Topic2)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             wednesdayNow17to18Topic2)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             wednesdayNow19to20Topic2)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow21to24Topic2)

            setNatureImage(to: "night4")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow0to4Topic2)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic2)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic2)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             thursdayNow9to11Topic2)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             thursdayNow9to11Topic2)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             thursdayNow11to13Topic2)

            setNatureImage(to: "midmorning5")

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             thursdayNow11to13Topic2)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic2)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic2)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             thursdayNow17to18Topic2)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             thursdayNow19to20Topic2)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow21to24Topic2)

            setNatureImage(to: "night5")


        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             fridayNow0to4Topic2)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic2)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic2)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             fridayNow9to11Topic2)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             fridayNow9to11Topic2)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
                             fridayNow11to13Topic2)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
                             fridayNow11to13Topic2)

            setNatureImage(to: "day6")

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic4, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
                             fridayNow14to16Topic2)

            setNatureImage(to: "afternoon6")


        case 16:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic4, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
                             fridayNow14to16Topic2)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic0, groceryStoreTopic6, shoppingClothesTopic0,  travelTopic2,
                             fridayNow17to18Topic2)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic0, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic6, travelTopic2,
                             fridayNow19to20Topic2)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic0,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
                             fridayNow21to24Topic2)

            setNatureImage(to: "night6")

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             saturday0to4Topic2)

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow5to8Topic2)

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow9to10Topic1)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             saturdayNow9to10Topic1)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
                             brunchTopic1, lunchTopic1, restaurantTopic3, barTopic2,
                             networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             saturdayNow11to13Topic2)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             saturdayNow14to16Topic2)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow17to18Topic2)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow19to20Topic2)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             saturday21to24Topic2)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }


    //MARK: - WEEK 3

    func sunday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday0to4Topic3)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow5to8Topic3)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow9to10Topic2)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             sundayNow9to10Topic2)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             sundayNow11to13Topic3)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0,  cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             sundayNow14to16Topic3)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow17to18Topic3)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow19to20Topic3)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday21to24Topic3)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func monday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow0to4Topic3)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic3)

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic3)

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic1,
                             mondayNow9to11Topic3)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
                             mondayNow9to11Topic3)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic0, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
                             mondayNow11to13Topic3)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             mondayNow11to13Topic3)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic3)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic3)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             mondayNow17to18Topic3)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             mondayNow19to20Topic3)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow21to24Topic3)


        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow0to4Topic3)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic3) //*

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic3) //*

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             tuesdayNow9to11Topic3) //*

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             tuesdayNow9to11Topic3)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             tuesdayNow11to13Topic3)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             tuesdayNow11to13Topic3) // Tues specific tips

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic3)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic3)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             tuesdayNow17to18Topic3)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             tuesdayNow19to20Topic3)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow21to24Topic3)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow0to4Topic3)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic3) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic3)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             wednesdayNow9to11Topic3)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             wednesdayNow9to11Topic3)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             wednesdayNow11to13Topic3)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             wednesdayNow11to13Topic3)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic3)

            setNatureImage(to: "afternoon4")

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic3)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             wednesdayNow17to18Topic3)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             wednesdayNow19to20Topic3)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow21to24Topic3)

            setNatureImage(to: "night4")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow0to4Topic3)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic3)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic3)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             thursdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             thursdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             thursdayNow11to13Topic3)

            setNatureImage(to: "midmorning5")

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             thursdayNow11to13Topic3)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             thursdayNow17to18Topic3)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             thursdayNow19to20Topic3)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow21to24Topic3)

            setNatureImage(to: "night5")


        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             fridayNow0to4Topic3)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic3)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic3)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             fridayNow9to11Topic3)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             fridayNow9to11Topic3)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
                             fridayNow11to13Topic3)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
                             fridayNow11to13Topic3)

            setNatureImage(to: "day6")

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic4, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
                             fridayNow14to16Topic3)

            setNatureImage(to: "afternoon6")


        case 16:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic4, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
                             fridayNow14to16Topic3)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic0, groceryStoreTopic6, shoppingClothesTopic0,  travelTopic2,
                             fridayNow17to18Topic3)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic0, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic6, travelTopic2,
                             fridayNow19to20Topic3)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic0,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
                             fridayNow21to24Topic3)

            setNatureImage(to: "night6")

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday3(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             saturday0to4Topic3)

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow5to8Topic3)

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow9to10Topic2)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             saturdayNow9to10Topic2)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
                             brunchTopic1, lunchTopic1, restaurantTopic3, barTopic2,
                             networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             saturdayNow11to13Topic3)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             saturdayNow14to16Topic3)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow17to18Topic3)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow19to20Topic3)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             saturday21to24Topic3)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }


    //MARK: - WEEK 4

    func sunday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday0to4Topic4)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow5to8Topic4)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow9to10Topic3)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             sundayNow9to10Topic3)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             sundayNow11to13Topic4)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             sundayNow14to16Topic4)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow17to18Topic4)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow19to20Topic4)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday21to24Topic4)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func monday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow0to4Topic4)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic4)

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic4)

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic1,
                             mondayNow9to11Topic4)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
                             mondayNow9to11Topic4)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic0, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
                             mondayNow11to13Topic4)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             mondayNow11to13Topic4)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic4)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic4)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             mondayNow17to18Topic4)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             mondayNow19to20Topic4)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow21to24Topic4)


        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow0to4Topic4)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic4) //*

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic4) //*

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             tuesdayNow9to11Topic4) //*

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             tuesdayNow9to11Topic4)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             tuesdayNow11to13Topic4)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             tuesdayNow11to13Topic4) // Tues specific tips

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic4)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic4)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             tuesdayNow17to18Topic4)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             tuesdayNow19to20Topic4)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow21to24Topic4)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow0to4Topic4)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic4) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic4)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             wednesdayNow9to11Topic4)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             wednesdayNow9to11Topic4)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             wednesdayNow11to13Topic4)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             wednesdayNow11to13Topic4)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic4)

            setNatureImage(to: "afternoon4")

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic4)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             wednesdayNow17to18Topic4)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             wednesdayNow19to20Topic4)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow21to24Topic4)

            setNatureImage(to: "night4")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow0to4Topic4)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic4)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic4)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             thursdayNow9to11Topic4)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             thursdayNow9to11Topic4)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             thursdayNow11to13Topic4)

            setNatureImage(to: "midmorning5")

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             thursdayNow11to13Topic4)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic4)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic4)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             thursdayNow17to18Topic4)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             thursdayNow19to20Topic4)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow21to24Topic4)

            setNatureImage(to: "night5")


        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             fridayNow0to4Topic4)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic4)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic4)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             fridayNow9to11Topic4)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             fridayNow9to11Topic4)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
                             fridayNow11to13Topic4)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
                             fridayNow11to13Topic4)

            setNatureImage(to: "day6")

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic4, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
                             fridayNow14to16Topic4)

            setNatureImage(to: "afternoon6")


        case 16:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic4, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
                             fridayNow14to16Topic4)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic0, groceryStoreTopic6, shoppingClothesTopic0,  travelTopic2,
                             fridayNow17to18Topic4)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic0, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic6, travelTopic2,
                             fridayNow19to20Topic4)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic0,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
                             fridayNow21to24Topic4)

            setNatureImage(to: "night6")

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday4(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             saturday0to4Topic4)

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow5to8Topic4)

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow9to10Topic3)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             saturdayNow9to10Topic3)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
                             brunchTopic1, lunchTopic1, restaurantTopic3, barTopic2,
                             networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             saturdayNow11to13Topic4)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             saturdayNow14to16Topic4)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow17to18Topic4)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow19to20Topic4)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             saturday21to24Topic4)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }


    //MARK: - WEEK 5

    func sunday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, networkingTopic1, safetyTopic1,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homeAMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday0to4Topic5)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow5to8Topic5)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             sundayNow9to10Topic4)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             sundayNow9to10Topic4)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, gymTopic0, runningTopic0, cafePMTopic0, brunchTopic0, lunchTopic0, restaurantTopic0, barTopic1, networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             sundayNow11to13Topic5)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             sundayNow14to16Topic5)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow17to18Topic5)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             sundayNow19to20Topic5)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday21to24Topic5)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func monday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0,
                             homePMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow0to4Topic5)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic5)

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             mondayNow5to8Topic5)

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic0, gymTopic2, runningTopic1, yogaTopic0,  getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic1,
                             mondayNow9to11Topic5)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic1,
                             mondayNow9to11Topic5)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(morningSnackTopic0, lunchTopic1, restaurantTopic0, cafeTopic1, gymTopic2, runningTopic1, yogaTopic0, workAMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
                             mondayNow11to13Topic5)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             mondayNow11to13Topic5)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic5)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             mondayNow14to16Topic5)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             mondayNow17to18Topic5)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             mondayNow19to20Topic5)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             mondayNow21to24Topic5)


        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow0to4Topic5)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic5) //*

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             tuesdayNow5to8Topic5) //*

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             tuesdayNow9to11Topic5) //*

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             tuesdayNow9to11Topic5)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             tuesdayNow11to13Topic5)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             tuesdayNow11to13Topic5) // Tues specific tips

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic5)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             tuesdayNow14to16Topic5)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             tuesdayNow17to18Topic5)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             tuesdayNow19to20Topic5)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             tuesdayNow21to24Topic5)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow0to4Topic5)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic5) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             wednesdayNow5to8Topic5)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             wednesdayNow9to11Topic5)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             wednesdayNow9to11Topic5)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             wednesdayNow11to13Topic5)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             wednesdayNow11to13Topic5)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic5)

            setNatureImage(to: "afternoon4")

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             wednesdayNow14to16Topic5)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             wednesdayNow17to18Topic5)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             wednesdayNow19to20Topic5)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             wednesdayNow21to24Topic5)

            setNatureImage(to: "night4")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow0to4Topic5)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(AMRoutineTopic3, getReadyAMTopic1, gymTopic2, yogaTopic0, runningTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic5)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             thursdayNow5to8Topic5)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             thursdayNow9to11Topic5)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             thursdayNow9to11Topic5)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, yogaTopic0, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             thursdayNow11to13Topic5)

            setNatureImage(to: "midmorning5")

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, yogaTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             thursdayNow11to13Topic5)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic5)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, happyHourTopic0, networkingTopic3, gymTopic2, runningTopic0, yogaTopic0, schoolPMTopic1,
                             thursdayNow14to16Topic5)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1,
                             thursdayNow17to18Topic5)

            setNatureImage(to: "afternoon5")

        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic2, runningTopic0, yogaTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, networkingTopic1, safetyTopic2, homePMTopic1,
                             thursdayNow19to20Topic5)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, restaurantTopic1, barTopic0, networkingTopic1, dateTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             thursdayNow21to24Topic5)

            setNatureImage(to: "night5")


        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             fridayNow0to4Topic5)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic1, breakfastTopic1, bathroomTopic1, homeAMTopic0, cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic5)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, homeAMTopic0,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             fridayNow5to8Topic5)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic3, gymTopic2, yogaTopic0, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             fridayNow9to11Topic5)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(gymTopic2, runningTopic1, getReadyAMTopic0, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, morningSnackTopic0, breakTopic0, schoolAMTopic3,
                             fridayNow9to11Topic5)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, runningTopic1, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, travelTopic2, schoolPMTopic3,
                             fridayNow11to13Topic5)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, runningTopic1, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, travelTopic2, schoolPMTopic1,
                             fridayNow11to13Topic5)

            setNatureImage(to: "day6")

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic1, cafePMTopic0, workPMTopic4, networkingTopic4, breakPMTopic1, commuteFridayPMTopic0, groceryStoreWDAYTopic0, shoppingClothesTopic0, gymTopic10, runningTopic0, travelTopic2, schoolPMTopic2,
                             fridayNow14to16Topic5)

            setNatureImage(to: "afternoon6")


        case 16:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic2, cafePMTopic0, workPMTopic4, breakPMTopic1, commuteFridayPMTopic0, gymTopic10, runningTopic0, happyHourTopic0, networkingTopic4, groceryStoreTopic6, shoppingClothesTopic0, travelTopic2,
                             fridayNow14to16Topic5)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
            appendNineTopics(commuteFridayPMTopic0, gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic0, groceryStoreTopic6, shoppingClothesTopic0,  travelTopic2,
                             fridayNow17to18Topic5)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic10, runningTopic0, homePMTopic5, goingOutTopic0, dinnerTopic5, restaurantTopic0, barTopic5, networkingTopic1, dateTopic0, safetyTopic6, groceryStoreTopic6, travelTopic2,
                             fridayNow19to20Topic5)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic5, goingOutTopic0, dinnerAfter9PMTopic4, restaurantTopic0,  barTopic0, networkingTopic1, dateTopic2, safetyTopic6,
                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
                             fridayNow21to24Topic5)

            setNatureImage(to: "night6")

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday5(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic3, networkingTopic1, safetyTopic2,
                             restaurantTopic0, lateNightSnackTopic0, groceryStoreTopic0, bathroomPMTopic0, homePMTopic1, eveningRoutineTopic1, bedtimeTopic1, cantSleepTopic2,
                             saturday0to4Topic5)

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow5to8Topic5)

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0,  runningTopic0, yogaTopic0, homeAMTopic0, bathroomTopic0, getReadyAMTopic0, breakfastTopic0, cafeTopic0, networkingTopic1, groceryStoreWENDTopic0, travelTopic2,
                             saturdayNow9to10Topic4)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(AMRoutineTopic0, gymTopic0, runningTopic0, yogaTopic0, homeAMTopic0, getReadyAMTopic0, brunchTopic0, cafeTopic0,
                             networkingTopic1, groceryStoreTopic0, shoppingClothesTopic0, travelTopic2,
                             saturdayNow9to10Topic4)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic6, gymTopic12, runningTopic0, cafePMTopic1,
                             brunchTopic1, lunchTopic1, restaurantTopic3, barTopic2,
                             networkingTopic1, groceryStoreWENDTopic0, shoppingClothesTopic1, travelTopic2,
                             saturdayNow11to13Topic5)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, gymTopic1, runningTopic0, yogaTopic0, afternoonSnackTopic0, cafePMTopic0, barTopic1, networkingTopic1, dateTopic1, shoppingClothesTopic2, groceryStoreTopic0, travelTopic2,
                             saturdayNow14to16Topic5)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, networkingTopic1, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow17to18Topic5)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, barTopic1, dateTopic1, safetyTopic1, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, runningTopic0, yogaTopic0, travelTopic2,
                             saturdayNow19to20Topic5)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, lateNightSnackTopic1, barTopic2, dateTopic1, safetyTopic1, networkingTopic1, gymTopic1, homePMTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             saturday21to24Topic5)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }
























    func setNatureImage(to imageTitle: String) {
        performUIUpdatesOnMain {
//            self.natureImageView.image = UIImage(named: imageTitle)
        }
    }

//    func updateQuote(quote: Quote) {
////        performUIUpdatesOnMain {
////            self.quoteLabel.text = quote.quote
////            self.authorLabel.text = quote.source
////
//////            self.sizeFooterToFit()// needs to be called after setting quote
////
////            self.quoteView.frame.size.height = self.view.frame.size.width
////        }
//    }

    private func sizeFooterToFit() {
        if let footerView = nowTableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()

            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame

            nowTableView.tableFooterView = footerView
        }
    }




    private func resetTopicButtonOriginalStyle(button: CircleButton) {

        performUIUpdatesOnMain {
            // reset to original color display
//            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
//            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
//            button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)

            self.topic0Button.imageView?.image = UIImage(named: self.topics[0].icon)
            self.topic1Button.imageView?.image = UIImage(named: self.topics[1].icon)
            self.topic2Button.imageView?.image = UIImage(named: self.topics[2].icon)
            self.topic3Button.imageView?.image = UIImage(named: self.topics[3].icon)
            self.topic4Button.imageView?.image = UIImage(named: self.topics[4].icon)
            self.topic5Button.imageView?.image = UIImage(named: self.topics[5].icon)
            self.topic6Button.imageView?.image = UIImage(named: self.topics[6].icon)
            self.topic7Button.imageView?.image = UIImage(named: self.topics[7].icon)
            self.topic8Button.imageView?.image = UIImage(named: self.topics[8].icon)
            self.topic9Button.imageView?.image = UIImage(named: self.topics[9].icon)
            self.topic10Button.imageView?.image = UIImage(named: self.topics[10].icon)
            self.topic11Button.imageView?.image = UIImage(named: self.topics[11].icon)


            let unTappedButtonEdgeInsets = UIEdgeInsets(top: 15, left: 15 , bottom: 15, right: 15)

            self.topic0Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic1Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic2Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic3Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic4Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic5Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic6Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic7Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic8Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic9Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic10Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.topic11Button.imageEdgeInsets = unTappedButtonEdgeInsets
        }
    }

    func setupButtonIcons(_ topics: [Topic]) {

        //https://stackoverflow.com/questions/1469474/setting-an-image-for-a-uibutton-in-code
        print("topics: \(topics)")

            //row 1
            self.topic0Button.setImage(UIImage(named: topics[0].icon) , for: UIControl.State.normal)
            self.topic1Button.setImage(UIImage(named: topics[1].icon) , for: UIControl.State.normal)
            self.topic2Button.setImage(UIImage(named: topics[2].icon) , for: UIControl.State.normal)
            self.topic3Button.setImage(UIImage(named: topics[3].icon) , for: UIControl.State.normal)
            self.topic4Button.setImage(UIImage(named: topics[4].icon) , for: UIControl.State.normal)
            self.topic5Button.setImage(UIImage(named: topics[5].icon) , for: UIControl.State.normal)
            self.topic6Button.setImage(UIImage(named: topics[6].icon) , for: UIControl.State.normal)
            self.topic7Button.setImage(UIImage(named: topics[7].icon) , for: UIControl.State.normal)

            self.topic8Button.setImage(UIImage(named: topics[8].icon) , for: UIControl.State.normal)
            self.topic9Button.setImage(UIImage(named: topics[9].icon) , for: UIControl.State.normal)
            self.topic10Button.setImage(UIImage(named: topics[10].icon) , for: UIControl.State.normal)
            self.topic11Button.setImage(UIImage(named: topics[11].icon) , for: UIControl.State.normal)

            //row 3

    }



    func appendNineTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic, _ topic4: Topic, _ topic5: Topic, _ topic6: Topic, _ topic7: Topic, _ topic8: Topic, _ topic9: Topic, _ topic10: Topic, _ topic11: Topic, _ topic12Now: Topic) {

        topics = [topic0, topic1, topic2, topic3,
                  topic4, topic5, topic6, topic7,
                  topic8, topic9, topic10, topic11,
                  topic12Now]



        setupButtonIcons(topics)

        self.topic0Label.text = topic0.title
        self.topic1Label.text = topic1.title
        self.topic2Label.text = topic2.title
        self.topic3Label.text = topic3.title
        self.topic4Label.text = topic4.title
        self.topic5Label.text = topic5.title
        self.topic6Label.text = topic6.title
        self.topic7Label.text = topic7.title

        self.topic8Label.text = topic8.title
        self.topic9Label.text = topic9.title
        self.topic10Label.text = topic10.title
        self.topic11Label.text = topic11.title

//        self.topic1Label.sizeToFit()



        print("topics count \(topics.count)")


        print("* \(self.topics[0].icon)")
        print("* \(self.topics[1].icon)")
        print("* \(self.topics[2].icon)")
        print("* \(self.topics[3].icon)")

//        self.topic0Button.imageView?.image = UIImage(named: topic0.icon)
//        self.topic1Button.imageView?.image = UIImage(named: topic1.icon)
//        self.topic2Button.imageView?.image = UIImage(named: topic2.icon)
//        self.topic3Button.imageView?.image = UIImage(named: topic3.icon)
//        self.topic4Button.imageView?.image = UIImage(named: topic4.icon)
//        self.topic5Button.imageView?.image = UIImage(named: topic5.icon)
//        self.topic6Button.imageView?.image = UIImage(named: topic6.icon)
//        self.topic7Button.imageView?.image = UIImage(named: topic7.icon)

    

        // set UIBUttons COLOR
//        self.topic0Button.layer.borderColor = UIColor.init(hexString: "9A165F", withAlpha: 1)?.cgColor
//        self.topic1Button.layer.borderColor = UIColor.init(hexString: "5F1078", withAlpha: 1)?.cgColor
//        self.topic2Button.layer.borderColor = UIColor.init(hexString: "160D46", withAlpha: 1)?.cgColor
//        self.topic3Button.layer.borderColor = UIColor.init(hexString: "9A165F", withAlpha: 1)?.cgColor
//        self.topic4Button.layer.borderColor = UIColor.init(hexString: "5F1078", withAlpha: 1)?.cgColor
//        self.topic5Button.layer.borderColor = UIColor.init(hexString: "160D46", withAlpha: 1)?.cgColor
//        self.topic6Button.layer.borderColor = UIColor.init(hexString: "9A165F", withAlpha: 1)?.cgColor
//        self.topic7Button.layer.borderColor = UIColor.init(hexString: "5F1078", withAlpha: 1)?.cgColor
//
//        self.topic0Button.setTitleColor(UIColor.init(hexString: "9A165F", withAlpha: 1), for: .normal)
//        self.topic1Button.setTitleColor(UIColor.init(hexString: "5F1078", withAlpha: 1), for: .normal)
//        self.topic2Button.setTitleColor(UIColor.init(hexString: "160D46", withAlpha: 1), for: .normal)
//        self.topic3Button.setTitleColor(UIColor.init(hexString: "9A165F", withAlpha: 1), for: .normal)
//        self.topic4Button.setTitleColor(UIColor.init(hexString: "5F1078", withAlpha: 1), for: .normal)
//        self.topic5Button.setTitleColor(UIColor.init(hexString: "160D46", withAlpha: 1), for: .normal)
//        self.topic6Button.setTitleColor(UIColor.init(hexString: "9A165F", withAlpha: 1), for: .normal)
//        self.topic7Button.setTitleColor(UIColor.init(hexString: "5F1078", withAlpha: 1), for: .normal)


        // set 4 'Now' tips to be displayed in initial table view
        appendNowTips()


    }

    func appendNowTips() {
        // for display in table view at launch
        //
        tips = [topics[12].tip[0],
                topics[12].tip[1],
                topics[12].tip[2],
                topics[12].tip[3]]

        print("tips array count: \(tips.count)")
    }

    func scrollToTopTableView() {
        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.nowTableView.setContentOffset(.zero, animated: false)
        }
    }

    // MARK: - IBActions

    @IBAction func goToYouTabTapped(_ sender: Any) {
        scrollToTopTableView()
        tabBarController?.selectedIndex = 1
    }

    @IBAction func returnToTopTapped(_ sender: Any) {
        scrollToTopTableView()

    }

//    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.nowTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }


    @IBAction func topicButtonTapped(_ sender: CircleButton) {
        //IBAction linked to all CircleButton(s)
        if let topicNumber = topicButtons.index(of: sender) {

            flipButton(at: topicNumber, on: sender)

        } else {
            print("ARE WE IN ELSE?")
            performUIUpdatesOnMain {
                self.createAlert(title: "ERROR", message: "Could not load selected tips.")
            }
        }
    }



    func flipButton(at indexNumber: Int, on button: CircleButton) {

        // reset buttons to original UI display
        resetTopicButtonOriginalStyle(button: topic0Button)
        resetTopicButtonOriginalStyle(button: topic1Button)
        resetTopicButtonOriginalStyle(button: topic2Button)
        resetTopicButtonOriginalStyle(button: topic3Button)
        resetTopicButtonOriginalStyle(button: topic4Button)
        resetTopicButtonOriginalStyle(button: topic5Button)
        resetTopicButtonOriginalStyle(button: topic6Button)
        resetTopicButtonOriginalStyle(button: topic7Button)

        resetTopicButtonOriginalStyle(button: topic8Button)
        resetTopicButtonOriginalStyle(button: topic9Button)
        resetTopicButtonOriginalStyle(button: topic10Button)
        resetTopicButtonOriginalStyle(button: topic11Button)
        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped")

            // Selected button previously tapped, return to Now Tips
            // Check if this button has been tapped just prior
            appendNowTips()

            // Unselected
            performUIUpdatesOnMain {

//                button.imageEdgeInsets = UIEdgeInsets(top: 14, left: 14 , bottom: 14, right: 14)
//                button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
//
//                button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)

                self.displayHourInTopicLabel()


            }

            currentIndex = -1
        } else {

            print("B - Newly Tapped")

            // select button NOT previously tapped
            // gray out selected button
            // display selected topic tips

            appendTipsArrayBasedOnTopicSelected(indexNumber)

            // Selected
            performUIUpdatesOnMain {

                button.imageEdgeInsets = UIEdgeInsets(top: 0.5, left: 0.5 , bottom: 0.5, right: 0.5)
                button.imageView?.image = UIImage(named: "icons8-cancel")
                // button title


//                button.setTitleColor(.white, for: .normal)
//                button.backgroundColor = NowConstants.YvonneColor.defaultBlue

                //Display selected Topic Title
                let originalTitleText = self.topics[indexNumber].title
                let replacedText = originalTitleText.replacingOccurrences(of: "\n", with: "").uppercased()

//                self.topicLabel.text = "\(replacedText) TIPS"

            }

            currentIndex = indexNumber
        }// end of else

        performUIUpdatesOnMain {
            self.nowTableView.reloadData()
        }
    }

    func appendTipsArrayBasedOnTopicSelected(_ index: Int) {
        tips = []

        // Take selected index in topics array and subtract 1 because we start with zero
        let counter = (topics[index].tip.count - 1)

        print("counter: \(counter)")

        for item in 0...counter {
            tips.append(topics[index].tip[item])
        }
    }


    @IBAction func sourceButtonTapped(_ sender: Any) {
        print("go to source")

    }





} // End of Home2ViewController

// MARK: - Table View Methods

extension NowViewController: UITableViewDataSource, UITableViewDelegate {



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tips.count
    }

    func tipIconColor(selectedButton: Int) -> UIColor{
        var selectedColor = UIColor.flatTeal()
        switch selectedButton {
        case 0:
            selectedColor = UIColor.flatMint()
        case 1:
            UIColor.flatRed()
        case 2:
            UIColor.flatPink()
        case 3:
            UIColor.flatPlum()
        case 4:
            UIColor.flatTeal()
        case 5:
            UIColor.flatGreen()
        case 6:
            UIColor.flatMaroon()
        default:
            UIColor.flatTeal()
        }

        return selectedColor ?? UIColor.flatTeal()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /* In the future, you could create multiple subviews and then use a switch statement to display data for each subview
        https://www.makeschool.com/online-courses/utorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui */

        // Whatever tip is at each row
        let tip = tips[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NowTableViewCell

        // cell's bottom line UI
        cell.layoutMargins = UIEdgeInsets.zero

        cell.tipNumberLabel.text = "\(indexPath.row + 1)"

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        //Tell UITableViewCell who it's delegate is
        //Give the boss the intern
        cell.delegate = self //self is the NowVC

        return cell
    }






    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nowTableView.deselectRow(at: indexPath, animated: true)

        let tip = tips[indexPath.row]

        let app = UIApplication.shared
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NowTableViewCell
        if let url = tip.sourceURL {

            // print: true or false
            print("verifyURL in 'Now' VC: \(verifyUrl(urlString: url))")

            if verifyUrl(urlString: url) == true {
                app.open(URL(string:url)!)
            } else {
                performUIUpdatesOnMain {
                    self.createAlert(title: "Could not open URL", message: "Check your Internet connection and try again.")
                }
            }
        }
    }
}

// MARK: - Table View Cell Methods

extension NowViewController: NowTableViewCellDelegate {

    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sourceURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sourceURL)
        safariVC.dismissButtonStyle = .close
        safariVC.preferredBarTintColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        safariVC.preferredControlTintColor = UIColor.init(hexString: "2283F6", withAlpha: 1)
        present(safariVC, animated: true, completion: nil)




    }
}
