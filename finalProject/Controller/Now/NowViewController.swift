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
    


    // MARK: - Properties



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


    // MARK: - Lifecycle Methods





    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //Used to refresh app when re-entering from background
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.nowVC = self

        setupUI()

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
        topicButtons = [topic0Button, topic1Button, topic2Button, topic3Button, topic4Button, topic5Button, topic6Button, topic7Button,
            topic8Button, topic9Button, topic10Button, topic11Button,
        ]

        topicLabels = [topic0Label, topic1Label, topic2Label, topic3Label,
                       topic4Label, topic5Label, topic6Label, topic7Label,
                        topic8Label, topic9Label, topic10Label, topic11Label]

        

        // set footer
        footerView.frame.size.height = 250
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


    //MARK: - WEEK 1

    // More people Google 'diet' and go to the gym at the start of the week, month year
       // Same with starting a new job or new semester, they give us a fresh start

    func sunday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                             restaurantTopic, lateNightSnackTopic, groceryStoreAMTopic, homeAMTopic,
//                             bathroomPMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             sunday0to4Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: sunday0to4Topics)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, homeAMTopic, bathroomTopic, cafeTopic, networkingTopic, groceryStoreAMTopic, travelTopic,
//                             sundayNow5to8Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics,
            cafeTopics, restaurantTopics, networkingTopics, bathroomAMTopics,
            homeAMTopics,  groceryStoreTopics, commuteWeekendAMTopics, travelTopics,
            topicsNow: sundayNow5to8Topics)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, bathroomTopic, getReadyAMTopic, breakfastTopic, cafeTopic, networkingTopic, groceryStoreAMTopic, travelTopic,
//                             sundayNow9to10Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteWeekendAMTopics, travelTopics,
            topicsNow: sundayNow9to10Topics)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
//                             homeAMTopic, getReadyAMTopic, brunchTopic, cafeTopic,
//                networkingTopic, groceryStoreAMTopic, shoppingClothesTopic, travelTopic,
//                sundayNow9to10Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, travelTopics,
            topicsNow: sundayNow9to10Topics)

        case 11:
                    print("Weekend, Midday")
        //            append12Topics(homeAMTopic, gymTopic, runningTopic, cafePMTopic,
        //                             brunchTopic, lunchTopic, restaurantTopic, barTopic1,
        //                             networkingTopic, groceryStoreWENDTopic, shoppingClothesTopic, travelTopic,
        //                             sundayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, travelTopics,
            topicsNow: sundayNow11to13Topics)

        case 12...13:
            print("Weekend, Midday")
//            append12Topics(homeAMTopic, gymTopic, runningTopic, cafePMTopic,
//                             brunchTopic, lunchTopic, restaurantTopic, barTopic1,
//                             networkingTopic, groceryStoreWENDTopic, shoppingClothesTopic, travelTopic,
//                             sundayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, travelTopics,
            topicsNow: sundayNow11to13Topics)

        case 14...15:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, gymTopic, runningTopic, yogaTopic, afternoonSnackTopic, cafePMTopic, barTopic, networkingTopic, dateTopic, shoppingClothesTopic, groceryStoreWENDTopic, travelTopic, sundayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
            topicsNow: sundayNow14to16Topics)

        case 16:
//           append12Topics(homePMTopic, gymTopic, runningTopic, yogaTopic, afternoonSnackTopic, cafePMTopic, barTopic, networkingTopic, dateTopic, shoppingClothesTopic, groceryStoreWENDTopic, travelTopic, sundayNow14to16Topic)

           appendNineTopics(
           exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
           happyHourTopics, networkingTopics,  bathroomPMTopics, commuteWeekendPMTopics,
           groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
           topicsNow: sundayNow14to16Topics)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, groceryStoreWENDTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
//                             sundayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commuteWeekendPMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
            topicsNow: sundayNow17to18Topics)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, safetyTopic, groceryStoreWENDTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
//                             sundayNow19to20Topic)


            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, homePMTopics, groceryStoreTopics, shoppingClothesTopics,
            topicsNow: sundayNow19to20Topics)

        case 21:
                    print("Weekend, Late evening")
                    // call function to display 9 time-based topics
        //            append12Topics(dinnerAfter9PMTopic, lateNightSnackTopic, barTopic, dateTopic,
        //                             safetyTopic, networkingTopic, gymTopic, homePMTopic,
        //                             bathroomPMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
        //                             sunday21to24Topic)


            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: sunday21to24Topics)

        case 22..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, lateNightSnackTopic, barTopic, dateTopic,
//                             safetyTopic, networkingTopic, gymTopic, homePMTopic,
//                             bathroomPMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             sunday21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: sunday21to24Topics)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)


    func monday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                              restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic,
//                             homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             mondayNow0to4Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: mondayNow0to4Topics)

        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
//                             mondayNow5to8Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: mondayNow5to8Topics)
            //
            //NOW
            //getReady
            //AM bathroom
            //AM routine
            //commute/noCommute
            //Work School

            //socializing button?

            // meditate, journal,
            // work, networking


        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
//                             getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic, mondayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: mondayNow9to11Topics)

            //NOW
            //AMRoutine?
            //gettingReady
            //AMcommute
            //Work/School
            //Bathroom

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
//            append12Topics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic, mondayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: mondayNow9to11Topics)

            //NOW
            //AMRoutine?
            //GettingReady?
            //Commute?
            //Work/School
            //Break
            //Bathroom?

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
//            append12Topics(morningSnackTopic, lunchTopic, restaurantTopic, cafeTopic, gymTopic, runningTopic, yogaTopic, workAMTopic, bathroomTopic, networkingTopic, breakTopic, schoolAMTopic,
//                             mondayNow11to13Topic)


            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: mondayNow11to13Topics)

            //snackTopics, cafeTopics

            //NOW
            //Work/School
            //Break
            //Bathroom


        case 12...13:
            print("weekdayMTW, Midday")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
//                             mondayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
            topicsNow: mondayNow11to13Topics)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
//            append12Topics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             mondayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: mondayNow14to16Topics)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
//            append12Topics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             mondayNow14to16Topic)

           appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics,  bathroomPMTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
           topicsNow: mondayNow14to16Topics)

        case 17...18:
            print("weekdayMTW, Early-Evening")

//            append12Topics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
//                             mondayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolLateTopics(),
            topicsNow: mondayNow17to18Topics)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
//            append12Topics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
//                             mondayNow19to20Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, homePMTopics, groceryStoreTopics, shoppingClothesTopics,
            topicsNow: mondayNow19to20Topics)

        case 21:
                    print("Weekday, Late evening")
                    // call function to display 9 time-based topics
        //            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
        //                             dateTopic, safetyTopic, gymTopic, homePMTopic,
        //                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
        //                             mondayNow21to24Topic)


            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics, barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: mondayNow21to24Topics)

        case 22..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
//                             dateTopic, safetyTopic, gymTopic, homePMTopic,
//                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
//                             mondayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: mondayNow21to24Topics)

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
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             tuesdayNow0to4Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: tuesdayNow0to4Topics)

        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, schoolAMTopic,
//                             tuesdayNow5to8Topic) //TUESDAY COMMUTE

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteTuesdayAMTopics, workSchoolAMTopics(),
            topicsNow: tuesdayNow5to8Topics)


        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, networkingTopic, schoolAMTopic,
//                             tuesdayNow9to11Topic) //*

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteTuesdayAMTopics, workSchoolAMTopics(),
            topicsNow: tuesdayNow9to11Topics)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
//            append12Topics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
//                             tuesdayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: tuesdayNow9to11Topics)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, yogaTopic, runningTopic, workAMTopic, bathroomTopic, breakTopic, networkingTopic, schoolPMTopic,
//                             tuesdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: tuesdayNow11to13Topics)

        case 12...13:
            print("weekdayMTW, Midday")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
//                             tuesdayNow11to13Topic) // Tues specific tips

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
            topicsNow: tuesdayNow11to13Topics)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
//            append12Topics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic0, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             tuesdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: tuesdayNow14to16Topics)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
//            append12Topics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic0, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             tuesdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics,  bathroomPMTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
                       topicsNow: tuesdayNow14to16Topics)

        case 17...18:
            print("weekdayMTW, Early-Evening")
//            append12Topics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
//                             tuesdayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolLateTopics(),
            topicsNow: tuesdayNow17to18Topics)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
//            append12Topics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
//                             tuesdayNow19to20Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, homePMTopics, groceryStoreTopics, shoppingClothesTopics,
            topicsNow: tuesdayNow19to20Topics)

        case 21:
                    print("Weekday, Late evening")
                    // call function to display 9 time-based topics
        //            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
        //                             dateTopic, safetyTopic, gymTopic, homePMTopic,
        //                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
        //                             tuesdayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics, barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: tuesdayNow21to24Topics)

        case 22..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
//                             dateTopic, safetyTopic, gymTopic, homePMTopic,
//                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
//                             tuesdayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: tuesdayNow21to24Topics)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             wednesdayNow0to4Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: wednesdayNow0to4Topics)

        case 5...8:
            print("weekdayMTW, Early Morning")
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
//                             wednesdayNow5to8Topic) //*

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: wednesdayNow5to8Topics)


        case 9:
            print("weekdayMTW, Mid Morning")
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic,
//                             wednesdayNow9to11Topic)


            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: wednesdayNow9to11Topics)

        case 10:
            print("weekdayMTW, Late Morning")
//            append12Topics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
//                             wednesdayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: wednesdayNow9to11Topics)


        case 11:
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, yogaTopic, runningTopic, workAMTopic, bathroomTopic, breakTopic, networkingTopic, schoolPMTopic,
//                             wednesdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: wednesdayNow11to13Topics)


        case 12...13:
            print("weekdayMTW, Midday")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
//                             wednesdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
            topicsNow: wednesdayNow11to13Topics)


        case 14...15:
            print("weekdayMTW, Afternoon")
//            append12Topics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             wednesdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: wednesdayNow14to16Topics)

        case 16:
            print("weekdayMTW, Afternoon")
//            append12Topics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreTopic, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             wednesdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics,  bathroomPMTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: wednesdayNow14to16Topics)


        case 17...18:
            print("weekdayMTW, Early-Evening")
//            append12Topics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
//                             wednesdayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolLateTopics(),
            topicsNow: wednesdayNow17to18Topics)

        case 19...20:
            print("Weekday, Evening")
//            append12Topics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
//                             wednesdayNow19to20Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, homePMTopics, groceryStoreTopics, shoppingClothesTopics,
            topicsNow: wednesdayNow19to20Topics)

        case 21:
                    print("Weekday, Late evening")
        //            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
        //                             dateTopic, safetyTopic, gymTopic, homePMTopic,
        //                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
        //                             wednesdayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics, barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: wednesdayNow21to24Topics)

        case 22..<24:
            print("Weekday, Late evening")
//            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
//                             dateTopic, safetyTopic, gymTopic, homePMTopic,
//                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
//                             wednesdayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: wednesdayNow21to24Topics)

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
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             thursdayNow0to4Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: thursdayNow0to4Topics)

        case 5...8:
            print("weekdayTF, Early Morning")
//            append12Topics(AMRoutineTopic, gymTopic, yogaTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
//                             thursdayNow5to8Topic)

        appendNineTopics(
         exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
         restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
         groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
        topicsNow: thursdayNow5to8Topics)


        case 9:
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic,
//                             thursdayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: thursdayNow9to11Topics)

        case 10:
            print("weekdayTF, Late Morning")
//            append12Topics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
//                             thursdayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: thursdayNow9to11Topics)


        case 11:
            print("weekdayTF, Late Morning")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, yogaTopic, runningTopic, workAMTopic, bathroomTopic, breakTopic, networkingTopic, schoolPMTopic,
//                             thursdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: thursdayNow11to13Topics)

        case 12...13:
            print("weekdayTF, Midday")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
//                             thursdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
            topicsNow: thursdayNow11to13Topics)


        case 14...15: // 2PM-3PM
            print("weekdayTF, Afternoon")

//            append12Topics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             thursdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: thursdayNow14to16Topics)


        case 16:
            print("weekdayTF, Afternoon")
//            append12Topics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreTopic, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
//                             thursdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics,  bathroomPMTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: thursdayNow14to16Topics)


        case 17...18:
            print("weekdayTF, Evening 5PM")
//            append12Topics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
//                             thursdayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commutePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolLateTopics(),
            topicsNow: thursdayNow17to18Topics)


        case 19...20:
            print("weekdayTF, Evening")
//            append12Topics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
//                             thursdayNow19to20Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, homePMTopics, groceryStoreTopics, shoppingClothesTopics,
            topicsNow: thursdayNow19to20Topics)

        case 21:
                    print("weekdayTF, Late evening")
                    // call function to display 9 time-based topics
        //            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
        //                             dateTopic, safetyTopic, gymTopic, homePMTopic,
        //                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
        //                             thursdayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics, barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: thursdayNow21to24Topics)

        case 22..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
//                             dateTopic, safetyTopic, gymTopic, homePMTopic,
//                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
//                             thursdayNow21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: thursdayNow21to24Topics)

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
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
//                             fridayNow0to4Topic)


            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: fridayNow0to4Topics)

        case 5...8:
            print("weekday Fri, Early Morning")
//            append12Topics(AMRoutineTopic, gymTopic, yogaTopic, runningTopic,
//                             getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic,
//                             cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
//                             fridayNow5to8Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: fridayNow5to8Topics)

        case 9:
            print("weekday Fri, Late Morning")
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
//                             getReadyAMTopic, breakfastTopic, bathroomTopic5, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic,
//                             fridayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteAMTopics, workSchoolAMTopics(),
            topicsNow: fridayNow9to11Topics)


        case 10:
            print("weekday Fri, Late Morning")
//            append12Topics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic,
//                             bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic,
//                             networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
//                             fridayNow9to11Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: fridayNow9to11Topics)


        case 11:
            print("weekday Fri, Midday")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic,
//                             gymTopic, runningTopic, workAMTopic, bathroomTopic,
//                             breakTopic, networkingTopic, travelTopic, schoolAMTopic,
//                             fridayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolAMTopics(),
            topicsNow: fridayNow11to13Topics)


        case 12...13:
            print("weekday Fri, Midday")
//            append12Topics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic,
//                             gymTopic, runningTopic, workPMTopic, bathroomTopic,
//                             networkingTopic, breakTopic, travelTopic, schoolPMTopic,
//                             fridayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, workSchoolPMTopics(),
            topicsNow: fridayNow11to13Topics)

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
//            append12Topics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic,
//                             breakPMTopic, commuteFridayPMTopic, groceryStoreTopic, shoppingClothesTopic,
//                             gymTopic, runningTopic, travelTopic, schoolPMTopic,
//                             fridayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, commuteFridayPMTopics, travelTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: fridayNow14to16Topics)


        case 16:

            ////FRIDAY ONLY COMMUTE **

            print("weekday Fri, Afternoon")
//            append12Topics(afternoonSnackTopic, cafePMTopic, workPMTopic, breakPMTopic, commuteFridayPMTopic, gymTopic, runningTopic, happyHourTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
//                             fridayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, commuteFridayPMTopics, travelTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, workSchoolPMTopics(),
            topicsNow: fridayNow14to16Topics)


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
//            append12Topics(commuteFridayPMTopic, gymTopic, runningTopic, homePMTopic, goingOutTopic, happyHourTopic, networkingTopic, dinnerTopic, restaurantTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
//                             fridayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commuteFridayPMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
            topicsNow: fridayNow17to18Topics)

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
//            append12Topics(gymTopic, runningTopic, homePMTopic, goingOutTopic, dinnerTopic, restaurantTopic, barTopic, networkingTopic, dateTopic, safetyTopic, groceryStoreTopic, travelTopic,
//                             fridayNow19to20Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, groceryStoreTopics, shoppingClothesTopics, travelTopics,
            topicsNow: fridayNow19to20Topics)

        case 21:
                    print("weekdayTF, Late evening 9-12PM")
                    // call function to display 9 time-based topics
        //            append12Topics(homePMTopic, goingOutTopic, dinnerAfter9PMTopic, restaurantTopic,
        //                             barTopic, networkingTopic, dateTopic, safetyTopic,
        //                             gymTopic, lateNightSnackTopic, bedtimeFridayTopic, cantSleepTopic,
        //                fridayNow21to24Topic)

           appendNineTopics(
           exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics, barTopics, networkingTopics, dateTopics, safetyTopics,
           groceryStoreTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: fridayNow21to24Topics)

        case 22..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, goingOutTopic, dinnerAfter9PMTopic, restaurantTopic,
//                             barTopic, networkingTopic, dateTopic, safetyTopic,
//                             gymTopic, lateNightSnackTopic, bedtimeFridayTopic, cantSleepTopic,
//                fridayNow21to24Topic)

           appendNineTopics(
           exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
           barTopics, networkingTopics, dateTopics, safetyTopics,
           groceryStoreTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: fridayNow21to24Topics)

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
//            append12Topics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
//                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeFridayTopic, cantSleepTopic, travelTopic,
//                             saturday0to4Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, restaurantTopics, barTopics, lateNightSnackTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: saturday0to4Topics)

        case 5...8:
            print("Weekend, Early Morning")
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, bathroomTopic, getReadyAMTopic, breakfastTopic, cafeTopic, networkingTopic, groceryStoreTopic, travelTopic,
//                             saturdayNow5to8Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics,
            cafeTopics, restaurantTopics, networkingTopics, bathroomAMTopics,
            homeAMTopics,  groceryStoreTopics, commuteWeekendAMTopics, travelTopics,
            topicsNow: saturdayNow5to8Topics)

        case 9:
            print("Weekend, Early Morning")
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, bathroomTopic, getReadyAMTopic, breakfastTopic, cafeTopic, networkingTopic, groceryStoreTopic, travelTopic,
//                             saturdayNow9to10Topic)

            appendNineTopics(
            exerciseTopics(), AMRoutineTopics, getReadyAMTopics, breakfastTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, commuteWeekendAMTopics, travelTopics,
            topicsNow: saturdayNow9to10Topics)

        case 10:
            print("Weekend, Late Morning")
//            append12Topics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, getReadyAMTopic, brunchTopic, cafeTopic,
//                networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
//                saturdayNow9to10Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, travelTopics,
            topicsNow: saturdayNow9to10Topics)

        case 11:
            print("Weekend, Midday")
//            append12Topics(homePMTopic, gymTopic, runningTopic, cafePMTopic,
//                             brunchTopic, lunchTopic, restaurantTopic, barTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
//                             saturdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), brunchTopics, morningSnackTopics, cafeTopics,
            restaurantTopics, networkingTopics, bathroomAMTopics, homeAMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, travelTopics,
            topicsNow: saturdayNow11to13Topics)

        case 12...13:
            print("Weekend, Midday")
//            append12Topics(homePMTopic, gymTopic, runningTopic, cafePMTopic,
//                             brunchTopic, lunchTopic, restaurantTopic, barTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
//                             saturdayNow11to13Topic)

            appendNineTopics(
            exerciseTopics(), lunchTopics, afternoonSnackTopics, cafePMTopics,
            restaurantTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakTopics, travelTopics,
            topicsNow: saturdayNow11to13Topics)

        case 14...15:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, gymTopic, runningTopic, yogaTopic, afternoonSnackTopic, cafePMTopic, barTopic, networkingTopic, dateTopic, shoppingClothesTopic, groceryStoreTopic, travelTopic,                            saturdayNow14to16Topic)

            appendNineTopics(
            exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
            happyHourTopics, networkingTopics, bathroomPMTopics, homePMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
            topicsNow: saturdayNow14to16Topics)


        case 16:
                   print("Weekend, Afternoon")
                   // call function to display 9 time-based topics
//                   append12Topics(homePMTopic, gymTopic, runningTopic, yogaTopic, afternoonSnackTopic, cafePMTopic, barTopic, networkingTopic, dateTopic, shoppingClothesTopic, groceryStoreTopic, travelTopic,                            saturdayNow14to16Topic)


           appendNineTopics(
           exerciseTopics(), afternoonSnackTopics, cafePMTopics, restaurantTopics,
           happyHourTopics, networkingTopics,  bathroomPMTopics, commuteWeekendPMTopics,
           groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
           topicsNow: saturdayNow14to16Topics)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
//                             saturdayNow17to18Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, afternoonSnackTopics, goingOutTopics,
            restaurantTopics, happyHourTopics, networkingTopics, commuteWeekendPMTopics,
            groceryStoreTopics, shoppingClothesTopics, breakPMTopics, travelTopics,
            topicsNow: saturdayNow17to18Topics)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
//            append12Topics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, safetyTopic, groceryStoreTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
//                             saturdayNow19to20Topic)

            appendNineTopics(
            exerciseTopics(), dinnerTopics, lateNightSnackTopics, goingOutTopics,
            restaurantTopics, barTopics, networkingTopics, dateTopics,
            safetyTopics, homePMTopics, groceryStoreTopics, shoppingClothesTopics,
            topicsNow: saturdayNow19to20Topics)

        case 21:
                    print("Weekend, Late evening")
                    // call function to display 9 time-based topics
        //            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
        //                             dateTopic, safetyTopic, gymTopic, homePMTopic,
        //                            lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
        //                             saturday21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, dateTopics, safetyTopics,
            groceryStoreTopics, homePMTopics, bathroomPMTopics, bedtimeTopics,
            topicsNow: saturday21to24Topics)

        case 22..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
//            append12Topics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
//                             dateTopic, safetyTopic, gymTopic, homePMTopic,
//                            lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
//                             saturday21to24Topic)

            appendNineTopics(
            exerciseTopics(), dinnerAfter9PMTopics, lateNightSnackTopics, restaurantTopics,
            barTopics, networkingTopics, safetyTopics, groceryStoreTopics,
            homePMTopics, bathroomPMTopics, bedtimeTopics, travelTopics,
            topicsNow: saturday21to24Topics)

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

            //row1
            self.topic0Button.imageView?.image = UIImage(named: self.topicsArrays[0].icon)
            self.topic1Button.imageView?.image = UIImage(named: self.topicsArrays[1].icon)
            self.topic2Button.imageView?.image = UIImage(named: self.topicsArrays[2].icon)
            self.topic3Button.imageView?.image = UIImage(named: self.topicsArrays[3].icon)
            //row2
            self.topic4Button.imageView?.image = UIImage(named: self.topicsArrays[4].icon)
            self.topic5Button.imageView?.image = UIImage(named: self.topicsArrays[5].icon)
            self.topic6Button.imageView?.image = UIImage(named: self.topicsArrays[6].icon)
            self.topic7Button.imageView?.image = UIImage(named: self.topicsArrays[7].icon)
            //row3
            self.topic8Button.imageView?.image = UIImage(named: self.topicsArrays[8].icon)
            self.topic9Button.imageView?.image = UIImage(named: self.topicsArrays[9].icon)
            self.topic10Button.imageView?.image = UIImage(named: self.topicsArrays[10].icon)
            self.topic11Button.imageView?.image = UIImage(named: self.topicsArrays[11].icon)

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

        resetUIofAllButtonsToOriginalIcons()

        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped, Return to NOW Tips")

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

            print("B - Newly Tapped")

            // select button NOT previously tapped
            // gray out selected button
            // display selected topic tips
            twoDimensionalArray = []

            twoDimensionalArray = topicsArrays[indexNumber].topics

//            appendTipsArrayBasedOnTopicSelected(indexNumber)

            // Selected
            performUIUpdatesOnMain {

                button.imageView?.image = UIImage(named: Constants.Icon.cancel)
//                button.imageEdgeInsets = UIEdgeInsets(top: 0.5, left: 0.5 , bottom: 0.5, right: 0.5)


                // button title


//                button.setTitleColor(.white, for: .normal)
//                button.backgroundColor = NowConstants.YvonneColor.defaultBlue

                //Display selected Topic Title
//                let originalTitleText = self.topics[indexNumber].title
//                let replacedText = originalTitleText.replacingOccurrences(of: "\n", with: "").uppercased()

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
        goToSourceURL(url: Constants.Webiste.rizeFormURL)

    }






} // End of Home2ViewController

// MARK: - Table View Methods

extension NowViewController: UITableViewDataSource, UITableViewDelegate {


    //SECTION HEADER
    //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-section-header-to-a-table-view

    func titleColor(number: Int) -> UIColor {
        switch number {
        case 0:
            return UIColor.systemBlue
        case 1:
            return UIColor.flatBlue()
        case 2:
            return UIColor.blue
        default:
            return UIColor.systemBlue
        }
    }



    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        //http://swiftquickstart.blogspot.com/2016/10/custom-tableview-section-headers.html

        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 20))
        headerView.backgroundColor = UIColor.init(hexString: "FFF4E9")


        let label = UILabel()
        //Display section title text
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

    func goToBuyURL(sponsorURL: String) {

        let sourceURL = URL(string: sponsorURL)!
        let safariVC = SFSafariViewController(url: sourceURL)
        safariVC.dismissButtonStyle = .close
        safariVC.preferredBarTintColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        safariVC.preferredControlTintColor = UIColor.init(hexString: "2283F6", withAlpha: 1)
        present(safariVC, animated: true, completion: nil)
    }

    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sourceURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sourceURL)
        safariVC.dismissButtonStyle = .close
        safariVC.preferredBarTintColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        safariVC.preferredControlTintColor = UIColor.init(hexString: "2283F6", withAlpha: 1)
        present(safariVC, animated: true, completion: nil)
    }

    func goToActivityView(header: String, title: String, body: String) {
        let rizeLogo = UIImage(named: "AppIcon")

        let activityVC = UIActivityViewController(activityItems: ["Tip: \(header)\n\n","\(title)\n\n", "\(body)\n\n","For more tips, download the Rize App on Apple's App Store", rizeLogo], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view

        self.present(activityVC, animated: true, completion: nil)
    }

}
