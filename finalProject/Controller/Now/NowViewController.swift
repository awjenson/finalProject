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

    //REMOVE
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

    //REMOVE
    @IBOutlet weak var topic8Label: UILabel!
    @IBOutlet weak var topic9Label: UILabel!
    @IBOutlet weak var topic10Label: UILabel!
    @IBOutlet weak var topic11Label: UILabel!


    // Return button
    @IBOutlet weak var returnToTopButton: RoundCorneredButton!
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var feedbackNowButton: UIButton!
    
    //Tracking user data



    // MARK: - Properties

    var homeButtonSeleted = ""
    let atHome = "atHome"

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current
    var hour = 0 // set at load time
    var newHour = 0 // updates at the top of every hour

    var headers: [Header] = [] // array of headers used for QUOTES

    var currentIndex:Int = -1 //initial integer since UIButton.index start at 0






    // Tips and Topics
    //Row 1
    var topic0: Topic!
    var topic1: Topic!
    var topic2: Topic!
    var topic3: Topic!
    //Row 2
    var topic4: Topic!
    var topic5: Topic!
    var topic6: Topic!
    var topic7: Topic!
    //Row 3
    var topic8: Topic!
    var topic9: Topic!
    var topic10: Topic!
    var topic11: Topic!

    var topics: [Topic] = [] // array of topics
    var tips: [Tip] = []

    //Row 1
    var topicArray0: [Topic]!
    var topicArray1: [Topic]!
    var topicArray2: [Topic]!
    var topicArray3: [Topic]!
    //Row 2
    var topicArray4: [Topic]!
    var topicArray5: [Topic]!
    var topicArray6: [Topic]!
    var topicArray7: [Topic]!

    //Row 3
    var topicArray8: [Topic]!
    var topicArray9: [Topic]!
    var topicArray10: [Topic]!
    var topicArray11: [Topic]!


    var topicsArrays: [Topics] = [] // Array of [array of topics]

    //NOT USED
    var twoDimensionalArray: [Topic] = []

    //Row 1
    var topic0ButtonArray: [Topic]!
    var topic1ButtonArray: [Topic]!
    var topic2ButtonArray: [Topic]!
    var topic3ButtonArray: [Topic]!
    //Row 2
    var topic4ButtonArray: [Topic]!
    var topic5ButtonArray: [Topic]!
    var topic6ButtonArray: [Topic]!
    var topic7ButtonArray: [Topic]!
    //Row 3
    var topic8ButtonArray: [Topic]!
    var topic9ButtonArray: [Topic]!
    var topic10ButtonArray: [Topic]!
    var topic11ButtonArray: [Topic]!

    var topicNowButtonArray: [Topic]!

//    var cellHeaderColor: [UIColor] = []
//    var topicColor: UIColor?

    //User Defaults
    let defaults = UserDefaults.standard
    let relationshipKey = "Relationship"
    let jobKey = "Job"
    let parentKey = "Parent"


    let popupLabel = UILabel()


    // MARK: - Lifecycle Methods


    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("NowViewController homeButtonSeleted: \(homeButtonSeleted)")

        //Used to refresh app when re-entering from background
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.nowVC = self

        setupUI()


        //default counts


        let notificationCenter = NotificationCenter.default

        notificationCenter.addObserver(self, selector: #selector(self.appBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil )

        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: Notification.Name.NSExtensionHostWillEnterForeground, object: nil)

        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: Notification.Name.NSExtensionHostDidEnterBackground, object: nil)



    }

    @objc func appBecomeActive() {
        //reload your Tableview here

    }

    @objc func appMovedToBackground() {
        print("App moved to Background!")
    }

    @objc func appMovedToForeground() {
        print("App moved to ForeGround!")

    }



    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)

    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .darkContent
        } else {
            // Fallback on earlier versions
            return .default
        }
    }



    var selectedTopicTitle = ""

    // MARK: - Methods

    func setupUI() {

        // place 8 buttons in desired order (excludes Now tips)
        topicButtons = [
            topic0Button,
            topic1Button,
            topic2Button,
            topic3Button,
            topic4Button,
            topic5Button,
            topic6Button,
            topic7Button,
            topic8Button,
            topic9Button,
            topic10Button,
            topic11Button,
        ]

        topicLabels = [
            topic0Label,
            topic1Label,
            topic2Label,
            topic3Label,
            topic4Label,
            topic5Label,
            topic6Label,
            topic7Label,
            topic8Label,
            topic9Label,
            topic10Label,
            topic11Label
        ]

        

        // set footer
        footerView.frame.size.height = 200
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

        let hourOfDay = calendar.component(.hour, from: date)

//        let hour = formatter.string(from: Date()) // "12 AM"
//        titleLabel.text = "\(hourString) Tips"
//        titleLabel.text = "Good Afternoon"

        switch hourOfDay {
        case 0...4:
            nowTipTitle = "Late Night Tips"
        case 5...8:
            nowTipTitle = "Morning Tips"
        case 9...10:
            nowTipTitle = "Mid-Morning Tips"
        case 11...13:
            nowTipTitle = "Day Tips"
        case 14...17:
            nowTipTitle = "Afternoon Tips"
        case 18...21:
            nowTipTitle = "Evening Tips"
        case 22...23:
            nowTipTitle = "Night Tips"
        default:
            nowTipTitle = "Today's Tips"
        }

    }



    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {


        let dayOfWeek = calendar.component(.weekday, from: date)
        hour = calendar.component(.hour, from: date)
        let week = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)
        let month = calendar.component(.month, from: date)

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
//        } else {
//            print("Week: \(week) is odd")
//            setupQuoteOdd()
//        }



        //TODO: Quarter Tips, Gender Tips




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


        switch weekOfMonth {
        case 1:
            week1()

        default:
            week1()
        }

    }

    //cleaningTopics
    //kitchenTopics - Day, Evening
    //homeActivitesTopics
    //tvWatchingTopics
    //familyHomeTopics
    //bedroomTopics - Night

    //QUESTION: Why is func called quarterTopics?

    func quarterTopics() -> Topics {
          var selectedTopic: Topics!
          switch defaults.integer(forKey: exerciseKey)
          {
            case 0:
                //running
                selectedTopic = Topics(title: runningTitle, icon: Constants.Icon.running, topics: [runningTopic, postGymTopic])
            case 1:
                //yoga
                selectedTopic = Topics(title: yogaTitle, icon: Constants.Icon.yoga, topics: [yogaTopic, postGymTopic])

            default:
                //running
                selectedTopic = Topics(title: runningTitle, icon: Constants.Icon.running, topics: [runningTopic, postGymTopic])
          }
          return selectedTopic
      }


    //MARK: - WEEK 1

    // More people Google 'diet' and go to the gym at the start of the week, month year
       // Same with starting a new job or new semester, they give us a fresh start

    func sunday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: sunday0to4Topics)
            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: sunday0to4Topics)
            }

        case 5...8:
            print("Weekend, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, commuteWeekendAMTopics,
                    topicsNow: sundayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteWeekendAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: sundayNow5to8Topics)
            }

        case 9:
            print("Weekend, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, commuteWeekendAMTopics,
                    topicsNow: sundayNow9to10Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteWeekendAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: sundayNow9to10Topics)
            }

        case 10:
            print("Weekend, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, morningSnackTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    topicsNow: sundayNow9to10Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics, morningSnackTopics, commuteWeekendAMTopics, bathroomAMTopics, breakTopics, networkingTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: sundayNow9to10Topics)
            }

        case 11:
            print("Weekend, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics, coffeeAtHomeTopics,
                    morningSnackTopics, cleaningTopics, homeActivitesTopics, kitchenTopics,
                bathroomAMTopics, homeActivitesTopics, breakTopics,
                topicsNow: sundayNow11to13Topics)
            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    morningSnackTopics, commuteWeekendAMTopics, bathroomAMTopics, breakTopics,
                    networkingTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                topicsNow: sundayNow11to13Topics)
            }

        case 12...13:
            print("Weekend, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics, afternoonSnackTopics,
                    cleaningTopics, homeActivitesTopics, kitchenTopics,
                    tvWatchingTopics, bathroomAMTopics, breakPMTopics, goingOutTopics,
                topicsNow: sundayNow11to13Topics)
            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, dateTopics,
                    bathroomPMTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                topicsNow: sundayNow11to13Topics)

            }

        case 14...15:
            print("Weekend, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics,
                    homeActivitesTopics, kitchenTopics, cleaningTopics,
                tvWatchingTopics, bathroomPMTopics, breakPMTopics, goingOutTopics,
                topicsNow: sundayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, dateTopics,
                bathroomPMTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                topicsNow: sundayNow14to16Topics)
            }

        case 16:

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, goingOutTopics,  homeActivitesTopics, kitchenTopics, cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: sundayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, dateTopics,
                bathroomPMTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: sundayNow14to16Topics)
            }

        case 17...18:
            print("Weekend, Early Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: sundayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics,
                    happyHourTopics, networkingTopics, dateTopics, commuteWeekendPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: sundayNow17to18Topics)
            }

        case 19...20:
            print("Weekend, Mid Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: sundayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics,
                    happyHourTopics, networkingTopics, dateTopics, commuteWeekendPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: sundayNow19to20Topics)
            }

        case 21:
            print("Weekend, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics,
                    goingOutTopics, cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: sunday21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, barTopics, networkingTopics, dateTopics,
                    commuteWeekendPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: sunday21to24Topics)
            }

        case 22..<24:
            print("Weekend, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics,
                    goingOutTopics, cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: sunday21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, barTopics, networkingTopics, dateTopics,
                    commuteWeekendPMTopics,
                    groceryStoreTopics, safetyTopics, bathroomPMTopics, travelTopics,
                    topicsNow: sunday21to24Topics)
            }

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    func monday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("weekdayMTW, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: mondayNow0to4Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: mondayNow0to4Topics)
            }

        case 5...8:
            print("weekdayMTW, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, workSchoolAMTopics(),
                    topicsNow: mondayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: mondayNow5to8Topics)
            }

        case 9:
            print("weekdayMTW, mid Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    workSchoolAMTopics(),
                    topicsNow: mondayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: mondayNow9to11Topics)
            }

        case 10:
            print("weekdayMTW, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, morningSnackTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: mondayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, morningSnackTopics,
                    cafeTopics, commuteAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: mondayNow9to11Topics)
            }

        case 11:
            print("weekdayMTW, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics,
                    coffeeAtHomeTopics, morningSnackTopics, bathroomAMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: mondayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    commuteWeekendAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: mondayNow11to13Topics)
            }

        case 12...13:
            print("weekdayMTW, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: mondayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: mondayNow11to13Topics)
            }

        case 14...15:
            print("weekdayMTW, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: mondayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakPMTopics,
                    workSchoolPMTopics(),
                    topicsNow: mondayNow14to16Topics)
            }

        case 16:
            print("weekdayMTW, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, afternoonSnackTopics, coffeeAtHomePMTopics, bathroomPMTopics, cleaningTopics, kitchenTopics, homeActivitesTopics, goingOutTopics, breakPMTopics, workSchoolPMTopics(),
                   topicsNow: mondayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics, commutePMTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolPMTopics(),
                   topicsNow: mondayNow14to16Topics)
            }

        case 17...18:
            print("weekdayMTW, Early-Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, afternoonSnackTopics, coffeeAtHomePMTopics, goingOutTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, breakPMTopics,
                    workSchoolLateTopics(),
                    topicsNow: mondayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics, commutePMTopics,
                    happyHourTopics, networkingTopics, dateTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics,  workSchoolLateTopics(),
                    topicsNow: mondayNow17to18Topics)
            }

        case 19...20:
            print("Weekday, Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: mondayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: mondayNow19to20Topics)
            }

        case 21:
            print("Weekday, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(),
                    dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: mondayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: mondayNow21to24Topics)
            }

        case 22..<24:
            print("Weekday, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: mondayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: mondayNow21to24Topics)
            }

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: tuesdayNow0to4Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: tuesdayNow0to4Topics)
            }

        case 5...8:
            print("weekdayMTW, Early Morning")
            //commuteTuesdayAMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, workSchoolAMTopics(),
                    topicsNow: tuesdayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteTuesdayAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: tuesdayNow5to8Topics)
            }

        case 9:
            print("weekdayMTW, Mid Morning")
            //commuteTuesdayAMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    workSchoolAMTopics(),
                    topicsNow: tuesdayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteTuesdayAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: tuesdayNow9to11Topics)
            }

        case 10:
            print("weekdayMTW, Late Morning")
            //commuteTuesdayAMTopics

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, morningSnackTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: tuesdayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, morningSnackTopics,
                    cafeTopics, commuteTuesdayAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: tuesdayNow9to11Topics)
            }

        case 11:
            print("weekdayMTW, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics,
                    coffeeAtHomeTopics, morningSnackTopics, bathroomAMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: tuesdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    commuteTuesdayAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: tuesdayNow11to13Topics)
            }

        case 12...13:
            print("weekdayMTW, Midday")

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: tuesdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: tuesdayNow11to13Topics)
            }

        case 14...15:
            print("weekdayMTW, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: tuesdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakPMTopics,
                    workSchoolPMTopics(),
                    topicsNow: tuesdayNow14to16Topics)
            }

        case 16:
            print("weekdayMTW, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, afternoonSnackTopics, coffeeAtHomePMTopics, bathroomPMTopics, cleaningTopics, kitchenTopics, homeActivitesTopics, goingOutTopics, breakPMTopics, workSchoolPMTopics(),
                    topicsNow: tuesdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    commutePMTopics, groceryStoreTopics, shoppingClothesTopics, workSchoolPMTopics(),
                    topicsNow: tuesdayNow14to16Topics)
            }

        case 17...18:
            print("weekdayMTW, Early-Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, afternoonSnackTopics, coffeeAtHomePMTopics, goingOutTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, breakPMTopics,
                    workSchoolLateTopics(),
                    topicsNow: tuesdayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics, commutePMTopics,
                    happyHourTopics, networkingTopics, dateTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics,  workSchoolLateTopics(),
                    topicsNow: tuesdayNow17to18Topics)
            }


        case 19...20:
            print("Weekday, Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: tuesdayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: tuesdayNow19to20Topics)
            }

        case 21:
            print("Weekday, Late evening")

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(),
                    dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: tuesdayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: tuesdayNow21to24Topics)
            }

        case 22..<24:
            print("Weekday, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: tuesdayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: tuesdayNow21to24Topics)
            }

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: wednesdayNow0to4Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: wednesdayNow0to4Topics)
            }

        case 5...8:
            print("weekdayMTW, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, workSchoolAMTopics(),
                    topicsNow: wednesdayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: wednesdayNow5to8Topics)
            }


        case 9:
            print("weekdayMTW, Mid Morning")

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    workSchoolAMTopics(),
                    topicsNow: wednesdayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: wednesdayNow9to11Topics)
            }

        case 10:
            print("weekdayMTW, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, morningSnackTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: wednesdayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, morningSnackTopics,
                    cafeTopics, commuteAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: wednesdayNow9to11Topics)
            }

        case 11:

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics,
                    coffeeAtHomeTopics, morningSnackTopics, bathroomAMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: wednesdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    commuteWeekendAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: wednesdayNow11to13Topics)
            }

        case 12...13:
            print("weekdayMTW, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: wednesdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: wednesdayNow11to13Topics)
            }


        case 14...15:
            print("weekdayMTW, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: wednesdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakPMTopics,
                    workSchoolPMTopics(),
                    topicsNow: wednesdayNow14to16Topics)
            }

        case 16:
            print("weekdayMTW, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, afternoonSnackTopics, coffeeAtHomePMTopics, bathroomPMTopics, cleaningTopics, kitchenTopics, homeActivitesTopics, goingOutTopics, breakPMTopics, workSchoolPMTopics(),
                    topicsNow: wednesdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics, commutePMTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolPMTopics(),
                    topicsNow: wednesdayNow14to16Topics)
            }


        case 17...18:
            print("weekdayMTW, Early-Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, afternoonSnackTopics, coffeeAtHomePMTopics, goingOutTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, breakPMTopics,
                    workSchoolLateTopics(),
                    topicsNow: wednesdayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics, commutePMTopics,
                    happyHourTopics, networkingTopics, dateTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics,  workSchoolLateTopics(),
                    topicsNow: wednesdayNow17to18Topics)
            }

        case 19...20:
            print("Weekday, Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: wednesdayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: wednesdayNow19to20Topics)
            }

        case 21:
                    print("Weekday, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(),
                    dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: wednesdayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: wednesdayNow21to24Topics)
            }

        case 22..<24:
            print("Weekday, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: wednesdayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: wednesdayNow21to24Topics)
            }

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: thursdayNow0to4Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: thursdayNow0to4Topics)
            }

        case 5...8:
            print("weekdayTF, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, workSchoolAMTopics(),
                   topicsNow: thursdayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                   topicsNow: thursdayNow5to8Topics)
            }


        case 9:

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    workSchoolAMTopics(),
                    topicsNow: thursdayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: thursdayNow9to11Topics)
            }

        case 10:
            print("weekdayTF, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, morningSnackTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: thursdayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, morningSnackTopics,
                    cafeTopics, commuteAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: thursdayNow9to11Topics)
            }


        case 11:
            print("weekdayTF, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics,
                    coffeeAtHomeTopics, morningSnackTopics, bathroomAMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: thursdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    commuteWeekendAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: thursdayNow11to13Topics)
            }

        case 12...13:
            print("weekdayTF, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: thursdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: thursdayNow11to13Topics)
            }


        case 14...15: // 2PM-3PM
            print("weekdayTF, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: thursdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakPMTopics,
                    workSchoolPMTopics(),
                    topicsNow: thursdayNow14to16Topics)
            }


        case 16:
            print("weekdayTF, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, afternoonSnackTopics, coffeeAtHomePMTopics, bathroomPMTopics, cleaningTopics, kitchenTopics, homeActivitesTopics, goingOutTopics, breakPMTopics, workSchoolPMTopics(),
                    topicsNow: thursdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics, commutePMTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolPMTopics(),
                    topicsNow: thursdayNow14to16Topics)
            }


        case 17...18:
            print("weekdayTF, Evening 5PM")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, afternoonSnackTopics, coffeeAtHomePMTopics, goingOutTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, breakPMTopics,
                    workSchoolLateTopics(),
                    topicsNow: thursdayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics, commutePMTopics,
                    happyHourTopics, networkingTopics, dateTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics,  workSchoolLateTopics(),
                    topicsNow: thursdayNow17to18Topics)
            }


        case 19...20:
            print("weekdayTF, Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: thursdayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: thursdayNow19to20Topics)
            }

        case 21:
                    print("weekdayTF, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(),
                    dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: thursdayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: thursdayNow21to24Topics)
            }

        case 22..<24:
            print("weekdayTF, Late evening")

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: thursdayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, lateNightSnackTopics, commutePMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: thursdayNow21to24Topics)
            }

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: fridayNow0to4Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                    topicsNow: fridayNow0to4Topics)
            }

        case 5...8:
            print("weekday Fri, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, workSchoolAMTopics(),
                    topicsNow: fridayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: fridayNow5to8Topics)
            }

        case 9:
            print("weekday Fri, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    workSchoolAMTopics(),
                    topicsNow: fridayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: fridayNow9to11Topics)
            }


        case 10:
            print("weekday Fri, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, morningSnackTopics, coffeeAtHomeTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: fridayNow9to11Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, morningSnackTopics,
                    cafeTopics, commuteAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: fridayNow9to11Topics)
            }


        case 11:
            print("weekday Fri, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics,
                    coffeeAtHomeTopics, morningSnackTopics, bathroomAMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, breakTopics, workSchoolAMTopics(),
                    topicsNow: fridayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    commuteWeekendAMTopics, networkingTopics, bathroomAMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(), travelTopics,
                    topicsNow: fridayNow11to13Topics)
            }

        case 12...13:
            print("weekday Fri, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: fridayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: fridayNow11to13Topics)
            }

        case 14...15:
            print("weekday Fri, Afternoon")
            ////FRIDAY ONLY COMMUTE

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, bathroomPMTopics, homeActivitesTopics,
                    cleaningTopics, kitchenTopics, goingOutTopics, breakTopics, workSchoolPMTopics(),
                    topicsNow: fridayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, breakPMTopics,
                    workSchoolPMTopics(),
                    topicsNow: fridayNow14to16Topics)
            }


        case 16:
            print("weekday Fri, Afternoon")
            //commuteFridayPMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, afternoonSnackTopics, coffeeAtHomePMTopics, bathroomPMTopics, cleaningTopics, kitchenTopics, homeActivitesTopics, goingOutTopics, breakPMTopics, workSchoolPMTopics(),
                    topicsNow: fridayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, bathroomPMTopics, commuteFridayPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, workSchoolPMTopics(),
                    topicsNow: fridayNow14to16Topics)
            }


        case 17...18:
            print("weekday Fri, Evening 5-6PM")
            //commuteFridayPMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, afternoonSnackTopics, coffeeAtHomePMTopics, goingOutTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, breakPMTopics,
                    workSchoolLateTopics(),
                    topicsNow: fridayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics,  commuteFridayPMTopics,
                    happyHourTopics, networkingTopics, dateTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics,  workSchoolLateTopics(),
                    topicsNow: fridayNow17to18Topics)
            }

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            //commuteFridayPMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: fridayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, lateNightSnackTopics,  commuteFridayPMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: fridayNow19to20Topics)
            }

        case 21:
            print("weekdayTF, Late evening 9-12PM")
            //commuteFridayPMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(),
                    dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                     topicsNow: fridayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics,
                    commuteFridayPMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                     topicsNow: fridayNow21to24Topics)
            }

        case 22..<24:
            print("weekdayTF, Late evening 9-12PM")
            //commuteFridayPMTopics

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics, cleaningTopics,
                    homeActivitesTopics, tvWatchingTopics, bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                     topicsNow: fridayNow21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, lateNightSnackTopics, commuteFridayPMTopics,
                    barTopics, networkingTopics, dateTopics,
                    safetyTopics, groceryStoreTopics, bathroomPMTopics, travelTopics,
                     topicsNow: fridayNow21to24Topics)
            }

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, kitchenTopics,
                    cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                topicsNow: saturday0to4Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics, barTopics, lateNightSnackTopics, networkingTopics, dateTopics, safetyTopics, commutePMTopics,
                    groceryStoreTopics, bathroomPMTopics, travelTopics,
                topicsNow: saturday0to4Topics)
            }

            

        case 5...8:
            print("Weekend, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, commuteWeekendAMTopics,
                    topicsNow: saturdayNow5to8Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteWeekendAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: saturdayNow5to8Topics)
            }

        case 9:
            print("Weekend, Early Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, homeActivitesTopics, bedroomTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, commuteWeekendAMTopics,
                    topicsNow: saturdayNow9to10Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBreakfastTopics, cafeTopics,
                    commuteWeekendAMTopics, bathroomAMTopics, breakTopics, networkingTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: saturdayNow9to10Topics)
            }

        case 10:
            print("Weekend, Late Morning")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, getReadyAMTopics,
                    breakfastTopics, coffeeAtHomeTopics, morningSnackTopics, homeActivitesTopics,
                    bathroomAMTopics, kitchenTopics, cleaningTopics, breakTopics,
                    topicsNow: saturdayNow9to10Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics, morningSnackTopics, commuteWeekendAMTopics, bathroomAMTopics, breakTopics, networkingTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: saturdayNow9to10Topics)
            }

        case 11:
            print("Weekend, Midday")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), AMRoutineTopics, breakfastTopics, coffeeAtHomeTopics,
                    morningSnackTopics, cleaningTopics, homeActivitesTopics, kitchenTopics,
                bathroomAMTopics, homeActivitesTopics, breakTopics,
                    topicsNow: saturdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantBrunchTopics, cafeTopics,
                    morningSnackTopics, commuteWeekendAMTopics, bathroomAMTopics, breakTopics,
                    networkingTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: saturdayNow11to13Topics)
            }

        case 12...13:
            print("Weekend, Midday")

            switch homeButtonSeleted {
            case atHome:

                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics, afternoonSnackTopics,
                    cleaningTopics, homeActivitesTopics, kitchenTopics,
                    tvWatchingTopics, bathroomAMTopics, breakPMTopics, goingOutTopics,
                    topicsNow: saturdayNow11to13Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, dateTopics,
                    bathroomPMTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: saturdayNow11to13Topics)
            }

        case 14...15:
            print("Weekend, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics,
                    homeActivitesTopics, kitchenTopics, cleaningTopics,
                tvWatchingTopics, bathroomPMTopics, breakPMTopics, goingOutTopics,
                    topicsNow: saturdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, dateTopics,
                bathroomPMTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: saturdayNow14to16Topics)
            }


        case 16:
                   print("Weekend, Afternoon")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), lunchTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, goingOutTopics,  homeActivitesTopics, kitchenTopics, cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: saturdayNow14to16Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantLunchTopics, afternoonSnackTopics,
                    cafePMTopics, happyHourTopics, networkingTopics, dateTopics,
                bathroomPMTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
                    topicsNow: saturdayNow14to16Topics)
            }

        case 17...18:
            print("Weekend, Early Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    afternoonSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: saturdayNow17to18Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics,
                    happyHourTopics, networkingTopics, dateTopics, commuteWeekendPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: saturdayNow17to18Topics)
            }

        case 19...20:
            print("Weekend, Early Evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerTopics, coffeeAtHomePMTopics,
                    lateNightSnackTopics, goingOutTopics, homeActivitesTopics, kitchenTopics,
                    cleaningTopics, tvWatchingTopics, bathroomPMTopics, breakPMTopics,
                    topicsNow: saturdayNow19to20Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerTopics, afternoonSnackTopics,
                    happyHourTopics, networkingTopics, dateTopics, commuteWeekendPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: saturdayNow19to20Topics)
            }

        case 21:
            print("Weekend, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics,
                    goingOutTopics, cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: saturday21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, barTopics, networkingTopics, dateTopics,
                    commuteWeekendPMTopics,
                    groceryStoreTopics, shoppingClothesTopics, safetyTopics, travelTopics,
                    topicsNow: saturday21to24Topics)
            }

        case 22..<24:
            print("Weekend, Late evening")

            switch homeButtonSeleted {
            case atHome:
                appendNineTopics(
                    gymTopics, runYogaTopics(), dinnerAfter9PMTopics, lateNightSnackTopics,
                    goingOutTopics, cleaningTopics, homeActivitesTopics, tvWatchingTopics,
                    bathroomPMTopics, bedroomTopics, bedtimeTopics, cantSleepTopics,
                    topicsNow: saturday21to24Topics)

            default: //notHome
                appendNineTopics(
                    gymTopics, runYogaTopics(), restaurantDinnerAfter9PMTopics,
                    lateNightSnackTopics, barTopics, networkingTopics, dateTopics,
                    commuteWeekendPMTopics,
                    groceryStoreTopics, safetyTopics, bathroomPMTopics, travelTopics,
                    topicsNow: saturday21to24Topics)
            }

        default:
            print("Weekend,INVALID HOUR!")
        }
    }





    func setNatureImage(to imageTitle: String) {
        performUIUpdatesOnMain {
//            self.natureImageView.image = UIImage(named: imageTitle)
        }
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

//            let unTappedButtonEdgeInsets = UIEdgeInsets(top: 0.5, left: 0.5 , bottom: 0.5, right: 0.5)
//
//            //row1
//            self.topic0Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic1Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic2Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic3Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            //row2
//            self.topic4Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic5Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic6Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic7Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            //row3
//            self.topic8Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic9Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic10Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.topic11Button.imageEdgeInsets = unTappedButtonEdgeInsets

//            //UIButton.imageView.image
//            //row1
//            self.topic0Button.imageView?.image = UIImage(named: self.topicsArrays[0].icon)
//            self.topic1Button.imageView?.image = UIImage(named: self.topicsArrays[1].icon)
//            self.topic2Button.imageView?.image = UIImage(named: self.topicsArrays[2].icon)
//            self.topic3Button.imageView?.image = UIImage(named: self.topicsArrays[3].icon)
//            //row2
//            self.topic4Button.imageView?.image = UIImage(named: self.topicsArrays[4].icon)
//            self.topic5Button.imageView?.image = UIImage(named: self.topicsArrays[5].icon)
//            self.topic6Button.imageView?.image = UIImage(named: self.topicsArrays[6].icon)
//            self.topic7Button.imageView?.image = UIImage(named: self.topicsArrays[7].icon)
//            //row3
//            self.topic8Button.imageView?.image = UIImage(named: self.topicsArrays[8].icon)
//            self.topic9Button.imageView?.image = UIImage(named: self.topicsArrays[9].icon)
//            self.topic10Button.imageView?.image = UIImage(named: self.topicsArrays[10].icon)
//            self.topic11Button.imageView?.image = UIImage(named: self.topicsArrays[11].icon)



            //UIButton.setImage()
            //row1
            self.topic0Button.setImage(UIImage(named: self.topicsArrays[0].icon), for: .normal)
            self.topic1Button.setImage(UIImage(named: self.topicsArrays[1].icon), for: .normal)
            self.topic2Button.setImage(UIImage(named: self.topicsArrays[2].icon), for: .normal)
            self.topic3Button.setImage(UIImage(named: self.topicsArrays[3].icon), for: .normal)
            //row2
            self.topic4Button.setImage(UIImage(named: self.topicsArrays[4].icon), for: .normal)
            self.topic5Button.setImage(UIImage(named: self.topicsArrays[5].icon), for: .normal)
            self.topic6Button.setImage(UIImage(named: self.topicsArrays[6].icon), for: .normal)
            self.topic7Button.setImage(UIImage(named: self.topicsArrays[7].icon), for: .normal)
            //row3
            self.topic8Button.setImage(UIImage(named: self.topicsArrays[8].icon), for: .normal)
            self.topic9Button.setImage(UIImage(named: self.topicsArrays[9].icon), for: .normal)
            self.topic10Button.setImage(UIImage(named: self.topicsArrays[10].icon), for: .normal)
            self.topic11Button.setImage(UIImage(named: self.topicsArrays[11].icon), for: .normal)


        }
    }

    func setupButtons(_ topics: [Topics]) {

        //https://stackoverflow.com/questions/1469474/setting-an-image-for-a-uibutton-in-code
        print("topics: \(topics)")

        //BUTTON ICONS

            //row 1
        self.topic0Button.setImage(UIImage(named: topics[0].icon) , for: UIControl.State.normal)
            self.topic1Button.setImage(UIImage(named: topics[1].icon) , for: UIControl.State.normal)
            self.topic2Button.setImage(UIImage(named: topics[2].icon) , for: UIControl.State.normal)
            self.topic3Button.setImage(UIImage(named: topics[3].icon) , for: UIControl.State.normal)
        //row2
        self.topic4Button.setImage(UIImage(named: topics[4].icon) , for: UIControl.State.normal)
            self.topic5Button.setImage(UIImage(named: topics[5].icon) , for: UIControl.State.normal)
            self.topic6Button.setImage(UIImage(named: topics[6].icon) , for: UIControl.State.normal)
            self.topic7Button.setImage(UIImage(named: topics[7].icon) , for: UIControl.State.normal)

        //row3
        self.topic8Button.setImage(UIImage(named: topics[8].icon) , for: UIControl.State.normal)
            self.topic9Button.setImage(UIImage(named: topics[9].icon) , for: UIControl.State.normal)
            self.topic10Button.setImage(UIImage(named: topics[10].icon) , for: UIControl.State.normal)
            self.topic11Button.setImage(UIImage(named: topics[11].icon) , for: UIControl.State.normal)


        //BUTTON LABELS

        //row1
        self.topic0Label.text = topics[0].title
        self.topic1Label.text = topics[1].title
        self.topic2Label.text = topics[2].title
        self.topic3Label.text = topics[3].title

        //row2
        self.topic4Label.text = topics[4].title
        self.topic5Label.text = topics[5].title
        self.topic6Label.text = topics[6].title
        self.topic7Label.text = topics[7].title

        //row2
        self.topic8Label.text = topics[8].title
        self.topic9Label.text = topics[9].title
        self.topic10Label.text = topics[10].title
        self.topic11Label.text = topics[11].title
    }


    func appendNineTopics(_ topics0: Topics, _ topics1: Topics, _ topics2: Topics, _ topics3: Topics,
                          _ topics4: Topics, _ topics5: Topics, _ topics6: Topics, _ topics7: Topics,
                          _ topics8: Topics, _ topics9: Topics, _ topics10: Topics, _ topics11: Topics,
                          topicsNow: Topics) {

        topicsArrays = [topics0, topics1, topics2, topics3,
                        topics4, topics5, topics6, topics7,
                        topics8, topics9, topics10, topics11,
                        topicsNow]

        setupButtons(topicsArrays)

       //set array that displays in initial tableview
        twoDimensionalArray = topicsNow.topics

    }




    func scrollToTopTableView() {
        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.nowTableView.setContentOffset(.zero, animated: false)
        }
    }

    // MARK: - IB ACTIONS

    //https://www.hackingwithswift.com/example-code/uikit/how-to-generate-haptic-feedback-with-uifeedbackgenerator
    @objc func tapped() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }

    @IBAction func goToYouTabTapped(_ sender: Any) {
        tapped()
        scrollToTopTableView()
        tabBarController?.selectedIndex = 1
    }

    @IBAction func returnToTopTapped(_ sender: Any) {
        tapped()
        scrollToTopTableView()

    }

//    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.nowTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }

    //MARK: - IB ACTIONS


    @IBAction func topicButtonTapped(_ sender: CircleButton) {

        tapped()

        // reset buttons to original UI display
        //row1

        // button title

        //IBAction linked to all CircleButton(s)
        if let topicNumber = topicButtons.firstIndex(of: sender) {

            print("topicNumber: \(topicNumber)")
            flipButton(at: topicNumber, on: sender)

        } else {
            print("ARE WE IN ELSE?")
            performUIUpdatesOnMain {
                self.createAlert(title: "ERROR", message: "Could not load selected tips.")
            }
        }
    }


    func resetUIofAllButtonsToOriginalIcons() {

        //row1
        resetTopicButtonOriginalStyle(button: topic0Button)
        resetTopicButtonOriginalStyle(button: topic1Button)
        resetTopicButtonOriginalStyle(button: topic2Button)
        resetTopicButtonOriginalStyle(button: topic3Button)
        //row2
        resetTopicButtonOriginalStyle(button: topic4Button)
        resetTopicButtonOriginalStyle(button: topic5Button)
        resetTopicButtonOriginalStyle(button: topic6Button)
        resetTopicButtonOriginalStyle(button: topic7Button)
        //row3
        resetTopicButtonOriginalStyle(button: topic8Button)
        resetTopicButtonOriginalStyle(button: topic9Button)
        resetTopicButtonOriginalStyle(button: topic10Button)
        resetTopicButtonOriginalStyle(button: topic11Button)

    }

    func flipButton(at indexNumber: Int, on button: CircleButton) {
        print("NOW VC - func flipButton tapped at \(indexNumber)")

        resetUIofAllButtonsToOriginalIcons()

        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped Button, Return to NOW Tips")

            // Selected button previously tapped, return to Now Tips
            // Check if this button has been tapped just prior
            twoDimensionalArray = []

            //NOW Topics are located in the 12th position of topicsArrays
            twoDimensionalArray = topicsArrays[12].topics

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

            print("B - Newly Tapped Button")

            // select button NOT previously tapped
            // in button, replace topic icon with "check icon"
            // in tableView, replace NOW tips with topic tips
            twoDimensionalArray = []

            twoDimensionalArray = topicsArrays[indexNumber].topics

//            appendTipsArrayBasedOnTopicSelected(indexNumber)

            // Selected
            performUIUpdatesOnMain {


//                button.imageEdgeInsets = UIEdgeInsets(top: 0.5, left: 0.5 , bottom: 0.5, right: 0.5)


                // button title


//                button.setTitleColor(.white, for: .normal)
//                button.backgroundColor = NowConstants.YvonneColor.defaultBlue

                //Display selected Topic Title
//                let originalTitleText = self.topics[indexNumber].title
//                let replacedText = originalTitleText.replacingOccurrences(of: "\n", with: "").uppercased()

//                self.topicLabel.text = "\(replacedText) TIPS"

                //selected button
//                button.imageView?.image = UIImage(named: Constants.Icon.cancel)

                button.setImage(UIImage(named: Constants.Icon.cancel), for: .normal)

                print("B - Newly Tapped Button: \(String(describing: button.imageView?.image))")



            }

            currentIndex = indexNumber
        }// end of else

        performUIUpdatesOnMain {
            self.nowTableView.reloadData()
        }
    }





    func appendTipsArrayBasedOnTopicSelected(_ index: Int) {
        tips = []
        twoDimensionalArray = []

        // Take selected index in topics array and subtract 1 because we start with zero
        let counter = (topicsArrays[index].topics.count - 1)

        print("counter: \(counter)")

        for item in 0...counter {
            tips.append(topics[index].tip[item])
        }
    }


    @IBAction func feedbackNowButtonTapped(_ sender: Any) {
        tapped()
        goToSourceURL(url: Constants.Website.rizeFormURL)

    }






} // End of Home2ViewController

// MARK: - Table View Methods

extension NowViewController: UITableViewDataSource, UITableViewDelegate {


    //SECTION HEADER
    //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-section-header-to-a-table-view

    func titleColor(number: Int) -> UIColor {
        switch number {
        case 0:
            return UIColor.blue
        case 1:
            return UIColor.blue
        case 2:
            return UIColor.blue
        default:
            return UIColor.blue
        }
    }



    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        //http://swiftquickstart.blogspot.com/2016/10/custom-tableview-section-headers.html

        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 20))
        headerView.backgroundColor = Constants.RizeBackgroundColor.rizeAppUIColor

        let label = UILabel()
        //Display section title text
        label.text = ""
        label.text = twoDimensionalArray[section].title.uppercased()
        label.frame = CGRect.init(x: 26, y: 15, width: headerView.frame.width-10, height: headerView.frame.height)

        label.layer.cornerRadius = 8
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textColor = titleColor(number: section).darker()
        headerView.addSubview(label)

        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        print("twoDimensionalArray.count: \(twoDimensionalArray.count)")
        return twoDimensionalArray.count
    }


    //CELL

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return twoDimensionalArray[section].tip.count

    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /* In the future, you could create multiple subviews and then use a switch statement to display data for each subview
        https://www.makeschool.com/online-courses/utorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui */

        // Whatever tip is at each row
//        let tip = tips[indexPath.row]

//        let tip = twoDimensionalArray[indexPath.section].tips[indexPath.row]

        let tip = twoDimensionalArray[indexPath.section].tip[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NowTableViewCell

        // cell's bottom line UI
        cell.layoutMargins = UIEdgeInsets.zero

//        cell.tipNumberLabel.text = "\(indexPath.row + 1)"

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        cell.headerLabel.textColor = titleColor(number: indexPath.section)


        //Tell UITableViewCell who it's delegate is
        //Give the boss the intern
        cell.delegate = self //self is the NowVC

        return cell
    }





}

// MARK: - Table View Cell Methods

extension NowViewController: NowTableViewCellDelegate {


    func goToBuyURL(buyURL: String) {

        let buyURL = URL(string: buyURL)!
        let safariVC = SFSafariViewController(url: buyURL)
        safariVC.dismissButtonStyle = .close
        safariVC.preferredBarTintColor = Constants.RizeBackgroundColor.rizeAppUIColor
        safariVC.preferredControlTintColor = UIColor.blue
        present(safariVC, animated: true, completion: nil)
    }

    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sourceURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sourceURL)
        safariVC.dismissButtonStyle = .close
        safariVC.preferredBarTintColor = Constants.RizeBackgroundColor.rizeAppUIColor
        safariVC.preferredControlTintColor = UIColor.blue
        present(safariVC, animated: true, completion: nil)
    }

    func goToActivityView(header: String, title: String, body: String) {
        let rizeLogo = UIImage(named: "AppIcon")

        let activityVC = UIActivityViewController(activityItems: ["Tip: \(header)\n\n","\(title)\n\n", "\(body)\n\n","For more tips, download the 'Rize: Smarter Decisions Now' on Apple's App Store", rizeLogo as Any], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view

        self.present(activityVC, animated: true, completion: nil)
    }

}
