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

    @IBOutlet weak var profileIconButton: UIButton!
    @IBOutlet weak var buttonView: UIView!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var topicLabel: UILabel!

    @IBOutlet weak var nowTableView: UITableView!
    @IBOutlet weak var topicView: UIView!

    @IBOutlet weak var topImageView: UIImageView!



    // topicButtion OutletCollection only used for flipping UI when buttons tapped
    @IBOutlet var topicButtons: [RoundCorneredButton]!

    // individual outlets used to maintain order with buttons and labels in UI
    @IBOutlet weak var topic0Button: RoundCorneredButton!
    @IBOutlet weak var topic1Button: RoundCorneredButton!
    @IBOutlet weak var topic2Button: RoundCorneredButton!
    @IBOutlet weak var topic3Button: RoundCorneredButton!
    // 2nd row
    @IBOutlet weak var topic4Button: RoundCorneredButton!
    @IBOutlet weak var topic5Button: RoundCorneredButton!
    @IBOutlet weak var topic6Button: RoundCorneredButton!
    @IBOutlet weak var topic7Button: RoundCorneredButton!




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

    // pull to refresh tableView
    lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(self.handleRefresh(_:)), for: UIControl.Event.valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")

        return refreshControl
    }()

    // Tips and Topics

    var topics: [Topic] = [] // array of topics
    var tips: [Tip] = []



//    var cellHeaderColor: [UIColor] = []
//    var topicColor: UIColor?


    // MARK: - Lifecycle Methods

//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .default
//    }

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
        topics = []
        tips = []
        topicButtons = []

//        let blankTopic0 = Topic(title: "", icon: "", tip: [])
//        let blankTopic1 = Topic(title: "", icon: "", tip: [])
//        let blankTopic2 = Topic(title: "", icon: "", tip: [])
//        let blankTopic3 = Topic(title: "", icon: "", tip: [])
//
//        let blankTopic4 = Topic(title: "", icon: "", tip: [])
//        let blankTopic5 = Topic(title: "", icon: "", tip: [])
//        let blankTopic6 = Topic(title: "", icon: "", tip: [])
//        let blankTopic7 = Topic(title: "", icon: "", tip: [])
//        let blankNowTopic8 = Topic(title: "", icon: "", tip: [])




        performUIUpdatesOnMain {

//            self.titleLabel.text = ""
//            self.quoteLabel.text = ""
//            self.authorLabel.text = ""



//            self.topic0Button.titleLabel?.text = ""
//            self.topic1Button.titleLabel?.text = ""
//            self.topic2Button.titleLabel?.text = ""
//            self.topic3Button.titleLabel?.text = ""
//
//            self.topic4Button.titleLabel?.text = ""
//            self.topic5Button.titleLabel?.text = ""
//            self.topic6Button.titleLabel?.text = ""
//            self.topic7Button.titleLabel?.text = ""



//            self.topics = [blankTopic0, blankTopic1, blankTopic2, blankTopic3, blankTopic4, blankTopic5, blankTopic6, blankTopic7, blankNowTopic8]

        }



        setupUI()



        performUIUpdatesOnMain {

            // set UIButtons
            self.resetTopicButtonOriginalStyle(button: self.topic0Button)
            self.resetTopicButtonOriginalStyle(button: self.topic1Button)
            self.resetTopicButtonOriginalStyle(button: self.topic2Button)
            self.resetTopicButtonOriginalStyle(button: self.topic3Button)
            self.resetTopicButtonOriginalStyle(button: self.topic4Button)
            self.resetTopicButtonOriginalStyle(button: self.topic5Button)
            self.resetTopicButtonOriginalStyle(button: self.topic6Button)
            self.resetTopicButtonOriginalStyle(button: self.topic7Button)


            // removed animation because it was too slow
            self.nowTableView.reloadData()
            self.nowTableView.setContentOffset(.zero, animated: false)

        }
    }





    // MARK: - Methods

    func setupUI() {

        self.view.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
//        self.view.backgroundColor = UIColor.red
        self.quoteView.backgroundColor = UIColor.init(hexString: "2283F6", withAlpha: 1)



        // place 8 buttons in desired order (excludes Now tips)
        topicButtons = [topic0Button, topic1Button, topic2Button,
                        topic3Button, topic4Button, topic5Button, topic6Button, topic7Button]


        dayOfWeekAndHour()

        // set footer
        footerView.frame.size.height = self.view.frame.size.width
        setupQuote()

        nowTableViewSetup()


    }

















    func setupButtonsQuoteImage(day: Int) {

        //        if let imageToLoad = selectedImage {
        //            imageView.image  = UIImage(named: imageToLoad)
        //        }

        // Set initial quote

        authorLabel.text = headers[day].quote.source
    }


    func setupQuote() {
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
            case 15...24:
                quote = QuoteData.Week1.sunday3
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
            case 15...24:
                quote = QuoteData.Week1.monday3
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
            case 15...24:
                quote = QuoteData.Week1.tuesday3
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
            case 15...24:
                quote = QuoteData.Week1.wednesday3
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
            case 15...24:
                quote = QuoteData.Week1.thursday3
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
            case 15...24:
                quote = QuoteData.Week1.friday3
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
            case 15...24:
                quote = QuoteData.Week1.saturday3
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

//        self.nowTableView.addSubview(self.refreshControl)
    }

    @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
        // Do some reloading of data and update the table view's data source
        // Fetch more objects from a web service, for example...

        // Simply adding an object to the data source for this example
        // Reload time based array

    }

    func displayHourInTopicLabel() {
        print("ARE WE HERE SECOND")
        formatter.dateFormat = "h a" // "a" prints "pm" or "am"
        let hourString = formatter.string(from: Date()) // "12 AM"
        titleLabel.text = "Your \(hourString) Tips"
//        topicLabel.text = "\(hourString) TIPS"
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


        } else {
            print("Week: \(week) is odd")

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
            appendNineTopics(lateNightSnackTopic0, barTopic0, safetyTopic1, meditationTopic0, homeAMTopic0, bathroomPMTopic0, bedtimeTopic0, cantSleepTopic1, sunday0to4Week1Topic1)

            setNatureImage(to: "night1")

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(breakfastTopic0, homeAMTopic0, bathroomTopic0, AMRoutineTopic0, meditationTopic0, gymTopic0, runningTopic0, yogaTopic0, weekendNow5to8Topic0)

            setNatureImage(to: "morning1")


        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(breakfastTopic0, homeAMTopic0, bathroomTopic0, AMRoutineTopic0, meditationTopic0, gymTopic0, runningTopic0, yogaTopic0, sunday9to10Topic1)

            setNatureImage(to: "morning1")


        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic1, yogaTopic0, runningTopic0, cafeTopic0, groceryStoreTopic0, shoppingClothesTopic0, sunday9to10Topic1)

            setNatureImage(to: "midmorning1")


        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, brunchTopic0, lunchTopic0, cafeTopic0, groceryStoreTopicWEND, runningTopic0, gymTopic2, shoppingClothesTopic1, sundayNow11to14Topic1)

            setNatureImage(to: "day1")


        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(cafePMTopic0, runningTopic0, yogaTopic0, gymTopic3, shoppingClothesTopic0, groceryStoreTopic0, homeAMTopic0, afternoonSnackTopic0, weekendNow14to16Topic0)

            setNatureImage(to: "afternoon1")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic4, barTopic1, dateTopic0, sundayNow17to18Topic0)

            setNatureImage(to: "sunset1")


        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic5, barTopic1, dateTopic0, sundayNow19to20Topic0)

            setNatureImage(to: "sunset1")

            

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(barTopic2, dateTopic1, safetyTopic1, homePMTopic0, bathroomPMTopic0, lateNightSnackTopic1, bedtimeTopic1, cantSleepTopic1, sunday21to24Topic1)

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
            appendNineTopics(barTopic4, safetyTopic2, lateNightSnackTopic0, homePMTopic1, bathroomPMTopic0, bedtimeTopic2, cantSleepTopic1, meditationTopic1, weekdayNow0to4Topic0)

            setNatureImage(to: "night2")


        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic0, meditationTopic1, gymTopic6, runningTopic0, journalTopic1, breakfastTopic1, cafeTopic1, commuteAMTopic0, weekdayNow5to8Topic0) //*

            setNatureImage(to: "morning2")


        case 8...9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic0, gymTopic7, runningTopic0, breakfastTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, networkingTopic1, weekdayNow5to8Topic0)

            setNatureImage(to: "morning2")


        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic1, commuteAMTopic0, workAMTopic0, morningSnackTopic0, breakTopic0, runningTopic0, gymTopic8, networkingTopic1, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")


        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic1, workAMTopic0, morningSnackTopic0, breakTopic0, lunchTopic1, gymTopic9, runningTopic0, networkingTopic2, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workPMTopic0, lunchTopic1, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic10, meditationTopic1, networkingTopic2, weekdayNow11to14Topic0)

            setNatureImage(to: "day2")


        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic1, breakTopic0, meditationTopic1, cafePMTopic0, commutePMTopic0, gymTopic0, networkingTopic3, weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")


        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic2, breakTopic0, commutePMTopic0, groceryStoreTopicWDAY, happyHourTopic0, gymTopic2, networkingTopic3, weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            setNatureImage(to: "sunset2")


            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic4, groceryStoreTopic2, dinnerTopic1, restaurantTopic1, happyHourTopic0, homePMTopic1, weekdayNow17to18Topic0)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, groceryStoreTopic2, restaurantTopic1, dinnerTopic1, dateTopic0, barTopic3, networkingTopic1, homePMTopic1, weekdayNow19to20Topic0)


            setNatureImage(to: "sunset2")
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic4, safetyTopic2, homePMTopic1, lateNightSnackTopic1, bathroomPMTopic1, bedtimeTopic3, cantSleepTopic2, weekdayNow21to24Topic0)

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
            appendNineTopics(barTopic0, safetyTopic3, lateNightSnackTopic0, homePMTopic2, bedtimeTopic4, cantSleepTopic1, journalTopic2, meditationTopic0, weekdayNow0to4Topic1)

            setNatureImage(to: "night3")

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, gymTopic6, runningTopic1, meditationTopic0, journalTopic2, cafeTopic2, commuteTuesdayAMTopic0, weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")


        case 8...9:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, gymTopic7, runningTopic1, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic1, networkingTopic4, weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")


        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic2, commuteTuesdayAMTopic0, gymTopic8, runningTopic1, morningSnackTopic1, breakTopic1, workAMTopic1, networkingTopic4, weekdayNow9to11Topic1)

            setNatureImage(to: "midmorning3")


        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic2, workAMTopic1, morningSnackTopic1, breakTopic1, lunchTopic2, meditationTopic0, gymTopic9, networkingTopic1, weekdayNow9to11Topic1)

            setNatureImage(to: "day3")

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workPMTopic1, lunchTopic2, afternoonSnackTopic0, breakTopic1, cafePMTopic0, gymTopic10, meditationTopic0, networkingTopic1, tuesdayNow11to14Topic0) // Tues specific tips

            setNatureImage(to: "day3")


        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic1, afternoonSnackTopic1, breakPMTopic0, meditationTopic0, cafePMTopic1, commutePMTopic1, gymTopic0, networkingTopic2, weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic1, afternoonSnackTopic2, breakPMTopic0, commutePMTopic1, groceryStoreTopic3, happyHourTopic0, gymTopic1, networkingTopic2, weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic1, commutePMTopic1, happyHourTopic0, gymTopic4, groceryStoreTopic4, dinnerTopic2, networkingTopic2, homePMTopic2, weekdayNow17to18Topic1)

            setNatureImage(to: "sunset3")


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, groceryStoreTopic4, restaurantTopic2, dinnerTopic2, dateTopic2, barTopic1, networkingTopic2, homePMTopic2, weekdayNow19to20Topic1)

            setNatureImage(to: "sunset3")


        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic1, barTopic2, safetyTopic3, homePMTopic2, lateNightSnackTopic1, bathroomPMTopic0, bedtimeTopic6, cantSleepTopic1, weekdayNow21to24Topic1)

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
            appendNineTopics(barTopic1, safetyTopic4, lateNightSnackTopic0, homePMTopic3, bedtimeTopic6, cantSleepTopic1, journalTopic3, meditationTopic1, weekdayNow0to4Topic2)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(getReadyAMTopic2, breakfastTopic0, gymTopic6, runningTopic0, meditationTopic1, journalTopic3, cafeTopic3, commuteAMTopic2, weekdayNow5to8Topic2) //*

            setNatureImage(to: "morning4")


        case 8...9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(getReadyAMTopic2, breakfastTopic0, meditationTopic1, gymTopic7, cafeTopic3, commuteAMTopic2, workAMTopic2, networkingTopic3, weekdayNow5to8Topic2)

            setNatureImage(to: "morning4")


        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(cafeTopic3, commuteAMTopic2, gymTopic8, runningTopic1, breakTopic0, morningSnackTopic0, workAMTopic2, networkingTopic3, weekdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(cafeTopic3, workAMTopic2, morningSnackTopic0, breakTopic0, lunchTopic3, meditationTopic1, gymTopic9, networkingTopic3, weekdayNow9to11Topic1)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workAMTopic2, lunchTopic3, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic10, meditationTopic1, networkingTopic4, weekdayNow11to14Topic1)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic2, afternoonSnackTopic1, breakTopic0, cafePMTopic0, meditationTopic1, commutePMTopic2, gymTopic2, networkingTopic4, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")


        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic2, afternoonSnackTopic2, breakTopic0, commutePMTopic2, happyHourTopic0, groceryStoreTopicWDAY, gymTopic3, networkingTopic4, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic2, happyHourTopic0, gymTopic4, groceryStoreTopic5, dinnerTopic3, networkingTopic3, homePMTopic3, weekdayNow17to18Topic2)

            setNatureImage(to: "sunset4")


        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic5, groceryStoreTopic5, restaurantTopic0, dinnerTopic3, dateTopic1, barTopic3, networkingTopic3, homePMTopic3, weekdayNow19to20Topic2)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic2, barTopic4, dateTopic0, safetyTopic4, homePMTopic3, lateNightSnackTopic1, bathroomPMTopic1, bedtimeTopic7, weekdayNow21to24Topic2)

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
            appendNineTopics(barTopic1, safetyTopic5, homePMTopic4, lateNightSnackTopic0, bathroomPMTopic0, meditationTopic0,  bedtimeTopic8, cantSleepTopic2, weekdayNow0to4Topic3)

            setNatureImage(to: "night5")


        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(getReadyAMTopic0, breakfastTopic1, gymTopic6, runningTopic0, meditationTopic0, journalTopic0, cafeTopic0, commuteAMTopic3, weekdayNow5to8Topic3)

            setNatureImage(to: "morning5")


        case 8...9:
            appendNineTopics(getReadyAMTopic0, breakfastTopic0, meditationTopic0, gymTopic7, cafeTopic0, commuteAMTopic3, workAMTopic3, networkingTopic1, weekdayNow5to8Topic2)

            setNatureImage(to: "morning5")


        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(cafeTopic0, commuteAMTopic0, gymTopic8, runningTopic1, breakTopic1, morningSnackTopic1, workAMTopic3, networkingTopic1, weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(cafeTopic0, workAMTopic3, morningSnackTopic1, breakTopic1, meditationTopic0, gymTopic9, lunchTopic4, networkingTopic1, weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")


        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(workPMTopic3, lunchTopic4, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic10, meditationTopic0, networkingTopic2, weekdayNow11to14Topic2)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(workPMTopic3, afternoonSnackTopic1, breakPMTopic0, meditationTopic0, cafePMTopic1, gymTopic0, commutePMTopic3, networkingTopic2, weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic3, afternoonSnackTopic2, breakPMTopic0, commutePMTopic3, happyHourTopic0, gymTopic1, cafePMTopic1, networkingTopic2, weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic1, commutePMTopic3, happyHourTopic0, groceryStoreTopic6, gymTopic2, dinnerTopic4, networkingTopic4, homePMTopic4, weekdayNow17to18Topic3)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic5, groceryStoreTopic6, dinnerTopic4, restaurantTopic1, dateTopic1, barTopic3, networkingTopic4, homePMTopic4, weekdayNow19to20Topic3)


            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic3, barTopic0, dateTopic2, safetyTopic5, homePMTopic4, lateNightSnackTopic1, bedtimeTopic0, cantSleepTopic2, weekdayNow21to24Topic3)

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
            appendNineTopics(barTopic1, safetyTopic6, lateNightSnackTopic0, homePMTopic5, meditationTopic1, bathroomPMTopic1, bedtimeTopic1, cantSleepTopic2, weekdayNow0to4Topic4)

            setNatureImage(to: "night6")


        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, homeAMTopic0, gymTopic6, meditationTopic1, journalTopic1, cafeTopic1, commuteAMTopic4, weekdayNow5to8Topic4)

            setNatureImage(to: "morning6")


        case 8...9:
            print("weekday Fri, Late Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, meditationTopic1, commuteAMTopic4, workAMTopic4, cafeTopic1, gymTopic7, networkingTopic3, weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(commuteAMTopic4, cafeTopic1, gymTopic8, runningTopic0, workAMTopic4, breakTopic1, morningSnackTopic0, networkingTopic3, weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(workAMTopic4, morningSnackTopic0, breakTopic1, lunchTopic0, meditationTopic0, gymTopic9, cafeTopic1, networkingTopic3, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(workPMTopic4, lunchTopic0, afternoonSnackTopic0, breakTopic1, meditationTopic0, cafePMTopic1, gymTopic10, networkingTopic4, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")


        case 14...15:
            print("weekday Fri, Afternoon")
            appendNineTopics(workPMTopic4, afternoonSnackTopic1, breakTopic1, meditationTopic1, cafePMTopic0, gymTopic2, commuteFridayPMTopic0, networkingTopic4, weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")


        case 16:
            print("weekday Fri, Afternoon")
            appendNineTopics(workPMTopic4, afternoonSnackTopic2, breakTopic1, commuteFridayPMTopic0, happyHourTopic0, gymTopic3, cafePMTopic0, networkingTopic4, weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            appendNineTopics(commuteFridayPMTopic0, happyHourTopic0, groceryStoreTopic7, gymTopic4, restaurantTopic2, dinnerTopic0, networkingTopic1, homePMTopic5, weekdayNow17to18Topic4)

            setNatureImage(to: "afternoon6")


        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(goingOutTopic0, gymTopic5, dinnerTopic0, restaurantTopic0, barTopic2, dateTopic1, homePMTopic0, safetyTopic6, weekdayNow19to20Topic4)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, dateTopic2, barTopic3, safetyTopic6, homePMTopic1, lateNightSnackTopic1, bedtimeFriTopic5, cantSleepTopic1, weekdayNow21to24Topic4)

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
            appendNineTopics(barTopic4, safetyTopic3, homeAMTopic0, lateNightSnackTopic0, meditationTopic0, bathroomPMTopic0, bedtimeTopic2, cantSleepTopic2, saturday0to4Week1Topic1)

            setNatureImage(to: "night7")

        case 5...9:
            print("Weekend, Early Morning")
            appendNineTopics(breakfastTopic1, homeAMTopic0, bathroomPMTopic0, AMRoutineTopic1, meditationTopic0, gymTopic6, runningTopic1, yogaTopic0, weekendNow5to8Topic1)

            setNatureImage(to: "morning7")


        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(breakfastTopic1, homeAMTopic0, bathroomPMTopic0, AMRoutineTopic1, meditationTopic0, gymTopic6, runningTopic1, yogaTopic0, saturday9to10Topic1)

            setNatureImage(to: "morning7")


        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic7, yogaTopic0, runningTopic1, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, saturday9to10Topic1)

            setNatureImage(to: "midmorning7")


        case 11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic8, yogaTopic0, lunchTopic1, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, saturdayNow11to14Topic1)

            setNatureImage(to: "midmorning7")


        case 12...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic0, brunchTopic0, lunchTopic1, cafePMTopic1, gymTopic9, runningTopic1, groceryStoreTopicWEND, shoppingClothesTopic2, saturdayNow11to14Topic1)

            setNatureImage(to: "day7")


        case 14:
            print("Weekend, Afternoon")
            appendNineTopics(homePMTopic1, cafePMTopic0, runningTopic1, gymTopic10, groceryStoreTopic6, shoppingClothesTopic2, afternoonSnackTopic0, barTopic1, weekendNow14to16Topic1)

            setNatureImage(to: "afternoon7")


        case 15...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic2, cafePMTopic1, runningTopic1, gymTopic2, groceryStoreTopic6, shoppingClothesTopic2, afternoonSnackTopic1, barTopic1, weekendNow14to16Topic1)

            setNatureImage(to: "afternoon7")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic3, goingOutTopic0, dinnerTopic1, restaurantTopic1, dateTopic1, barTopic2, groceryStoreTopic7, safetyTopic2, saturdayNow17to18Topic0)

            setNatureImage(to: "sunset7")


        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic4, goingOutTopic0, dinnerTopic1, restaurantTopic1, dateTopic1, barTopic2, groceryStoreTopic7, safetyTopic3, saturdayNow19to20Topic0)

            setNatureImage(to: "sunset7")


        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic1, dateTopic2, barTopic3, safetyTopic4, homePMTopic5, lateNightSnackTopic1, bathroomPMTopic1, bedtimeTopic3, saturday21to24Topic1)

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
            appendNineTopics(barTopic0, safetyTopic1, bathroomPMTopic0, lateNightSnackTopic1, meditationTopic1, homeAMTopic0, bedtimeTopic4, cantSleepTopic1, sundayNow0to4Week2Topic2)

            setNatureImage(to: "night1")


        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(breakfastTopic0, homeAMTopic0, bathroomTopic0, AMRoutineTopic2, meditationTopic1, gymTopic0, runningTopic0, yogaTopic0, weekendNow5to8Topic2)

            setNatureImage(to: "morning1")


        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(breakfastTopic0, homeAMTopic0, bathroomTopic0, AMRoutineTopic2, meditationTopic1, gymTopic0, runningTopic0, yogaTopic0, sunday9to10Topic2)

            setNatureImage(to: "morning1")


        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic1, yogaTopic0, runningTopic0, cafeTopic0, groceryStoreTopic0, shoppingClothesTopic0, sunday9to10Topic2)

            setNatureImage(to: "midmorning1")


        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, brunchTopic0, lunchTopic2, cafeTopic0, groceryStoreTopicWEND, runningTopic0, gymTopic2, shoppingClothesTopic1, sundayNow11to14Topic2)

            setNatureImage(to: "day1")


        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(cafePMTopic0, runningTopic0, yogaTopic0, gymTopic3, shoppingClothesTopic0, groceryStoreTopic0, homeAMTopic0, afternoonSnackTopic0, weekendNow14to16Topic2)

            setNatureImage(to: "afternoon1")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic2, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic4, barTopic4, dateTopic0, sundayNow17to18Topic0)

            setNatureImage(to: "sunset1")


        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic2, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic5, barTopic1, dateTopic0, sundayNow19to20Topic0)

            setNatureImage(to: "sunset1")



        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(barTopic2, dateTopic1, safetyTopic1, homePMTopic0, bathroomPMTopic0, lateNightSnackTopic0, bedtimeTopic7, cantSleepTopic1, sunday21to24Topic2)

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
            appendNineTopics(lateNightSnackTopic1, safetyTopic2, homePMTopic1, bathroomPMTopic0, meditationTopic0, barTopic0, bedtimeTopic6, cantSleepTopic1, weekdayNow0to4Topic0)

            setNatureImage(to: "night2")


        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic0, meditationTopic0, gymTopic6, runningTopic0, journalTopic0, breakfastTopic1, cafeTopic1, commuteAMTopic0, weekdayNow5to8Topic8) //*

            setNatureImage(to: "morning2")


        case 8...9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic0, gymTopic7, runningTopic0, breakfastTopic1, cafeTopic1, commuteAMTopic0, workAMTopic5, networkingTopic1, weekdayNow5to8Topic8)

            setNatureImage(to: "morning2")


        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic1, commuteAMTopic0, workAMTopic5, morningSnackTopic1, breakTopic0, runningTopic0, gymTopic8, networkingTopic1, weekdayNow9to11Topic5)

            setNatureImage(to: "midmorning2")


        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic1, workAMTopic5, morningSnackTopic1, breakTopic0, lunchTopic3, gymTopic0, runningTopic0, networkingTopic1, weekdayNow9to11Topic5)

            setNatureImage(to: "midmorning2")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workPMTopic5, lunchTopic3, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic1, meditationTopic0, networkingTopic2, weekdayNow11to14Topic4)

            setNatureImage(to: "day2")


        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic5, afternoonSnackTopic1, breakTopic0, meditationTopic0, cafePMTopic0, commutePMTopic0, gymTopic2, networkingTopic2, weekdayNow14to16Topic5)

            setNatureImage(to: "afternoon2")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic5, afternoonSnackTopic2, breakTopic0, commutePMTopic0, groceryStoreTopicWDAY, happyHourTopic0, gymTopic3, networkingTopic2, weekdayNow14to16Topic5)

            setNatureImage(to: "afternoon2")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            setNatureImage(to: "sunset2")


            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic4, groceryStoreTopic2, dinnerTopic3, restaurantTopic1, happyHourTopic0, homePMTopic1, weekdayNow17to18Topic5)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, groceryStoreTopic2, restaurantTopic1, dinnerTopic3, dateTopic0, barTopic3, networkingTopic1, homePMTopic1, weekdayNow19to20Topic0)


            setNatureImage(to: "sunset2")
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic2, barTopic2, safetyTopic2, homePMTopic1, lateNightSnackTopic0, bathroomPMTopic1, bedtimeTopic7, cantSleepTopic2, weekdayNow21to24Topic5)

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
            appendNineTopics(barTopic0, safetyTopic3, lateNightSnackTopic1, homePMTopic2, journalTopic2, meditationTopic1, bedtimeTopic8, cantSleepTopic1, weekdayNow0to4Topic1)

            setNatureImage(to: "night3")

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, gymTopic6, runningTopic1, meditationTopic1, journalTopic2, cafeTopic2, commuteTuesdayAMTopic0, weekdayNow5to8Topic6) //*

            setNatureImage(to: "morning3")


        case 8...9:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, gymTopic7, runningTopic1, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic6, networkingTopic3, weekdayNow5to8Topic6) //*

            setNatureImage(to: "morning3")


        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic2, commuteTuesdayAMTopic0, gymTopic8, runningTopic1, morningSnackTopic0, breakTopic1, workAMTopic6, networkingTopic3, weekdayNow9to11Topic6)

            setNatureImage(to: "midmorning3")


        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic2, workAMTopic6, morningSnackTopic0, breakTopic1, lunchTopic4, meditationTopic1, gymTopic0, networkingTopic3, weekdayNow9to11Topic6)

            setNatureImage(to: "day3")

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workPMTopic6, lunchTopic4, afternoonSnackTopic0, breakTopic1, cafePMTopic0, gymTopic1, meditationTopic1, networkingTopic4, tuesdayNow11to14Topic0) // Tues specific tips

            setNatureImage(to: "day3")


        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic6, afternoonSnackTopic1, breakPMTopic0, meditationTopic1, cafePMTopic1, commutePMTopic1, gymTopic2, networkingTopic4, weekdayNow14to16Topic6)

            setNatureImage(to: "afternoon3")

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic6, afternoonSnackTopic2, breakPMTopic0, commutePMTopic1, groceryStoreTopic3, happyHourTopic0, gymTopic3, networkingTopic4, weekdayNow14to16Topic6)

            setNatureImage(to: "afternoon3")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic1, commutePMTopic1, happyHourTopic0, gymTopic4, groceryStoreTopic4, dinnerTopic4, networkingTopic2, homePMTopic2, weekdayNow17to18Topic6)

            setNatureImage(to: "sunset3")


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, groceryStoreTopic4, restaurantTopic2, dinnerTopic4, dateTopic2, barTopic1, networkingTopic2, homePMTopic2, weekdayNow19to20Topic1)

            setNatureImage(to: "sunset3")


        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic3, barTopic2, safetyTopic3, homePMTopic2, lateNightSnackTopic0, bathroomPMTopic0, bedtimeTopic0, cantSleepTopic1, weekdayNow21to24Topic6)

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
            appendNineTopics(barTopic4, safetyTopic4, lateNightSnackTopic1, homePMTopic3, journalTopic3, meditationTopic0, bedtimeTopic1, cantSleepTopic1, weekdayNow0to4Topic2)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(getReadyAMTopic2, breakfastTopic0, gymTopic6, runningTopic0, meditationTopic0, journalTopic3, cafeTopic3, commuteAMTopic2, weekdayNow5to8Topic7) //*

            setNatureImage(to: "morning4")


        case 8...9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(getReadyAMTopic2, breakfastTopic0, meditationTopic0, gymTopic7, cafeTopic3, commuteAMTopic2, workAMTopic7, networkingTopic1, weekdayNow5to8Topic7)

            setNatureImage(to: "morning4")


        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(cafeTopic3, commuteAMTopic2, gymTopic8, runningTopic1, breakTopic0, morningSnackTopic1, workAMTopic7, networkingTopic1, weekdayNow9to11Topic7)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(cafeTopic3, workAMTopic7, morningSnackTopic1, breakTopic0, lunchTopic0, meditationTopic0, gymTopic0, networkingTopic1, weekdayNow9to11Topic7)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workPMTopic7, lunchTopic0, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic1, meditationTopic0, networkingTopic2, weekdayNow11to14Topic1)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic7, afternoonSnackTopic1, breakTopic0, cafePMTopic0, meditationTopic0, commutePMTopic2, gymTopic2, networkingTopic2, weekdayNow14to16Topic7)

            setNatureImage(to: "afternoon4")


        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic7, afternoonSnackTopic2, breakTopic0, commutePMTopic2, happyHourTopic0, groceryStoreTopicWDAY, gymTopic3, networkingTopic1, weekdayNow14to16Topic7)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic2, happyHourTopic0, gymTopic4, groceryStoreTopic5, dinnerTopic0, networkingTopic3, homePMTopic3, weekdayNow17to18Topic7)

            setNatureImage(to: "sunset4")


        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic5, groceryStoreTopic5, restaurantTopic0, dinnerTopic0, dateTopic1, barTopic3, networkingTopic3, homePMTopic3, weekdayNow19to20Topic2)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic2, barTopic0, dateTopic0, safetyTopic4, homePMTopic3, lateNightSnackTopic1, bathroomPMTopic1, bedtimeTopic2, weekdayNow21to24Topic7)

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
            appendNineTopics(barTopic1, safetyTopic5, homePMTopic4, lateNightSnackTopic1, bathroomPMTopic0, meditationTopic1,  bedtimeTopic3, cantSleepTopic2, weekdayNow0to4Topic3)

            setNatureImage(to: "night5")


        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(getReadyAMTopic0, breakfastTopic1, gymTopic6, runningTopic0, meditationTopic1, journalTopic0, cafeTopic0, commuteAMTopic3, weekdayNow5to8Topic8)

            setNatureImage(to: "morning5")


        case 8...9:
            appendNineTopics(getReadyAMTopic0, breakfastTopic0, meditationTopic1, gymTopic7, cafeTopic0, commuteAMTopic3, workAMTopic8, networkingTopic3, weekdayNow5to8Topic8)

            setNatureImage(to: "morning5")


        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(cafeTopic0, commuteAMTopic0, gymTopic8, runningTopic1, breakTopic1, morningSnackTopic0, workAMTopic8, networkingTopic3, weekdayNow9to11Topic8)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(cafeTopic0, workAMTopic8, morningSnackTopic0, breakTopic1, meditationTopic1, gymTopic0, lunchTopic1, networkingTopic3, weekdayNow9to11Topic8)

            setNatureImage(to: "midmorning5")


        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(workPMTopic8, lunchTopic1, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic1, meditationTopic1, networkingTopic4, weekdayNow11to14Topic2)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(workPMTopic8, afternoonSnackTopic1, breakPMTopic0, meditationTopic1, cafePMTopic1, gymTopic2, commutePMTopic3, networkingTopic4, weekdayNow14to16Topic8)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic8, afternoonSnackTopic2, breakPMTopic0, commutePMTopic3, happyHourTopic0, gymTopic3, cafePMTopic1, networkingTopic4, weekdayNow14to16Topic8)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic1, commutePMTopic3, happyHourTopic0, groceryStoreTopic6, gymTopic4, dinnerTopic1, networkingTopic4, homePMTopic4, weekdayNow17to18Topic8)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic5, groceryStoreTopic6, dinnerTopic1, restaurantTopic1, dateTopic1, barTopic3, networkingTopic4, homePMTopic4, weekdayNow19to20Topic3)


            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic3, barTopic4, dateTopic2, safetyTopic5, homePMTopic4, lateNightSnackTopic0, bedtimeTopic4, cantSleepTopic2, weekdayNow21to24Topic8)

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
            appendNineTopics(barTopic1, safetyTopic6, lateNightSnackTopic1, homePMTopic5, meditationTopic0, bathroomPMTopic1, bedtimeFriTopic5, cantSleepTopic2, weekdayNow0to4Topic4)

            setNatureImage(to: "night6")


        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, homeAMTopic0, gymTopic6, meditationTopic0, journalTopic0, cafeTopic1, commuteAMTopic4, weekdayNow5to8Topic9)

            setNatureImage(to: "morning6")


        case 8...9:
            print("weekday Fri, Late Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, meditationTopic0, commuteAMTopic4, workAMTopic9, cafeTopic1, gymTopic7, networkingTopic1, weekdayNow5to8Topic9)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(commuteAMTopic4, cafeTopic1, gymTopic8, runningTopic0, workAMTopic9, breakTopic1, morningSnackTopic1, networkingTopic1, weekdayNow9to11Topic9)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(workAMTopic9, morningSnackTopic1, breakTopic1, lunchTopic2, meditationTopic0, gymTopic0, cafeTopic1, networkingTopic1, weekdayNow9to11Topic9)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(workPMTopic9, lunchTopic2, afternoonSnackTopic0, breakTopic1, meditationTopic0, cafePMTopic1, gymTopic1, networkingTopic2, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")


        case 14...15:
            print("weekday Fri, Afternoon")
            appendNineTopics(workPMTopic9, afternoonSnackTopic1, breakTopic1, meditationTopic0, cafePMTopic0, gymTopic2, commuteFridayPMTopic0, networkingTopic2, weekdayNow14to16Topic9)

            setNatureImage(to: "afternoon6")


        case 16:
            print("weekday Fri, Afternoon")
            appendNineTopics(workPMTopic9, afternoonSnackTopic2, breakTopic1, commuteFridayPMTopic0, happyHourTopic0, gymTopic3, cafePMTopic0, networkingTopic2, weekdayNow14to16Topic9)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            appendNineTopics(commuteFridayPMTopic0, happyHourTopic0, groceryStoreTopic7, gymTopic4, restaurantTopic2, dinnerTopic2, networkingTopic3, homePMTopic5, weekdayNow17to18Topic9)

            setNatureImage(to: "afternoon6")


        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(goingOutTopic0, gymTopic5, dinnerTopic2, restaurantTopic0, barTopic2, dateTopic1, homePMTopic0, safetyTopic6, weekdayNow19to20Topic4)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, dateTopic2, barTopic3, safetyTopic6, homePMTopic1, lateNightSnackTopic0, bedtimeFriTopic5, cantSleepTopic1, weekdayNow21to24Topic9)

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
            appendNineTopics(barTopic0, safetyTopic3, homeAMTopic0, lateNightSnackTopic1, meditationTopic1, bathroomPMTopic0, bedtimeTopic6, cantSleepTopic2, saturdayNow0to4Week2Topic2)

            setNatureImage(to: "night7")

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(breakfastTopic1, homeAMTopic0, bathroomPMTopic0, AMRoutineTopic3, meditationTopic1, gymTopic6, runningTopic1, yogaTopic0, weekendNow5to8Topic3)

            setNatureImage(to: "morning7")


        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(breakfastTopic1, homeAMTopic0, bathroomPMTopic0, AMRoutineTopic3, meditationTopic1, gymTopic6, runningTopic1, yogaTopic0, weekendNow5to8Topic3)

            setNatureImage(to: "morning7")


        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic7, yogaTopic0, runningTopic1, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, saturday9to10Topic2)

            setNatureImage(to: "midmorning7")


        case 11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic8, yogaTopic0, lunchTopic3, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, saturday9to10Topic2)

            setNatureImage(to: "midmorning7")


        case 12...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic0, brunchTopic0, lunchTopic3, cafePMTopic1, gymTopic0, runningTopic1, groceryStoreTopicWEND, shoppingClothesTopic2, saturdayNow11to14Topic2)

            setNatureImage(to: "day7")


        case 14:
            print("Weekend, Afternoon")
            appendNineTopics(homePMTopic1, cafePMTopic0, runningTopic1, gymTopic1, groceryStoreTopic6, shoppingClothesTopic2, afternoonSnackTopic0, barTopic1, weekendNow14to16Topic3)

            setNatureImage(to: "afternoon7")


        case 15...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic2, cafePMTopic1, runningTopic1, gymTopic2, groceryStoreTopic6, shoppingClothesTopic2, afternoonSnackTopic1, barTopic1, weekendNow14to16Topic3)

            setNatureImage(to: "afternoon7")


        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic3, goingOutTopic0, dinnerTopic3, restaurantTopic1, dateTopic1, barTopic2, groceryStoreTopic7, safetyTopic2, saturdayNow17to18Topic0)

            setNatureImage(to: "sunset7")


        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic4, goingOutTopic0, dinnerTopic3, restaurantTopic1, dateTopic1, barTopic4, groceryStoreTopic7, safetyTopic3, saturdayNow19to20Topic0)

            setNatureImage(to: "sunset7")


        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic2, dateTopic2, barTopic3, safetyTopic4, homePMTopic5, lateNightSnackTopic0, bathroomPMTopic1, bedtimeTopic7, saturday21to24Topic2)

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


    private func resetTopicButtonOriginalStyle(button: RoundCorneredButton) {

        performUIUpdatesOnMain {
            // reset to original color display
//            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
            button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        }
    }

    func appendNineTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic,_ topic4: Topic,_ topic5: Topic,_ topic6: Topic,_ topic7: Topic, _ topic8Now: Topic) {

        topics = [topic0, topic1, topic2, topic3, topic4, topic5, topic6, topic7, topic8Now]

        print("topics count \(topics.count)")

        // set UIButtons
        self.topic0Button.setTitle(topic0.title, for: .normal)
        self.topic1Button.setTitle(topic1.title, for: .normal)
        self.topic2Button.setTitle(topic2.title, for: .normal)
        self.topic3Button.setTitle(topic3.title, for: .normal)
        self.topic4Button.setTitle(topic4.title, for: .normal)
        self.topic5Button.setTitle(topic5.title, for: .normal)
        self.topic6Button.setTitle(topic6.title, for: .normal)
        self.topic7Button.setTitle(topic7.title, for: .normal)

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

//        resetTopicButtonsSetup()
    }

    func appendNowTips() {
        // for display in table view at launch
        tips = [topics[8].tip[0],
                topics[8].tip[1],
                topics[8].tip[2],
                topics[8].tip[3]]

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


    @IBAction func topicButtonTapped(_ sender: RoundCorneredButton) {
        //IBAction linked to all 8 RoundCorneredButtons
        if let topicNumber = topicButtons.index(of: sender) {

//            DispatchQueue.main.async {
//
//                let indexPath = IndexPath(row: 0, section: 0)
//                self.nowTableView.scrollToRow(at: indexPath, at: .top, animated: true)
//            }

            print("ANDREW: topicButtonTapped", topicNumber)
            print("Number of topics: \(topics.count)")


            flipButton(at: topicNumber, on: sender)

        } else {
            print("ARE WE IN ELSE?")
            performUIUpdatesOnMain {
                self.createAlert(title: "ERROR", message: "Could not load selected tips.")
            }
        }
    }



    func flipButton(at indexNumber: Int, on button: RoundCorneredButton) {

        // reset buttons to original UI display
        resetTopicButtonOriginalStyle(button: topic0Button)
        resetTopicButtonOriginalStyle(button: topic1Button)
        resetTopicButtonOriginalStyle(button: topic2Button)
        resetTopicButtonOriginalStyle(button: topic3Button)
        resetTopicButtonOriginalStyle(button: topic4Button)
        resetTopicButtonOriginalStyle(button: topic5Button)
        resetTopicButtonOriginalStyle(button: topic6Button)
        resetTopicButtonOriginalStyle(button: topic7Button)

        // Identify what button was tapped

        // selected button previously tapped
        // Check if this button has been tapped just prior
        if currentIndex == indexNumber {

            appendNowTips()

            // Unselected
            performUIUpdatesOnMain {
                button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)

                button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)

                self.displayHourInTopicLabel()
            }

            currentIndex = -1
        } else {
            // select button NOT previously tapped
            // gray out selected button
            // display selected topic tips

            appendTipsArrayBasedOnTopicSelected(indexNumber)

            // Selected
            performUIUpdatesOnMain {
//                button.setTitleColor(.black, for: .normal)
//                button.backgroundColor = NowConstants.YvonneColor.silver

                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = NowConstants.YvonneColor.defaultBlue

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
        cell.tipNumberLabel.text = "TIP"

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
