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
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!


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

    var quote = Quote(quote: "", source: "", bio: "")

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
        footerView.frame.size.height = self.view.frame.size.width + 20
        //setupQuote() moved into dayOfWeekAndHour()

        dayOfWeekAndHour()

        nowTableViewSetup()


    }

















    func setupButtonsQuoteImage(day: Int) {

        //        if let imageToLoad = selectedImage {
        //            imageView.image  = UIImage(named: imageToLoad)
        //        }

        // Set initial quote

        authorLabel.text = headers[day].quote.source
    }


    func setupQuoteOdd() {
        print("Refresh COUNTER table view")
        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)

        //
        func sunday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.sunday1
            case 10...14:
                quote = QuoteData.Week1.sunday2
            case 15...18:
                quote = QuoteData.Week1.sunday3
            case 19...24:
                quote = QuoteData.Week1.sunday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func monday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.monday1
            case 10...14:
                quote = QuoteData.Week1.monday2
            case 15...18:
                quote = QuoteData.Week1.monday3
            case 19...24:
                quote = QuoteData.Week1.monday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func tuesday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.tuesday1
            case 10...14:
                quote = QuoteData.Week1.tuesday2
            case 15...18:
                quote = QuoteData.Week1.tuesday3
            case 19...24:
                quote = QuoteData.Week1.tuesday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func wednesday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.wednesday1
            case 10...14:
                quote = QuoteData.Week1.wednesday2
            case 15...18:
                quote = QuoteData.Week1.wednesday3
            case 19...24:
                quote = QuoteData.Week1.wednesday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func thursday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.thursday1
            case 10...14:
                quote = QuoteData.Week1.thursday2
            case 15...18:
                quote = QuoteData.Week1.thursday3
            case 19...24:
                quote = QuoteData.Week1.thursday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func friday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.friday1
            case 10...14:
                quote = QuoteData.Week1.friday2
            case 15...18:
                quote = QuoteData.Week1.friday3
            case 19...24:
                quote = QuoteData.Week1.friday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func saturday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week1.saturday1
            case 10...14:
                quote = QuoteData.Week1.saturday2
            case 15...18:
                quote = QuoteData.Week1.saturday3
            case 19...24:
                quote = QuoteData.Week1.saturday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        switch dayOfWeek {
        case 1: // Sun
            print("today is a weekend")
            sunday(hour)
        case 2:
            monday(hour)
        case 3:
            tuesday(hour)
        case 4:
            wednesday(hour)
        case 5:
            thursday(hour)
        case 6:
            friday(hour)
        case 7:
            saturday(hour)
        default:
            print("ERROR: error with dayAndHour")
            print(dayOfWeek)
        }

        quoteLabel.text = quote.quote
        authorLabel.text = quote.source

    }

    //
    func setupQuoteEven() {
        print("Refresh COUNTER table view")
        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)

        //
        func sunday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.sunday1
            case 10...14:
                quote = QuoteData.Week2.sunday2
            case 15...18:
                quote = QuoteData.Week2.sunday3
            case 19...24:
                quote = QuoteData.Week2.sunday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func monday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.monday1
            case 10...14:
                quote = QuoteData.Week2.monday2
            case 15...18:
                quote = QuoteData.Week2.monday3
            case 19...24:
                quote = QuoteData.Week2.monday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func tuesday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.tuesday1
            case 10...14:
                quote = QuoteData.Week2.tuesday2
            case 15...18:
                quote = QuoteData.Week2.tuesday3
            case 19...24:
                quote = QuoteData.Week2.tuesday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func wednesday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.wednesday1
            case 10...14:
                quote = QuoteData.Week2.wednesday2
            case 15...18:
                quote = QuoteData.Week2.wednesday3
            case 19...24:
                quote = QuoteData.Week2.wednesday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func thursday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.thursday1
            case 10...14:
                quote = QuoteData.Week2.thursday2
            case 15...18:
                quote = QuoteData.Week2.thursday3
            case 19...24:
                quote = QuoteData.Week2.thursday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func friday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.friday1
            case 10...14:
                quote = QuoteData.Week2.friday2
            case 15...18:
                quote = QuoteData.Week2.friday3
            case 19...24:
                quote = QuoteData.Week2.friday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        func saturday(_ hour: Int) {
            switch hour {
            case 0...9:
                quote = QuoteData.Week2.saturday1
            case 10...14:
                quote = QuoteData.Week2.saturday2
            case 15...18:
                quote = QuoteData.Week2.saturday3
            case 19...24:
                quote = QuoteData.Week2.saturday4
            default:
                print("ERROR: INVALID HOUR!")
            }
        }

        switch dayOfWeek {
        case 1: // Sun
            print("today is a weekend")
            sunday(hour)
        case 2:
            monday(hour)
        case 3:
            tuesday(hour)
        case 4:
            wednesday(hour)
        case 5:
            thursday(hour)
        case 6:
            friday(hour)
        case 7:
            saturday(hour)
        default:
            print("ERROR: error with dayAndHour")
            print(dayOfWeek)
        }

        quoteLabel.text = quote.quote
        authorLabel.text = quote.source

    }



























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


        if week % 2 == 0 {
            print("Week: \(week) is even")
            setupQuoteEven()


        } else {
            print("Week: \(week) is odd")
            setupQuoteOdd()

        }

        func oddWeek() {
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

        func evenWeek() {
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

        switch weekOfMonth {
        case 1,3,5:
            oddWeek()

        default:
            evenWeek()
        }


    }

    //MARK: - WEEK 1

    func sunday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, barTopic0, safetyTopic1, relationshipPMTopic0,
                             bathroomPMTopic0, homeAMTopic0, lateNightSnackTopic0, meditationTopic0,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday0to4Week1Topic1)

            setNatureImage(to: "night1")

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic0, breakfastTopic0, homeAMTopic0,
                             bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, cafeTopic0,
                             meditationTopic0, gymTopic0, yogaTopic0, travelTopic2,
                             weekendNow5to8Topic0)

            setNatureImage(to: "morning1")

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic0, breakfastTopic0, homeAMTopic0, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, meditationTopic0, gymTopic0,  yogaTopic0, cafeTopic0, travelTopic2, sunday9to10Topic1)

            setNatureImage(to: "morning1")

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(motivateDayTopic0, AMRoutineTopic0, homeAMTopic0, brunchTopic0, relationshipAMTopic0, parentingAMTopic0, gymTopic0, cafeTopic0, groceryStoreTopic0, shoppingClothesTopic0, studyTopic0, travelTopic2, sunday9to10Topic1)

            setNatureImage(to: "midmorning1")

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(motivateDayTopic0, homeAMTopic0, brunchTopic0, lunchTopic0,  cafeTopic0, groceryStoreTopicWEND, shoppingClothesTopic1, gymTopic0, networkingTopic1, studyTopic0, sideHustleTopic0, travelTopic2,
                             sundayNow11to14Topic1)

            setNatureImage(to: "day1")

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, gymTopic1, shoppingClothesTopic2, groceryStoreTopic0, cafePMTopic0, barTopic1, networkingTopic1, afternoonSnackTopic0, homePMTopic0, studyTopic0, sideHustleTopic1, travelTopic2, weekendNow14to16Topic0)

            setNatureImage(to: "afternoon1")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic0, gymTopic1, homePMTopic0, relationshipPMTopic0, parentingPMTopic0, studyTopic0, sideHustleTopic1, travelTopic2, sundayNow17to18Topic0)

            setNatureImage(to: "sunset1")


        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic1, homePMTopic0, relationshipPMTopic0, parentingPMTopic0, studyTopic0, sideHustleTopic1, travelTopic2, sundayNow19to20Topic0)

            setNatureImage(to: "sunset1")

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, barTopic2, safetyTopic1, dateTopic1, relationshipPMTopic0, homePMTopic0, dinnerAfter9PMTopic0, lateNightSnackTopic1,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic0, cantSleepTopic1,
                             sunday21to24Topic1)

            setNatureImage(to: "night1")


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
            appendNineTopics(motivatePMTopic0, barTopic3, safetyTopic2, lateNightSnackTopic0,
                             bathroomPMTopic0, homePMTopic1, relationshipPMTopic1, meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             weekdayNow0to4Topic0)

            setNatureImage(to: "night2")

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic0, getReadyAMTopic0, gymTopic2, runningTopic1, meditationTopic1, breakfastTopic1, bathroomTopic1, relationshipAMTopic0, parentingAMTopic0, cafeTopic1, commuteAMTopic0, weekdayNow5to8Topic0)

            setNatureImage(to: "morning2")

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic0, getReadyAMTopic0, gymTopic2, breakfastTopic1, relationshipAMTopic0, parentingAMTopic0, bathroomTopic1,
                             cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1,
                             weekdayNow5to8Topic0)

            setNatureImage(to: "morning2")

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic0, getReadyAMTopic0, gymTopic2, runningTopic1, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, schoolAMTopic1, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, gymTopic2, runningTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, morningSnackTopic0, breakTopic0, meditationTopic1, schoolAMTopic1, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, morningSnackTopic0, lunchTopic1, restaurantTopic0, cafeTopic1, meditationTopic1, gymTopic2, workAMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolAMTopic1,
                             weekdayNow11to14Topic0)

            setNatureImage(to: "midmorning2")

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(motivateDayTopic0, lunchTopic1, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic2, meditationTopic0, workPMTopic0, bathroomTopic1, networkingTopic2, breakTopic0, schoolPMTopic1,
                             weekdayNow11to14Topic0)

            setNatureImage(to: "day2")

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, afternoonSnackTopic1, cafePMTopic0, gymTopic2, yogaTopic0, workPMTopic0, networkingTopic3, breakPMTopic0, meditationTopic1, commutePMTopic0, groceryStoreTopicWDAY, schoolPMTopic1,
                             weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, workPMTopic0, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0,
                             groceryStoreTopicWDAY, happyHourTopic0, gymTopic2, yogaTopic0, networkingTopic3, parentingPMTopic0, studyTopic1,
                             weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")

        case 17...18:
            print("weekdayMTW, Early-Evening")
            setNatureImage(to: "sunset2")

            appendNineTopics(motivatePMTopic0, workLateTopic0, commutePMTopic0, gymTopic2, groceryStoreTopicWDAY, dinnerTopic1, restaurantTopic1, happyHourTopic0, networkingTopic3, homePMTopic1, parentingPMTopic0, studyTopic1, weekdayNow17to18Topic0)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic2, groceryStoreTopicWDAY, dinnerTopic1, restaurantTopic1, barTopic5, dateTopic2, relationshipPMTopic1, networkingTopic1, homePMTopic1, parentingPMTopic0, studyTopic1,
                             weekdayNow19to20Topic0)


            setNatureImage(to: "sunset2")
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic0, barTopic0, safetyTopic2, relationshipPMTopic1, parentingBedtimeTopic0, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic1, cantSleepTopic2,
                             weekdayNow21to24Topic0)

            setNatureImage(to: "night2")

            
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
            appendNineTopics(motivatePMTopic0, barTopic1, safetyTopic3, lateNightSnackTopic0,
                             relationshipPMTopic0, homePMTopic2, bathroomPMTopic0, meditationTopic0,
                            journalTopic0, eveningRoutineTopic0, bedtimeTopic2, cantSleepTopic3,
                             weekdayNow0to4Topic1)

            setNatureImage(to: "night3")

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic1, AMRoutineTopic1, getReadyAMTopic1, gymTopic3, runningTopic0, meditationTopic0, breakfastTopic2,
                             bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic2, commuteTuesdayAMTopic0,
                             weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic1, AMRoutineTopic1, getReadyAMTopic1, gymTopic3,
                             breakfastTopic2, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, schoolAMTopic2,
                             weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic1, AMRoutineTopic1, getReadyAMTopic1, gymTopic3, breakfastTopic2, bathroomTopic2,
                             cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, morningSnackTopic1, networkingTopic4, schoolAMTopic2,
                             weekdayNow9to11Topic1) //*

            setNatureImage(to: "midmorning3")

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, gymTopic3, runningTopic1, cafeTopic2, commuteTuesdayAMTopic0, bathroomTopic2,
                             workAMTopic1, morningSnackTopic1, breakTopic1, meditationTopic1, networkingTopic4, schoolAMTopic2,
                             weekdayNow9to11Topic1)

            setNatureImage(to: "midmorning3")

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, morningSnackTopic1, lunchTopic2, restaurantTopic1, cafeTopic2, bathroomTopic2, meditationTopic1, gymTopic3, workAMTopic1, networkingTopic1, breakTopic1, schoolAMTopic2,
                             tuesdayNow11to14Topic0)

            setNatureImage(to: "day3")

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(motivateDayTopic1, lunchTopic2, restaurantTopic1, cafePMTopic0, afternoonSnackTopic0,
                             gymTopic3, yogaTopic0, meditationTopic0, workPMTopic1, networkingTopic1, breakTopic1, schoolPMTopic2,
                             tuesdayNow11to14Topic0) // Tues specific tips

            setNatureImage(to: "day3")

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, afternoonSnackTopic1, cafePMTopic1, gymTopic4, yogaTopic0, meditationTopic0, workPMTopic1, networkingTopic2, breakPMTopic1, commutePMTopic1, groceryStoreTopic3, schoolPMTopic2,
                             weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, workPMTopic1, afternoonSnackTopic2, breakPMTopic1, commutePMTopic1, groceryStoreTopic3, happyHourTopic1, gymTopic4, yogaTopic0, networkingTopic2, parentingPMTopic0, studyTopic2,
                             weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(motivatePMTopic0, workLateTopic1, commutePMTopic1, happyHourTopic1, gymTopic4, groceryStoreTopic3, dinnerTopic2, restaurantTopic2, networkingTopic2, homePMTopic2, parentingPMTopic0, studyTopic2,
                             weekdayNow17to18Topic1)

            setNatureImage(to: "sunset3")

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic4, groceryStoreTopic3, dinnerTopic2, restaurantTopic2, barTopic2, dateTopic0, relationshipPMTopic0, networkingTopic2, homePMTopic2, parentingPMTopic0, studyTopic2,weekdayNow19to20Topic1)

            setNatureImage(to: "sunset3")

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic1, barTopic3, safetyTopic3,
                             relationshipPMTopic0, parentingBedtimeTopic0, homePMTopic2, lateNightSnackTopic1,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic2, cantSleepTopic3,
                             weekdayNow21to24Topic1)

            setNatureImage(to: "night3")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(motivatePMTopic0, barTopic4, safetyTopic4, lateNightSnackTopic0,
                             relationshipPMTopic1, homePMTopic3, bathroomPMTopic1, meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic3, cantSleepTopic1,
                             weekdayNow0to4Topic2)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic2, getReadyAMTopic2, gymTopic5, runningTopic1, meditationTopic1, breakfastTopic3, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, cafeTopic3, commuteAMTopic2,
                             weekdayNow5to8Topic2) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic2, getReadyAMTopic2, gymTopic5, breakfastTopic3, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, cafeTopic3, commuteAMTopic2, workAMTopic2, schoolAMTopic3, weekdayNow5to8Topic2)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic2, getReadyAMTopic2, gymTopic5, breakfastTopic3, bathroomTopic0, cafeTopic3, commuteAMTopic2, workAMTopic2, morningSnackTopic1, networkingTopic3, schoolAMTopic3,
                             weekdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(motivateDayTopic2, gymTopic5, runningTopic1, cafeTopic3, commuteAMTopic2, bathroomTopic0, workAMTopic2, morningSnackTopic2, breakTopic0, meditationTopic0, networkingTopic3, schoolAMTopic3,
                             weekdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(motivateDayTopic2, morningSnackTopic2, lunchTopic3, restaurantTopic2, cafeTopic3, bathroomTopic0, gymTopic5, meditationTopic1,   workAMTopic2, breakTopic0, networkingTopic3, schoolAMTopic3, weekdayNow11to14Topic1)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(motivateDayTopic2, lunchTopic3, restaurantTopic2, cafePMTopic1,  afternoonSnackTopic0, gymTopic6, yogaTopic0, meditationTopic1, workAMTopic2, breakTopic0,networkingTopic4, schoolPMTopic3,
                             weekdayNow11to14Topic1)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(motivateDayTopic2, afternoonSnackTopic1, cafePMTopic0,
                             workPMTopic2, breakPMTopic0, networkingTopic4, commutePMTopic2, gymTopic6, yogaTopic0, meditationTopic1, groceryStoreTopic4, schoolPMTopic3, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")


        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(motivateDayTopic2, workPMTopic2, afternoonSnackTopic2, breakPMTopic0, commutePMTopic2, groceryStoreTopic4, gymTopic6, yogaTopic0, happyHourTopic0, networkingTopic4, parentingPMTopic0, studyTopic0,
                             weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(motivatePMTopic0, workLateTopic2, commutePMTopic2, gymTopic6, happyHourTopic0, networkingTopic3, groceryStoreTopic4, dinnerTopic3, restaurantTopic3,  homePMTopic3, parentingPMTopic0, studyTopic0, weekdayNow17to18Topic2)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(motivatePMTopic0, gymTopic6, groceryStoreTopic4, dinnerTopic3, restaurantTopic3, barTopic5, networkingTopic3, dateTopic1, relationshipPMTopic1, homePMTopic3, parentingPMTopic0, studyTopic0, weekdayNow19to20Topic2)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic2, barTopic0, safetyTopic4,
                             relationshipPMTopic1, parentingBedtimeTopic0, homePMTopic3, lateNightSnackTopic1,
                             bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic3, cantSleepTopic1,
                             weekdayNow21to24Topic2)

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
            appendNineTopics(motivatePMTopic0, barTopic1, safetyTopic5, lateNightSnackTopic0,
                             relationshipPMTopic0, homePMTopic4, bathroomPMTopic0, meditationTopic0,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic4, cantSleepTopic1,
                             weekdayNow0to4Topic3)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(motivateAMTopic0, AMRoutineTopic3, getReadyAMTopic3, gymTopic7, runningTopic0, meditationTopic1, breakfastTopic0, bathroomTopic1, relationshipAMTopic0, parentingAMTopic0, cafeTopic0, commuteAMTopic3,
                             weekdayNow5to8Topic3)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(motivateAMTopic0, AMRoutineTopic3, getReadyAMTopic3, gymTopic7,  breakfastTopic0, bathroomTopic1, relationshipAMTopic0, parentingAMTopic0, cafeTopic0, commuteAMTopic3, workAMTopic3, schoolAMTopic1,
                             weekdayNow5to8Topic3)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(motivateAMTopic0, AMRoutineTopic3, getReadyAMTopic3, gymTopic7, breakfastTopic0, bathroomTopic1, cafeTopic0, commuteAMTopic3, workAMTopic3, morningSnackTopic1, networkingTopic1, schoolAMTopic1,
                             weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(motivateDayTopic0, gymTopic7, runningTopic1, meditationTopic0, cafeTopic0, commuteAMTopic0, bathroomTopic1, workAMTopic3, networkingTopic1, breakTopic1, morningSnackTopic0, schoolAMTopic1,
                             weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(motivateDayTopic0, morningSnackTopic0, lunchTopic4, restaurantTopic4, cafeTopic0, bathroomTopic1, meditationTopic0, gymTopic7, workAMTopic3, breakTopic1, networkingTopic1, schoolAMTopic1, weekdayNow11to14Topic2)

            setNatureImage(to: "midmorning5")


        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(motivateDayTopic0, lunchTopic4, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0, gymTopic8, yogaTopic0, meditationTopic0, workPMTopic3, breakTopic0, networkingTopic2, schoolPMTopic1,
                             weekdayNow11to14Topic2)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(motivateDayTopic0, afternoonSnackTopic1, cafePMTopic1, workPMTopic3, breakPMTopic0, networkingTopic2, commutePMTopic3, gymTopic8, yogaTopic0, meditationTopic0, groceryStoreTopic5, schoolPMTopic1, weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(motivateDayTopic0, workPMTopic3, afternoonSnackTopic2, breakPMTopic0, commutePMTopic3, groceryStoreTopic5, gymTopic8, happyHourTopic1, networkingTopic4, cafePMTopic1, parentingPMTopic0,  studyTopic0,
                             weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(motivatePMTopic0, workLateTopic0, commutePMTopic3, happyHourTopic1, networkingTopic4, groceryStoreTopic5, gymTopic8, dinnerTopic4, restaurantTopic4, homePMTopic4, parentingPMTopic0, studyTopic0,
                             weekdayNow17to18Topic3)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(motivatePMTopic0, gymTopic8, groceryStoreTopic5, dinnerTopic4,  restaurantTopic4, barTopic2, networkingTopic4, dateTopic0, relationshipPMTopic0, homePMTopic4, parentingPMTopic0, studyTopic0,
                             weekdayNow19to20Topic3)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic3, barTopic3, safetyTopic5,
                             relationshipPMTopic0, parentingBedtimeTopic0, homePMTopic4, lateNightSnackTopic1, meditationTopic0, eveningRoutineTopic0, bedtimeTopic4, cantSleepTopic2,
                             weekdayNow21to24Topic3)

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
            appendNineTopics(motivatePMTopic0, barTopic4, safetyTopic6, lateNightSnackTopic0,
                             relationshipPMTopic1, homePMTopic5, bathroomPMTopic1, meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeFriAMTopic12, cantSleepTopic2,
                             weekdayNow0to4Topic4)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(motivateAMTopic1, AMRoutineTopic0, getReadyAMTopic1, gymTopic9, runningTopic0, meditationTopic1, breakfastTopic1, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic1, commuteAMTopic4,
                             weekdayNow5to8Topic4)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(motivateAMTopic1, AMRoutineTopic0, getReadyAMTopic1, gymTopic9, breakfastTopic1, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic1, commuteAMTopic4, workAMTopic4, schoolAMTopic2,
                             weekdayNow5to8Topic4)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(motivateAMTopic1, AMRoutineTopic0, getReadyAMTopic1, gymTopic9, breakfastTopic1, bathroomTopic2, cafeTopic1, commuteAMTopic4, workAMTopic4, morningSnackTopic1, networkingTopic3, schoolAMTopic2,
                             weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(motivateDayTopic1, gymTopic9, runningTopic1, meditationTopic0,
                             commuteAMTopic4, cafeTopic1, workAMTopic4, networkingTopic3,
                             breakTopic1, bathroomTopic2, morningSnackTopic1, schoolAMTopic2, weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(motivateDayTopic1, morningSnackTopic1, lunchTopic0, restaurantTopic0, cafeTopic1, workAMTopic4, bathroomTopic2, breakTopic1, networkingTopic3, gymTopic9, travelTopic2, schoolAMTopic2, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(motivateDayTopic1, lunchTopic0, restaurantTopic0, cafePMTopic1, afternoonSnackTopic0, gymTopic10, workPMTopic4, breakTopic1,
                             meditationTopic0, networkingTopic4, travelTopic2, schoolPMTopic2,
                             weekdayNow11to14Topic3)

            setNatureImage(to: "day6")

        case 14...15:
            print("weekday Fri, Afternoon")
            appendNineTopics(motivateDayTopic1, afternoonSnackTopic1, cafePMTopic0, workPMTopic4, breakPMTopic1, networkingTopic4, commuteFridayPMTopic0, gymTopic10, yogaTopic0, meditationTopic1, travelTopic2, schoolPMTopic2,
                             weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")

        case 16:
            print("weekday Fri, Afternoon")
            appendNineTopics(motivateDayTopic1, workPMTopic4, afternoonSnackTopic2, breakPMTopic1, commuteFridayPMTopic0, groceryStoreTopic6, gymTopic10, yogaTopic0, cafePMTopic0, happyHourTopic0, networkingTopic4, travelTopic2,
                             weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            appendNineTopics(motivatePMTopic0, commuteFridayPMTopic0, groceryStoreTopic6, gymTopic10, happyHourTopic0, networkingTopic1, dinnerTopic5, restaurantTopic0, homePMTopic5, parentingPMTopic0, goingOutTopic0, travelTopic2,
                             weekdayNow17to18Topic4)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic10, dinnerTopic5, restaurantTopic0, barTopic5, dateTopic0, relationshipPMTopic1, homePMTopic5, parentingPMTopic0, goingOutTopic0, safetyTopic6, travelTopic2,
                             weekdayNow19to20Topic4)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic4, goingOutTopic0, barTopic0,
                             safetyTopic6, relationshipPMTopic1, parentingBedtimeTopic0, homePMTopic5,
                             lateNightSnackTopic1, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
                             weekdayNow21to24Topic4)

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
            appendNineTopics(motivatePMTopic0, barTopic1, safetyTopic3, relationshipPMTopic0,
                             homeAMTopic1, lateNightSnackTopic0, bathroomTopic0, meditationTopic0,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic6, cantSleepTopic3,
                             saturday0to4Week1Topic1)

            setNatureImage(to: "night7")

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic1, breakfastTopic2, homeAMTopic1, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0,
                             meditationTopic0, gymTopic11, runningTopic1, yogaTopic0, travelTopic2,
                             weekendNow5to8Topic1)

            setNatureImage(to: "morning7")

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic1, breakfastTopic2, homeAMTopic1, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, gymTopic11, runningTopic1, yogaTopic0, cafeTopic2, travelTopic2,
                             saturday9to10Topic1)

            setNatureImage(to: "morning7")

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(motivateAMTopic2, homeAMTopic1, brunchTopic1, relationshipAMTopic0, parentingAMTopic0, bathroomTopic0, gymTopic11, yogaTopic0, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic2,
                             travelTopic2, saturday9to10Topic1)

            setNatureImage(to: "midmorning7")

        case 11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic2, homeAMTopic1, brunchTopic1, lunchTopic1, restaurantTopic0, cafeTopic2, gymTopic11, yogaTopic0, groceryStoreTopicWEND, shoppingClothesTopic0, networkingTopic1, travelTopic2, saturdayNow11to14Topic1)

            setNatureImage(to: "midmorning7")


        case 12...13:
            print("Weekend, Midday")
            appendNineTopics(motivateDayTopic2, homePMTopic6, brunchTopic1, lunchTopic1, restaurantTopic3, cafePMTopic1, gymTopic12, groceryStoreTopicWEND, shoppingClothesTopic1, barTopic2, networkingTopic1, travelTopic2, saturdayNow11to14Topic1)

            setNatureImage(to: "day7")


        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic2, homePMTopic6, afternoonSnackTopic1, cafePMTopic1, gymTopic12, groceryStoreTopic7, shoppingClothesTopic2, networkingTopic1, barTopic2, relationshipPMTopic0, dateTopic2, travelTopic2, weekendNow14to16Topic1)

            setNatureImage(to: "afternoon7")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic12, homePMTopic6, goingOutTopic1, parentingPMTopic0, dinnerTopic6, restaurantTopic1, networkingTopic1, barTopic3, dateTopic2, relationshipPMTopic0, safetyTopic2, saturdayNow17to18Topic0)

            setNatureImage(to: "sunset7")


        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, homePMTopic6, goingOutTopic1, parentingPMTopic0, bathroomPMTopic1, dinnerTopic6, restaurantTopic1, networkingTopic3, barTopic4, dateTopic0, relationshipPMTopic0, safetyTopic3, saturdayNow19to20Topic0)


            setNatureImage(to: "sunset7")


        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic0, barTopic5, safetyTopic4,
                             relationshipPMTopic0, parentingBedtimeTopic0, homePMTopic6, lateNightSnackTopic1, bathroomPMTopic1,
                             eveningRoutineTopic0, bedtimeTopic6, cantSleepTopic1,
                             saturday21to24Topic1)

            setNatureImage(to: "night7")


        default:
            print("Weekend,INVALID HOUR!")
        }
    }



    //MARK: - WEEK 2

    //Sunday
    func sunday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, barTopic0, safetyTopic1, relationshipPMTopic1,
                             bathroomPMTopic0, homeAMTopic0, lateNightSnackTopic1,
                             meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic7, cantSleepTopic1,
                             sundayNow0to4Week2Topic2)

            setNatureImage(to: "night1")


        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic2, breakfastTopic3, homeAMTopic0, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, cafeTopic0, meditationTopic1, gymTopic0, yogaTopic0, travelTopic2,
                             weekendNow5to8Topic2)

            setNatureImage(to: "morning1")


        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, AMRoutineTopic2, breakfastTopic3, homeAMTopic0, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, meditationTopic1, gymTopic0, runningTopic0, yogaTopic0, travelTopic2, sunday9to10Topic2)

            setNatureImage(to: "morning1")


        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, AMRoutineTopic2, homeAMTopic0, brunchTopic0, relationshipAMTopic0, parentingAMTopic0, gymTopic0, cafeTopic0, groceryStoreTopic8, shoppingClothesTopic0, studyTopic0, travelTopic2, sunday9to10Topic2)

            setNatureImage(to: "midmorning1")


        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(motivateDayTopic0, homeAMTopic0, brunchTopic0, lunchTopic2, cafeTopic0, groceryStoreTopicWEND, shoppingClothesTopic1, gymTopic0, networkingTopic1, studyTopic0, sideHustleTopic1, travelTopic2, sundayNow11to14Topic2)

            setNatureImage(to: "day1")


        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, gymTopic1, shoppingClothesTopic2, groceryStoreTopic8, cafePMTopic0, barTopic1, networkingTopic1, afternoonSnackTopic0, homePMTopic1, studyTopic0, sideHustleTopic1, travelTopic2, weekendNow14to16Topic2)

            setNatureImage(to: "afternoon1")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, gymTopic1, dinnerTopic7, restaurantTopic2, groceryStoreTopic9,
                             shoppingClothesTopic0, homePMTopic7, relationshipPMTopic1, parentingPMTopic0, studyTopic0, sideHustleTopic1, travelTopic2,
                             sundayNow17to18Topic0)

            setNatureImage(to: "sunset1")


        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic1, dinnerTopic7, restaurantTopic2, groceryStoreTopic9,
                             shoppingClothesTopic1,  homePMTopic7, relationshipPMTopic1, parentingPMTopic0, studyTopic0, sideHustleTopic1, travelTopic2, sundayNow19to20Topic0)

            setNatureImage(to: "sunset1")



        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, barTopic3, safetyTopic1,
                             relationshipPMTopic1, parentingBedtimeTopic0, dinnerAfter9PMTopic0, homePMTopic7,
                             bathroomPMTopic0, lateNightSnackTopic0, eveningRoutineTopic0, bedtimeTopic7, cantSleepTopic1,
                             sunday21to24Topic2)

            setNatureImage(to: "night1")


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
            appendNineTopics(motivatePMTopic0, barTopic4, safetyTopic2, lateNightSnackTopic1,
                             relationshipPMTopic0, homePMTopic0, bathroomPMTopic0, meditationTopic0,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic8, cantSleepTopic2,
                             weekdayNow0to4Topic0)

            setNatureImage(to: "night2")

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic1, AMRoutineTopic3, getReadyAMTopic0, gymTopic2, runningTopic1, meditationTopic0, breakfastTopic1, bathroomTopic1, relationshipAMTopic0, parentingAMTopic0, cafeTopic1, commuteAMTopic5,
                             weekdayNow5to8Topic5) //*

            setNatureImage(to: "morning2")

        case 8:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic1, AMRoutineTopic3, getReadyAMTopic0, gymTopic2, breakfastTopic1, relationshipAMTopic0, parentingAMTopic0, bathroomTopic1,
                             cafeTopic1, commuteAMTopic5, workAMTopic5, schoolAMTopic3,
                             weekdayNow5to8Topic5)

            setNatureImage(to: "morning2")

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic1, AMRoutineTopic3, getReadyAMTopic0, gymTopic2, runningTopic1, breakfastTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, networkingTopic1, schoolAMTopic3,
                             weekdayNow9to11Topic5)

            setNatureImage(to: "morning2")


        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, gymTopic2, runningTopic1, bathroomTopic1, cafeTopic1, commuteAMTopic5, workAMTopic5, morningSnackTopic2,
                             breakTopic0, networkingTopic1, meditationTopic1, schoolAMTopic3,
                             weekdayNow9to11Topic5)

            setNatureImage(to: "midmorning2")


        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, morningSnackTopic2, lunchTopic3, restaurantTopic1, cafeTopic1, workAMTopic5, bathroomTopic1, breakTopic0, networkingTopic1, meditationTopic0, gymTopic2, schoolAMTopic3,
                             weekdayNow11to14Topic4)

            setNatureImage(to: "midmorning2")

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(motivateDayTopic1, lunchTopic3, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic3, meditationTopic0, workPMTopic5, bathroomTopic1, breakTopic0, networkingTopic2, schoolPMTopic3,
                             weekdayNow11to14Topic4)

            setNatureImage(to: "day2")


        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, afternoonSnackTopic1, cafePMTopic0, gymTopic3,  yogaTopic0, workPMTopic5, networkingTopic2, breakPMTopic0, meditationTopic0,
                             commutePMTopic0, groceryStoreTopicWDAY, schoolPMTopic3,
                             weekdayNow14to16Topic5)

            setNatureImage(to: "afternoon2")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic1, workPMTopic5, afternoonSnackTopic2, breakPMTopic0, commutePMTopic0, groceryStoreTopicWDAY, happyHourTopic0, gymTopic3, yogaTopic0, networkingTopic2, parentingPMTopic0, studyTopic1,
                             weekdayNow14to16Topic5)

            setNatureImage(to: "afternoon2")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            setNatureImage(to: "sunset2")

            appendNineTopics(motivatePMTopic0, workLateTopic1, networkingTopic3, commutePMTopic0, gymTopic3, groceryStoreTopic0, dinnerTopic0, restaurantTopic3, happyHourTopic0, homePMTopic0, parentingPMTopic0, studyTopic1,
                             weekdayNow17to18Topic5)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic3, groceryStoreTopic0, dinnerTopic0, restaurantTopic3, barTopic3, dateTopic0, relationshipPMTopic0, networkingTopic1, homePMTopic0, parentingPMTopic0, studyTopic1,
                             weekdayNow19to20Topic5)


            setNatureImage(to: "sunset2")
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic1, barTopic4, safetyTopic2,
                             relationshipPMTopic0, parentingBedtimeTopic0, homePMTopic0, lateNightSnackTopic0,
                             bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic8, cantSleepTopic2,
                             weekdayNow21to24Topic5)

            setNatureImage(to: "night2")


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
            appendNineTopics(motivatePMTopic0, barTopic5, safetyTopic3, lateNightSnackTopic1,
                             relationshipPMTopic1, homePMTopic1, bathroomPMTopic0, meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic9, cantSleepTopic3,
                             weekdayNow0to4Topic1)

            setNatureImage(to: "night3")

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic2, AMRoutineTopic0, getReadyAMTopic1, gymTopic4, runningTopic0, meditationTopic1, breakfastTopic2, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic2, commuteTuesdayAMTopic0,
                             weekdayNow5to8Topic6) //*

            setNatureImage(to: "morning3")

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic2, AMRoutineTopic0, getReadyAMTopic1, gymTopic4,
                             breakfastTopic2, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic6, schoolAMTopic1,
                             weekdayNow5to8Topic6) //*

            setNatureImage(to: "morning3")

        case 9:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic2, AMRoutineTopic0, getReadyAMTopic1, gymTopic4, breakfastTopic2, bathroomTopic2,
                             cafeTopic2, commuteTuesdayAMTopic0, workAMTopic6, morningSnackTopic1, networkingTopic3, schoolAMTopic1,
                             weekdayNow9to11Topic6) //*

            setNatureImage(to: "morning3")

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic2, gymTopic4, runningTopic1, cafeTopic2, commuteTuesdayAMTopic0, bathroomTopic2,
                            workAMTopic6, morningSnackTopic0, breakTopic1, meditationTopic1, networkingTopic3, schoolAMTopic1,
                             weekdayNow9to11Topic6)

            setNatureImage(to: "midmorning3")


        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic2, morningSnackTopic0,  lunchTopic4, restaurantTopic2, cafeTopic2, bathroomTopic2, meditationTopic1, gymTopic4, workAMTopic6, networkingTopic3, breakTopic1, schoolAMTopic1,
                             tuesdayNow11to14Topic0)

            setNatureImage(to: "day3")

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(motivateDayTopic2, lunchTopic4, restaurantTopic3, cafePMTopic0, afternoonSnackTopic0, gymTopic4, yogaTopic0, meditationTopic1, workPMTopic6,
                              networkingTopic4, breakTopic1, schoolPMTopic1,
                             tuesdayNow11to14Topic0) // Tues specific tips

            setNatureImage(to: "day3")

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic2, afternoonSnackTopic1, cafePMTopic1, gymTopic5, yogaTopic0, meditationTopic1, workPMTopic6, networkingTopic4, breakPMTopic1,
                              commutePMTopic1, groceryStoreTopic1, schoolPMTopic1,
                             weekdayNow14to16Topic6)

            setNatureImage(to: "afternoon3")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic2, workPMTopic6, afternoonSnackTopic2, breakPMTopic1, commutePMTopic1, groceryStoreTopic1, happyHourTopic1, gymTopic5, yogaTopic0, networkingTopic4, parentingPMTopic0, studyTopic2,
                             weekdayNow14to16Topic6)

            setNatureImage(to: "afternoon3")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(motivatePMTopic0, workLateTopic2, commutePMTopic1, gymTopic5, groceryStoreTopic1, happyHourTopic1, networkingTopic2, dinnerTopic1, restaurantTopic4, homePMTopic1, parentingPMTopic0, studyTopic2,
                             weekdayNow17to18Topic6)

            setNatureImage(to: "sunset3")


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic5, groceryStoreTopic1, dinnerTopic1, restaurantTopic4, barTopic1, dateTopic1, relationshipPMTopic1,  networkingTopic2, homePMTopic1, parentingPMTopic0, studyTopic2,
                             weekdayNow19to20Topic6)

            setNatureImage(to: "sunset3")


        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic2, barTopic1, safetyTopic3,
                             relationshipPMTopic1, parentingBedtimeTopic0, homePMTopic1, lateNightSnackTopic0,
                             bathroomPMTopic0, eveningRoutineTopic0, bedtimeTopic9, cantSleepTopic3,
                             weekdayNow21to24Topic6)

            setNatureImage(to: "night3")

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday2(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(motivatePMTopic0, barTopic2, safetyTopic4, lateNightSnackTopic1,
                             relationshipPMTopic0, homePMTopic2, bathroomPMTopic1, meditationTopic0,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic10, cantSleepTopic1,
                             weekdayNow0to4Topic2)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(motivateAMTopic0, AMRoutineTopic1, getReadyAMTopic2, gymTopic6, runningTopic1, meditationTopic0,  breakfastTopic3, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0, cafeTopic3, commuteAMTopic0,
                             weekdayNow5to8Topic7) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(motivateAMTopic0, AMRoutineTopic1, getReadyAMTopic2, gymTopic6, breakfastTopic3, bathroomTopic0, relationshipAMTopic0, parentingAMTopic0,
                             cafeTopic3, commuteAMTopic0, workAMTopic7, schoolAMTopic2,
                             weekdayNow5to8Topic7)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(motivateAMTopic0, AMRoutineTopic1, getReadyAMTopic2, gymTopic6, breakfastTopic3, bathroomTopic0, cafeTopic3, commuteAMTopic0, workAMTopic7, morningSnackTopic1, networkingTopic1, schoolAMTopic2,
                             weekdayNow9to11Topic7)

            setNatureImage(to: "morning4")


        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(motivateDayTopic0, gymTopic6, runningTopic1, cafeTopic3, commuteAMTopic0, bathroomTopic0, workAMTopic7, morningSnackTopic1,
                             breakTopic0, meditationTopic0, networkingTopic1, schoolAMTopic2,
                             weekdayNow9to11Topic7)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(motivateDayTopic0, morningSnackTopic1, lunchTopic0, restaurantTopic4, cafeTopic3, bathroomTopic0, gymTopic6, meditationTopic1, workAMTopic7, breakTopic0, networkingTopic1, schoolAMTopic2,
                             weekdayNow11to14Topic1)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(motivateDayTopic0, lunchTopic0, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0, gymTopic7, yogaTopic0, meditationTopic0, workPMTopic7, breakTopic0, networkingTopic2, schoolPMTopic2,
                             weekdayNow11to14Topic1)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(motivateDayTopic0, afternoonSnackTopic1, cafePMTopic0, workPMTopic7, breakPMTopic0, networkingTopic2, commutePMTopic2, gymTopic7, yogaTopic0, meditationTopic0, groceryStoreTopicWDAY, schoolPMTopic2,
                             weekdayNow14to16Topic7)

            setNatureImage(to: "afternoon4")


        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(motivateDayTopic0, workPMTopic7, afternoonSnackTopic2, breakPMTopic0, commutePMTopic2, gymTopic7, yogaTopic0, groceryStoreTopicWDAY, happyHourTopic0, networkingTopic1, parentingPMTopic0, studyTopic2,
                             weekdayNow14to16Topic7)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(motivatePMTopic0, workLateTopic0, commutePMTopic2, gymTopic7, groceryStoreTopic2, happyHourTopic0, dinnerTopic2, restaurantTopic0, networkingTopic3, homePMTopic2, parentingPMTopic0, studyTopic2,
                             weekdayNow17to18Topic7)

            setNatureImage(to: "sunset4")


        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(motivatePMTopic0, gymTopic7, groceryStoreTopic2, dinnerTopic2, restaurantTopic0, barTopic3, networkingTopic3, dateTopic2, relationshipPMTopic1,  homePMTopic2, parentingPMTopic0, studyTopic2,
                             weekdayNow19to20Topic7)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic3, barTopic4, safetyTopic4,
                             relationshipPMTopic1, parentingBedtimeTopic0, homePMTopic2, lateNightSnackTopic1, bathroomPMTopic1, eveningRoutineTopic0, bedtimeTopic10, cantSleepTopic1,
                             weekdayNow21to24Topic7)

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
            appendNineTopics(motivatePMTopic0, barTopic5, safetyTopic5, lateNightSnackTopic1,
                             relationshipPMTopic0, homePMTopic3, bathroomPMTopic0, meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic11, cantSleepTopic1,
                             weekdayNow0to4Topic3)

            setNatureImage(to: "night5")


        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(motivateAMTopic1, AMRoutineTopic2, getReadyAMTopic3, gymTopic8, runningTopic0, meditationTopic1, breakfastTopic0, bathroomTopic1, relationshipAMTopic0, parentingAMTopic0, cafeTopic0, commuteAMTopic2,
                             weekdayNow5to8Topic8)

            setNatureImage(to: "morning5")

        case 8:
            appendNineTopics(motivateAMTopic1, AMRoutineTopic2, getReadyAMTopic3, gymTopic8,  breakfastTopic0, bathroomTopic1, relationshipAMTopic0, parentingAMTopic0, cafeTopic0, commuteAMTopic2, workAMTopic8, schoolAMTopic3,
                             weekdayNow5to8Topic8)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(motivateAMTopic1, AMRoutineTopic2, getReadyAMTopic3, gymTopic8, breakfastTopic0, bathroomTopic1, cafeTopic0, commuteAMTopic2, workAMTopic8, morningSnackTopic1, networkingTopic3, schoolAMTopic3,
                             weekdayNow9to11Topic8)

            setNatureImage(to: "morning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(motivateDayTopic1, gymTopic8, runningTopic1, meditationTopic0, cafeTopic0, commuteAMTopic2, bathroomTopic1, workAMTopic8, breakTopic1, morningSnackTopic2, networkingTopic3, schoolAMTopic3,
                             weekdayNow9to11Topic8)

            setNatureImage(to: "midmorning5")

        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(motivateDayTopic1, morningSnackTopic2, lunchTopic1, restaurantTopic0, cafeTopic0, gymTopic8, meditationTopic0, bathroomTopic1, workAMTopic8, breakTopic1, networkingTopic3, schoolAMTopic3,
                             weekdayNow9to11Topic8)

            setNatureImage(to: "midmorning5")


        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(motivateDayTopic1, lunchTopic1, restaurantTopic1, cafePMTopic1, afternoonSnackTopic0, gymTopic9, yogaTopic0,  meditationTopic1, workPMTopic8, breakTopic0, networkingTopic4, schoolPMTopic3,
                             weekdayNow11to14Topic2)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(motivateDayTopic1, afternoonSnackTopic1, cafePMTopic1, workPMTopic8, breakPMTopic0, networkingTopic4, commutePMTopic3, gymTopic9, yogaTopic0, meditationTopic1, groceryStoreTopic3, schoolPMTopic3,
                             weekdayNow14to16Topic8)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(motivateDayTopic1, workPMTopic8, afternoonSnackTopic2, breakPMTopic0, commutePMTopic3, gymTopic9, groceryStoreTopic3,  happyHourTopic1, networkingTopic4, cafePMTopic1, parentingPMTopic0, studyTopic0,
                             weekdayNow14to16Topic8)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(motivatePMTopic0, workLateTopic1, commutePMTopic3, groceryStoreTopic3, gymTopic9, happyHourTopic1, networkingTopic4,  dinnerTopic3, restaurantTopic1, homePMTopic3, parentingPMTopic0, studyTopic0,
                             weekdayNow17to18Topic8)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(motivatePMTopic0, gymTopic5, groceryStoreTopic3, dinnerTopic3, restaurantTopic1, barTopic0, networkingTopic4, dateTopic1, relationshipPMTopic0, homePMTopic3, parentingPMTopic0, studyTopic0,
                             weekdayNow19to20Topic8)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic4, barTopic1, safetyTopic5,
                             relationshipPMTopic0, parentingBedtimeTopic0, homePMTopic3, lateNightSnackTopic0,
                             meditationTopic0, eveningRoutineTopic0, bedtimeTopic11, cantSleepTopic2,
                             weekdayNow21to24Topic8)

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
            appendNineTopics(motivatePMTopic0, barTopic2, safetyTopic6, lateNightSnackTopic1,
                             relationshipPMTopic1, homePMTopic4, bathroomPMTopic1, meditationTopic0,
                             journalTopic0, eveningRoutineTopic0, bedtimeFriAMTopic12, cantSleepTopic2,
                             weekdayNow0to4Topic4)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic0, getReadyAMTopic1, gymTopic10, runningTopic1, meditationTopic1, breakfastTopic1, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic1, commuteAMTopic3,
                             weekdayNow5to8Topic9)

            setNatureImage(to: "morning6")

        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic0, getReadyAMTopic1, gymTopic10,  breakfastTopic1, bathroomTopic2, relationshipAMTopic0, parentingAMTopic0, cafeTopic1, commuteAMTopic3,
                             workAMTopic9, schoolAMTopic1,
                             weekdayNow5to8Topic9)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(motivateAMTopic2, AMRoutineTopic0, getReadyAMTopic1, gymTopic10, breakfastTopic1, bathroomTopic2, cafeTopic1, commuteAMTopic3, morningSnackTopic0, workAMTopic9, networkingTopic1, schoolAMTopic1,
                             weekdayNow9to11Topic9)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(motivateDayTopic2, gymTopic10, runningTopic0, meditationTopic0, commuteAMTopic3, cafeTopic1, workAMTopic9, networkingTopic1, breakTopic1, bathroomTopic2, morningSnackTopic0, schoolAMTopic1,
                             weekdayNow9to11Topic9)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(motivateDayTopic2, morningSnackTopic0, lunchTopic2, restaurantTopic3, cafeTopic1, workAMTopic9, bathroomTopic2, breakTopic1,
                             networkingTopic1, gymTopic10,  travelTopic2, schoolAMTopic1,
                             weekdayNow9to11Topic9)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(motivateDayTopic2, lunchTopic2, restaurantTopic4, cafePMTopic1, afternoonSnackTopic0,  gymTopic11, workPMTopic9, breakTopic1,
                             meditationTopic0, networkingTopic2, travelTopic2, schoolPMTopic1,
                             weekdayNow11to14Topic3)

            setNatureImage(to: "day6")


        case 14...15:
            print("weekday Fri, Afternoon")
            appendNineTopics(motivateDayTopic2, afternoonSnackTopic1, cafePMTopic0, workPMTopic9, breakPMTopic1, networkingTopic2, commuteFridayPMTopic0, gymTopic11, yogaTopic0, meditationTopic1, travelTopic2, schoolPMTopic1,
                             weekdayNow14to16Topic9)

            setNatureImage(to: "afternoon6")


        case 16:
            print("weekday Fri, Afternoon")
            appendNineTopics(motivateDayTopic2, workPMTopic9, afternoonSnackTopic2, breakPMTopic1, commuteFridayPMTopic0, gymTopic11, yogaTopic0, groceryStoreTopic5, cafePMTopic0, happyHourTopic1, networkingTopic2, travelTopic2,
                             weekdayNow14to16Topic9)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            appendNineTopics(motivatePMTopic0, commuteFridayPMTopic0, groceryStoreTopic4, gymTopic11, happyHourTopic1, dinnerTopic4, restaurantTopic2, networkingTopic3, homePMTopic4, parentingPMTopic0, goingOutTopic0, travelTopic2,
                             weekdayNow17to18Topic9)

            setNatureImage(to: "afternoon6")


        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic1, goingOutTopic0, gymTopic11, dinnerTopic4, restaurantTopic2,
                             barTopic3, dateTopic0, homePMTopic4, safetyTopic6, studyTopic1, travelTopic2,
                             weekdayNow19to20Topic9)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic0, goingOutTopic0, barTopic4,
                             safetyTopic6, relationshipPMTopic1, parentingBedtimeTopic0, homePMTopic4,
                             lateNightSnackTopic0, eveningRoutineTopic0, bedtimeFriPMTopic5, cantSleepTopic3,
                             weekdayNow21to24Topic9)

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
            appendNineTopics(motivatePMTopic0, barTopic5, safetyTopic3, relationshipPMTopic0,
                             homeAMTopic1, lateNightSnackTopic1, bathroomPMTopic0,meditationTopic1,
                             journalTopic0, eveningRoutineTopic0, bedtimeTopic13, cantSleepTopic3,
                             saturdayNow0to4Week2Topic2)

            setNatureImage(to: "night7")

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(motivateAMTopic0, breakfastTopic2, homeAMTopic1, bathroomTopic1, AMRoutineTopic3, getReadyAMTopic3, cafeTopic0,
                             meditationTopic1, gymTopic12, runningTopic1, yogaTopic0, travelTopic2,
                             weekendNow5to8Topic3)

            setNatureImage(to: "morning7")


        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(motivateAMTopic0, breakfastTopic2, homeAMTopic1, bathroomTopic1, AMRoutineTopic3, getReadyAMTopic3,
                             meditationTopic1, gymTopic12, runningTopic1, yogaTopic0, cafeTopic2, travelTopic2,
                             weekendNow5to8Topic3)

            setNatureImage(to: "morning7")


        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(motivateDayTopic0, homeAMTopic1, brunchTopic1, relationshipAMTopic0, parentingAMTopic0, bathroomTopic0, gymTopic12, yogaTopic0, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, travelTopic2, saturday9to10Topic2)

            setNatureImage(to: "midmorning7")

        case 11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, homeAMTopic1, brunchTopic1, lunchTopic3, restaurantTopic2, cafeTopic2, gymTopic12, yogaTopic0, groceryStoreTopicWEND, shoppingClothesTopic2, networkingTopic1, travelTopic2, saturday9to10Topic2)

            setNatureImage(to: "midmorning7")

        case 12...13:
            print("Weekend, Midday")
            appendNineTopics(motivateDayTopic0, homePMTopic5, brunchTopic1, lunchTopic3, restaurantTopic2, cafePMTopic1, gymTopic12, groceryStoreTopicWEND, shoppingClothesTopic0, barTopic2, networkingTopic1, travelTopic2,
                             saturdayNow11to14Topic2)

            setNatureImage(to: "day7")


       case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(motivateDayTopic0, homePMTopic5, parentingPMTopic0, relationshipPMTopic0, afternoonSnackTopic1, cafePMTopic1, gymTopic12, yogaTopic0, groceryStoreTopic5, shoppingClothesTopic1, networkingTopic4, barTopic0, weekendNow14to16Topic3)

            setNatureImage(to: "afternoon7")

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic12, homePMTopic6, parentingPMTopic0, goingOutTopic0, dinnerTopic5, restaurantTopic3, barTopic1, networkingTopic1, dateTopic2, relationshipPMTopic0, safetyTopic2,
                             saturdayNow17to18Topic0)




            setNatureImage(to: "sunset7")

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, gymTopic12, homePMTopic6, parentingPMTopic0, goingOutTopic0, dinnerTopic5, restaurantTopic3, barTopic2, networkingTopic2, dateTopic0, relationshipPMTopic0, safetyTopic3,
                             saturdayNow19to20Topic0)

            setNatureImage(to: "sunset7")

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, dinnerAfter9PMTopic1, barTopic3, safetyTopic4,
                             relationshipPMTopic0, parentingBedtimeTopic0, lateNightSnackTopic0, bathroomPMTopic1,
                             homePMTopic7, eveningRoutineTopic0, bedtimeTopic13, cantSleepTopic1,
                             saturday21to24Topic2)

            setNatureImage(to: "night7")

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

























    func setNatureImage(to imageTitle: String) {
        performUIUpdatesOnMain {
//            self.natureImageView.image = UIImage(named: imageTitle)
        }
    }

    func updateQuote(quote: Quote) {
//        performUIUpdatesOnMain {
//            self.quoteLabel.text = quote.quote
//            self.authorLabel.text = quote.source
//
////            self.sizeFooterToFit()// needs to be called after setting quote
//
//            self.quoteView.frame.size.height = self.view.frame.size.width
//        }
    }

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

    // MARK: - IBActions

    

    @IBAction func returnToTopTapped(_ sender: Any) {

        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.nowTableView.setContentOffset(.zero, animated: false)
        }
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
