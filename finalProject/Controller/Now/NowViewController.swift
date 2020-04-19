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

    @IBOutlet weak var feedbackNowButton: UIButton!
    


    // MARK: - Properties



    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current
    var hour = 0 // set at load time
    var newHour = 0 // updates at the top of every hour

    var headers: [Header] = [] // array of headers used for QUOTES

    var currentIndex:Int = -1 //initial integer since UIButton.index start at 0

    let originalNowVCButtonColor = UIColor.init(hexString: "007AFF", withAlpha: 1)




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


    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)

    }



    var selectedTopicTitle = ""

    // MARK: - Methods

    func setupUI() {


//        self.view.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        self.view.backgroundColor = UIColor.init(hexString: "2283F6", withAlpha: 1)
//        self.view.backgroundColor = UIColor.red

        //QuoteView = Blue Color
//        self.quoteView.backgroundColor = UIColor.init(hexString: "2283F6", withAlpha: 1)



        // place 8 buttons in desired order (excludes Now tips)
        topicButtons = [topic0Button, topic1Button, topic2Button, topic3Button,
                        topic4Button, topic5Button, topic6Button, topic7Button,
                        topic8Button, topic9Button, topic10Button, topic11Button,]

        topicLabels = [topic0Label, topic1Label, topic2Label, topic3Label,
                       topic4Label, topic5Label, topic6Label, topic7Label,
                       topic8Label, topic9Label, topic10Label, topic11Label,]

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

//        switch hourOfDay {
//        case 0...4:
//            titleLabel.text = "Late Night Tips"
//        case 5...8:
//            titleLabel.text = "Morning Tips"
//        case 9...10:
//            titleLabel.text = "Mid-Morning Tips"
//        case 11...13:
//            titleLabel.text = "Day Tips"
//        case 14...17:
//            titleLabel.text = "Afternoon Tips"
//        case 18...21:
//            titleLabel.text = "Evening Tips"
//        case 22...23:
//            titleLabel.text = "Night Tips"
//        default:
//            titleLabel.text = "Tips"
//        }

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


        switch weekOfMonth {
        case 1:
            week1()

        default:
            week1()
        }

    }


    //MARK: - WEEK 1

    func sunday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                             restaurantTopic, lateNightSnackTopic, groceryStoreAMTopic, homeAMTopic,
                             bathroomPMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             sunday0to4Topic)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, homeAMTopic, bathroomTopic, cafeTopic, networkingTopic, groceryStoreAMTopic, travelTopic,
                             sundayNow5to8Topic)

        case 9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, bathroomTopic, getReadyAMTopic, breakfastTopic, cafeTopic, networkingTopic, groceryStoreAMTopic, travelTopic,
                             sundayNow9to10Topic)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics // ****
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
                             homeAMTopic, getReadyAMTopic, brunchTopic, cafeTopic,
                networkingTopic, groceryStoreAMTopic, shoppingClothesTopic, travelTopic,
                sundayNow9to10Topic)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic, gymTopic, runningTopic, cafePMTopic,
                             brunchTopic, lunchTopic, restaurantTopic, barTopic1,
                             networkingTopic, groceryStoreWENDTopic, shoppingClothesTopic, travelTopic,
                             sundayNow11to13Topic)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, gymTopic, runningTopic, yogaTopic, afternoonSnackTopic, cafePMTopic, barTopic, networkingTopic, dateTopic, shoppingClothesTopic, groceryStoreWENDTopic, travelTopic, sundayNow14to16Topic)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, groceryStoreWENDTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
                             sundayNow17to18Topic)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, safetyTopic, groceryStoreWENDTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
                             sundayNow19to20Topic)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic, lateNightSnackTopic, barTopic, dateTopic,
                             safetyTopic, networkingTopic, gymTopic, homePMTopic,
                             bathroomPMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             sunday21to24Topic)

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
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                              restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic,
                             homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             mondayNow0to4Topic)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             mondayNow5to8Topic)

            // meditate, journal,
            // work, networking

        case 8:
            print("weekdayMTW, arly Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
                             getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic,
                             cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             mondayNow5to8Topic)

        case 9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
                             getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic, mondayNow9to11Topic)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic, mondayNow9to11Topic)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(morningSnackTopic, lunchTopic, restaurantTopic, cafeTopic, gymTopic, runningTopic, yogaTopic, workAMTopic, bathroomTopic, networkingTopic, breakTopic, schoolAMTopic,
                             mondayNow11to13Topic)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
                             mondayNow11to13Topic)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             mondayNow14to16Topic)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             mondayNow14to16Topic)

        case 17...18:
            print("weekdayMTW, Early-Evening")

            appendNineTopics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
                             mondayNow17to18Topic)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
                             mondayNow19to20Topic)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
                             dateTopic, safetyTopic, gymTopic, homePMTopic,
                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
                             mondayNow21to24Topic)

            
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
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             tuesdayNow0to4Topic)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, schoolAMTopic,
                             tuesdayNow5to8Topic) //TUESDAY COMMUTE

        case 8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, schoolAMTopic,
                             tuesdayNow5to8Topic) //*

        case 9:
            print("weekdayMTW, Mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, networkingTopic, schoolAMTopic,
                             tuesdayNow9to11Topic) //*

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteTuesdayAMTopic0, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
                             tuesdayNow9to11Topic)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, yogaTopic, runningTopic, workAMTopic, bathroomTopic, breakTopic, networkingTopic, schoolPMTopic,
                             tuesdayNow11to13Topic)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
                             tuesdayNow11to13Topic) // Tues specific tips

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic0, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             tuesdayNow14to16Topic)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic0, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             tuesdayNow14to16Topic)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
                             tuesdayNow17to18Topic)


        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
                             tuesdayNow19to20Topic)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
                             dateTopic, safetyTopic, gymTopic, homePMTopic,
                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
                             tuesdayNow21to24Topic)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday1(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             wednesdayNow0to4Topic)

            setNatureImage(to: "night4")

        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             wednesdayNow5to8Topic) //*

            setNatureImage(to: "morning4")

        case 8:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
                             getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic,
                             cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             wednesdayNow5to8Topic)

            setNatureImage(to: "morning4")

        case 9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic,
                             wednesdayNow9to11Topic)

            setNatureImage(to: "midmorning4")

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
                             wednesdayNow9to11Topic)

            setNatureImage(to: "midmorning4")


        case 11:
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, yogaTopic, runningTopic, workAMTopic, bathroomTopic, breakTopic, networkingTopic, schoolPMTopic,
                             wednesdayNow11to13Topic)

            setNatureImage(to: "day4")


        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
                             wednesdayNow11to13Topic)

            setNatureImage(to: "day4")


        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             wednesdayNow14to16Topic)

            setNatureImage(to: "afternoon4")

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreTopic, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             wednesdayNow14to16Topic)

            setNatureImage(to: "afternoon4")


        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
                             wednesdayNow17to18Topic)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
                             wednesdayNow19to20Topic)

            setNatureImage(to: "sunset4")


        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
                             dateTopic, safetyTopic, gymTopic, homePMTopic,
                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
                             wednesdayNow21to24Topic)

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
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             thursdayNow0to4Topic)

            setNatureImage(to: "night5")

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, yogaTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             thursdayNow5to8Topic)

            setNatureImage(to: "morning5")


        case 8:
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic, cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             thursdayNow5to8Topic)

            setNatureImage(to: "morning5")

        case 9:
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic,
                             thursdayNow9to11Topic)

            setNatureImage(to: "midmorning5")

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic, bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
                             thursdayNow9to11Topic)

            setNatureImage(to: "midmorning5")


        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, yogaTopic, runningTopic, workAMTopic, bathroomTopic, breakTopic, networkingTopic, schoolPMTopic,
                             thursdayNow11to13Topic)

            setNatureImage(to: "midmorning5")

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic, gymTopic, runningTopic, yogaTopic, workPMTopic, bathroomTopic, networkingTopic, breakTopic, schoolPMTopic,
                             thursdayNow11to13Topic)

            setNatureImage(to: "day5")


        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic, breakPMTopic, commutePMTopic, groceryStoreWDAYTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             thursdayNow14to16Topic)

            setNatureImage(to: "afternoon5")


        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic, afternoonSnackTopic, breakPMTopic, commutePMTopic, groceryStoreTopic, shoppingClothesTopic, happyHourTopic, networkingTopic, gymTopic, runningTopic, yogaTopic, schoolPMTopic,
                             thursdayNow14to16Topic)

            setNatureImage(to: "afternoon5")


        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic, commutePMTopic, gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, happyHourTopic, networkingTopic, homePMTopic,
                             thursdayNow17to18Topic)

            setNatureImage(to: "afternoon5")


        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic, runningTopic, yogaTopic, groceryStoreTopic, shoppingClothesTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, safetyTopic, homePMTopic,
                             thursdayNow19to20Topic)

            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
                             dateTopic, safetyTopic, gymTopic, homePMTopic,
                             lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
                             thursdayNow21to24Topic)

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
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeTopic, cantSleepTopic, travelTopic,
                             fridayNow0to4Topic)

            setNatureImage(to: "night6")

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, yogaTopic, runningTopic,
                             getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic,
                             cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             fridayNow5to8Topic)

            setNatureImage(to: "morning6")


        case 8:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
                             getReadyAMTopic, breakfastTopic, bathroomTopic, homeAMTopic,
                             cafeTopic, commuteAMTopic, workAMTopic, schoolAMTopic,
                             fridayNow5to8Topic)

            setNatureImage(to: "midmorning6")

        case 9:
            print("weekday Fri, Late Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic,
                             getReadyAMTopic, breakfastTopic, bathroomTopic5, cafeTopic, commuteAMTopic, workAMTopic, networkingTopic, schoolAMTopic,
                             fridayNow9to11Topic)

            setNatureImage(to: "midmorning6")


        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(gymTopic, runningTopic, getReadyAMTopic, breakfastTopic,
                             bathroomTopic, cafeTopic, commuteAMTopic, workAMTopic,
                             networkingTopic, morningSnackTopic, breakTopic, schoolAMTopic,
                             fridayNow9to11Topic)

            setNatureImage(to: "midmorning6")


        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic,
                             gymTopic, runningTopic, workAMTopic, bathroomTopic,
                             breakTopic, networkingTopic, travelTopic, schoolAMTopic,
                             fridayNow11to13Topic)

            setNatureImage(to: "day6")


        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(lunchTopic, restaurantTopic, cafePMTopic, afternoonSnackTopic,
                             gymTopic, runningTopic, workPMTopic, bathroomTopic,
                             networkingTopic, breakTopic, travelTopic, schoolPMTopic,
                             fridayNow11to13Topic)

            setNatureImage(to: "day6")

        case 14...15:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic, cafePMTopic, workPMTopic, networkingTopic,
                             breakPMTopic, commuteFridayPMTopic, groceryStoreTopic, shoppingClothesTopic,
                             gymTopic, runningTopic, travelTopic, schoolPMTopic,
                             fridayNow14to16Topic)

            setNatureImage(to: "afternoon6")


        case 16:
            ////FRIDAY ONLY COMMUTE
            print("weekday Fri, Afternoon")
            appendNineTopics(afternoonSnackTopic, cafePMTopic, workPMTopic, breakPMTopic, commuteFridayPMTopic, gymTopic, runningTopic, happyHourTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
                             fridayNow14to16Topic)

            setNatureImage(to: "afternoon6")


        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            ////FRIDAY ONLY COMMUTE
            appendNineTopics(commuteFridayPMTopic, gymTopic, runningTopic, homePMTopic, goingOutTopic, happyHourTopic, networkingTopic, dinnerTopic, restaurantTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
                             fridayNow17to18Topic)

            setNatureImage(to: "afternoon6")

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic, runningTopic, homePMTopic, goingOutTopic, dinnerTopic, restaurantTopic, barTopic, networkingTopic, dateTopic, safetyTopic, groceryStoreTopic, travelTopic,
                             fridayNow19to20Topic)

            setNatureImage(to: "sunset6")


        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, goingOutTopic, dinnerAfter9PMTopic, restaurantTopic,
                             barTopic, networkingTopic, dateTopic, safetyTopic,
                             gymTopic, lateNightSnackTopic, bedtimeFridayTopic, cantSleepTopic,
                fridayNow21to24Topic)

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
            appendNineTopics(dinnerAfter9PMTopic, barTopic, networkingTopic, safetyTopic,
                             restaurantTopic, lateNightSnackTopic, groceryStoreTopic, bathroomPMTopic, homePMTopic, bedtimeFridayTopic, cantSleepTopic, travelTopic,
                             saturday0to4Topic)

        case 5...8:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, bathroomTopic, getReadyAMTopic, breakfastTopic, cafeTopic, networkingTopic, groceryStoreTopic, travelTopic,
                             saturdayNow5to8Topic)

        case 9:
            print("Weekend, Early Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, bathroomTopic, getReadyAMTopic, breakfastTopic, cafeTopic, networkingTopic, groceryStoreTopic, travelTopic,
                             saturdayNow9to10Topic)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(AMRoutineTopic, gymTopic, runningTopic, yogaTopic, homeAMTopic, getReadyAMTopic, brunchTopic, cafeTopic,
                networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
                saturdayNow9to10Topic)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic, gymTopic, runningTopic, cafePMTopic,
                             brunchTopic, lunchTopic, restaurantTopic, barTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, travelTopic,
                             saturdayNow11to13Topic)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, gymTopic, runningTopic, yogaTopic, afternoonSnackTopic, cafePMTopic, barTopic, networkingTopic, dateTopic, shoppingClothesTopic, groceryStoreTopic, travelTopic,
                             saturdayNow14to16Topic)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, networkingTopic, groceryStoreTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
                             saturdayNow17to18Topic)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic, dinnerTopic, restaurantTopic, barTopic, dateTopic, safetyTopic, groceryStoreTopic, shoppingClothesTopic, gymTopic, runningTopic, yogaTopic, travelTopic,
                             saturdayNow19to20Topic)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic, restaurantTopic, barTopic, networkingTopic,
                             dateTopic, safetyTopic, gymTopic, homePMTopic,
                            lateNightSnackTopic, bathroomPMTopic, bedtimeTopic, cantSleepTopic,
                             saturday21to24Topic)

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


            let unTappedButtonEdgeInsets = UIEdgeInsets(top: 14, left: 14, bottom: 14, right: 14)

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
        if let topicNumber = topicButtons.firstIndex(of: sender) {

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
                button.imageView?.image = UIImage(named: Constants.Icon.cancel)
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

        // Take selected index in topics array and subtract 1 because we start with zero
        let counter = (topics[index].tip.count - 1)

        print("counter: \(counter)")

        for item in 0...counter {
            tips.append(topics[index].tip[item])
        }
    }

    //MARK: - IB Actions

    @IBAction func sourceButtonTapped(_ sender: Any) {
        print("go to source")

    }

    @IBAction func feedbackNowButtonTapped(_ sender: Any) {
        goToSourceURL(url: Constants.Webiste.rizeFormURL)

    }






} // End of Home2ViewController

// MARK: - Table View Methods

extension NowViewController: UITableViewDataSource, UITableViewDelegate {


    //SECTION HEADER
    //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-section-header-to-a-table-view

//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let vw = UIView()
//        vw.backgroundColor = UIColor.blue
//        return "Live Longer"
//    }

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
//        headerView.backgroundColor = UIColor(hexString: "FFF1E5")
//
//        let label = UILabel()
//        label.frame = CGRect.init(x: 20, y: 30, width: headerView.frame.width-10, height: headerView.frame.height-10)
//        label.text = "Sleep Better"
//        label.font = UIFont.boldSystemFont(ofSize: 30)
//        label.textColor = .black
//
//        headerView.addSubview(label)
//
//        return headerView
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 70
//    }


    //CELL

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tips.count
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
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NowTableViewCell
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
