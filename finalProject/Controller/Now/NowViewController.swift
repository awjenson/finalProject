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

import UIKit
import SafariServices // to display webview
import ChameleonFramework

class NowViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var natureImageView: UIImageView!
    @IBOutlet weak var natureView: UIView!

    @IBOutlet weak var clearView: UIView!

    @IBOutlet weak var buttonView: UIView!

    @IBOutlet weak var topicLabel: UILabel!

    @IBOutlet weak var nowTableView: UITableView!
    @IBOutlet weak var topicView: UIView!


    @IBOutlet weak var quoteView: UIView!
    @IBOutlet weak var quoteLabel: ShadowLabel!
    @IBOutlet weak var authorLabel: ShadowLabel!


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

    var timer: Timer?


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

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewWillAppear(_ animated: Bool) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)

    }



    var selectedTopicTitle = ""


    // MARK: - Methods

    func setupUI() {

        let selectedGradientColor = UIColor(gradientStyle:UIGradientStyle.leftToRight, withFrame: view.frame, andColors:[UIColor.flatSkyBlue(),UIColor.flatBlue()])
        self.view.backgroundColor = selectedGradientColor
        self.footerView.backgroundColor = selectedGradientColor



        // place 8 buttons in desired order (excludes Now tips)
        topicButtons = [topic0Button, topic1Button, topic2Button,
                        topic3Button, topic4Button, topic5Button, topic6Button, topic7Button]



        dayOfWeekAndHour()

        // set footer
//        footerView.frame.size.height = self.view.frame.size.width

        nowTableViewSetup()

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
        formatter.dateFormat = "h a" // "a" prints "pm" or "am"
        let hourString = formatter.string(from: Date()) // "12 AM"
        topicLabel.text = "\(hourString) TIPS"
    }



    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {

        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)
        let week = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)


        //Display hour for topic title
//        displayHourInTopicLabel()


        if week % 2 == 0 {
            print("Week: \(week) is even")


        } else {
            print("Week: \(week) is odd")

        }

        func oddWeek() {

        }

        func evenWeek() {

        }

        switch weekOfMonth {
        case 1,3,5:
            oddWeek()

        default:
            evenWeek()
        }




        switch dayOfWeek {
        case 1: // Sunday
            print("today is Sunday")
            sunday(hour)
        case 2: // Monday
            print("today is a Monday")
            monday(hour)
        case 3: // Tuesday
            print("today is a Tuesday")
            tuesday(hour)
        case 4: // Wednesday
            print("today is a Wednesday")
            wednesday(hour)
        case 5: // Thursday
            print("today is Thursday")
            thursday(hour)
        case 6: // Friday
            print("today is Friday")
            friday(hour)
        case 7: // Saturday
            print("today is Saturday")
            saturday(hour)
        default:
            print("ERROR: error with dayAndHour")
        }
    }


    func sunday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, bedtimeTopic1, cantSleepTopic1, safetyTopic1, bathroomPMTopic0, weekendNow0to4Topic0)

            setNatureImage(to: "night1")
            updateQuote(quote: QuoteData.q1)

        case 5...9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(breakfastTopic0, homeAMTopic0, bathroomTopic0, AMRoutineTopic0, meditationTopic0, gymTopic0, runningTopic0, yogaTopic0, weekendNow5to8Topic1)

            setNatureImage(to: "morning1")
            updateQuote(quote: QuoteData.q1)

        case 10:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic1, yogaTopic0, runningTopic0, cafeTopic0, groceryStoreTopic0, shoppingClothesTopic0, weekendNow9to11Topic1)

            setNatureImage(to: "midmorning1")
            updateQuote(quote: QuoteData.q1)

        case 11...13:
            print("Weekend, Midday")
            appendNineTopics(homeAMTopic0, brunchTopic0, lunchTopic2, cafeTopic0, groceryStoreTopicWEND, runningTopic0, gymTopic2, shoppingClothesTopic1, sundayNow11to14Topic1)

            setNatureImage(to: "day1")
            updateQuote(quote: QuoteData.q2)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(cafePMTopic0, runningTopic0, yogaTopic0, gymTopic3, shoppingClothesTopic0, groceryStoreTopic0, homeAMTopic0, afternoonSnackTopic0, weekendNow14to16Topic1)

            setNatureImage(to: "afternoon1")
            updateQuote(quote: QuoteData.q2)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic4, barTopic1, dateTopic0, sundayNow17to20Topic0)

            setNatureImage(to: "sunset1")
            updateQuote(quote: QuoteData.q3)

        case 19...20:
            print("Weekend, Mid Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, shoppingClothesTopic1, gymTopic5, barTopic1, dateTopic0, sundayNow17to20Topic0)

            setNatureImage(to: "sunset1")
            updateQuote(quote: QuoteData.q3)
            

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(barTopic2, dateTopic1, homePMTopic0, bathroomPMTopic0, lateNightSnackTopic0, bedtimeTopic1, cantSleepTopic1, safetyTopic1, weekendNow21to24Topic1)

            setNatureImage(to: "night1")
            updateQuote(quote: QuoteData.q3)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    // Monday (2)

    // More people Google 'diet' and go to the gym at the start of the week, month year
    // Same with starting a new job or new semester, they give us a fresh start
    func monday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(bedtimeTopic0, lateNightSnackTopic0, homePMTopic1, bathroomPMTopic0,  cantSleepTopic1, meditationTopic0, barTopic0, safetyTopic2, weekdayNow0to4Topic0)

            setNatureImage(to: "night2")
            updateQuote(quote: QuoteData.q4)

        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic0, meditationTopic0, gymTopic6, runningTopic0, journalTopic1, breakfastTopic1, cafeTopic1, commuteAMTopic0, weekdayNow5to8Topic0) //*

            setNatureImage(to: "morning2")
            updateQuote(quote: QuoteData.q4)

        case 8...9:
            print("weekdayMTW, mid Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic0, gymTopic7, runningTopic0, breakfastTopic1, cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1, weekdayNow5to8Topic0)

            setNatureImage(to: "morning2")
            updateQuote(quote: QuoteData.q4)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic1, commuteAMTopic0, workAMTopic0, schoolAMTopic1, morningSnackTopic0, breakTopic0, runningTopic0, gymTopic8, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")
            updateQuote(quote: QuoteData.q4)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic1, workAMTopic0, schoolAMTopic1, morningSnackTopic0, breakTopic0, lunchTopic0, gymTopic0, runningTopic0, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")
            updateQuote(quote: QuoteData.q4)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workAMTopic1, lunchTopic0, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic1, meditationTopic0, schoolPMTopic1, weekdayNow11to14Topic0)

            setNatureImage(to: "day2")
            updateQuote(quote: QuoteData.q5)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic1, breakTopic0, meditationTopic0, cafePMTopic0, commutePMTopic0, gymTopic2, schoolPMTopic1, weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")
            updateQuote(quote: QuoteData.q5)

        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic0, afternoonSnackTopic0, breakTopic0, commutePMTopic0, groceryStoreTopicWDAY, happyHourTopic0, gymTopic3, schoolPMTopic1, weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")
            updateQuote(quote: QuoteData.q5)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            setNatureImage(to: "sunset2")
            updateQuote(quote: QuoteData.q6)

            appendNineTopics(workLateTopic0, commutePMTopic0, gymTopic4, groceryStoreTopic2, dinnerTopic1, restaurantTopic1, happyHourTopic0, homePMTopic1, weekdayNow17to20Topic0)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, groceryStoreTopic2, restaurantTopic1, dinnerTopic0, dateTopic0, barTopic3, networkingTopic1, homePMTopic1, weekdayNow17to20Topic0)
            updateQuote(quote: QuoteData.q6)

            setNatureImage(to: "sunset2")
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(barTopic0, dinnerAfter9PMTopic0, homePMTopic1, lateNightSnackTopic0, bathroomPMTopic1, bedtimeTopic0, cantSleepTopic2, safetyTopic2, weekdayNow21to24Topic0)

            setNatureImage(to: "night2")
            updateQuote(quote: QuoteData.q6)
            
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(bedtimeTopic1, lateNightSnackTopic0, homePMTopic2, cantSleepTopic1, journalTopic2, meditationTopic0, barTopic0, safetyTopic3, weekdayNow0to4Topic1)

            setNatureImage(to: "night3")
            updateQuote(quote: QuoteData.q7)
        case 5...7:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, gymTopic6, runningTopic1, meditationTopic0, journalTopic2, cafeTopic2, commuteTuesdayAMTopic0, weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")
            updateQuote(quote: QuoteData.q7)

        case 8...9:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, gymTopic7, runningTopic1, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic2, schoolAMTopic2, weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")
            updateQuote(quote: QuoteData.q7)

        case 10:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic2, commuteTuesdayAMTopic0, gymTopic8, runningTopic1, morningSnackTopic0, breakTopic1, workAMTopic2, schoolAMTopic2, weekdayNow9to11Topic1)

            setNatureImage(to: "midmorning3")
            updateQuote(quote: QuoteData.q7)

        case 11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(cafeTopic2, workAMTopic2, morningSnackTopic0, breakTopic1, lunchTopic1, meditationTopic0, gymTopic0, schoolAMTopic2, weekdayNow9to11Topic1)

            setNatureImage(to: "day3")
            updateQuote(quote: QuoteData.q8)
        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workAMTopic3, lunchTopic1, afternoonSnackTopic1, breakTopic1, cafePMTopic0, gymTopic1, meditationTopic0, schoolAMTopic2, tuesdayNow11to14Topic0) // Tues specific tips

            setNatureImage(to: "day3")
            updateQuote(quote: QuoteData.q8)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic1, afternoonSnackTopic0, breakPMTopic0, meditationTopic0, cafePMTopic1, commutePMTopic1, gymTopic2, schoolPMTopic2, weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")
            updateQuote(quote: QuoteData.q8)
        case 16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(workPMTopic1, afternoonSnackTopic1, breakPMTopic0, commutePMTopic1, groceryStoreTopic3, happyHourTopic0, gymTopic3, schoolAMTopic1, weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")
            updateQuote(quote: QuoteData.q8)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic1, commutePMTopic1, happyHourTopic0, gymTopic4, groceryStoreTopic4, dinnerTopic1, networkingTopic2, homePMTopic2, weekdayNow17to20Topic1)

            setNatureImage(to: "sunset3")
            updateQuote(quote: QuoteData.q9)

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendNineTopics(gymTopic5, groceryStoreTopic4, restaurantTopic2, dinnerTopic0, dateTopic2, barTopic1, networkingTopic2, homePMTopic2, weekdayNow17to20Topic1)

            setNatureImage(to: "sunset3")
            updateQuote(quote: QuoteData.q9)

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(barTopic2, dinnerAfter9PMTopic1, homePMTopic2, lateNightSnackTopic0, bathroomPMTopic0, bedtimeTopic1, safetyTopic3, cantSleepTopic1, weekdayNow21to24Topic1)

            setNatureImage(to: "night3")
            updateQuote(quote: QuoteData.q9)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            appendNineTopics(bedtimeTopic2, lateNightSnackTopic0, homePMTopic3, cantSleepTopic1, journalTopic3, meditationTopic0, barTopic1, safetyTopic4, weekdayNow0to4Topic2)

            setNatureImage(to: "night4")
            updateQuote(quote: QuoteData.q10)
        case 5...7:
            print("weekdayMTW, Early Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic0, gymTopic6, runningTopic0, meditationTopic0, journalTopic3, cafeTopic3, commuteAMTopic2, weekdayNow5to8Topic2) //*

            setNatureImage(to: "morning4")
            updateQuote(quote: QuoteData.q10)

        case 8...9:
            print("weekdayMTW, Mid Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic0, meditationTopic0, gymTopic7, cafeTopic3, commuteAMTopic2, workAMTopic4, schoolAMTopic3, weekdayNow5to8Topic2)

            setNatureImage(to: "morning4")
            updateQuote(quote: QuoteData.q10)

        case 10:
            print("weekdayMTW, Late Morning")
            appendNineTopics(cafeTopic3, commuteAMTopic2, gymTopic8, runningTopic1, breakTopic0, morningSnackTopic0, workAMTopic4, schoolAMTopic3, weekdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")
            updateQuote(quote: QuoteData.q10)

        case 11:
            appendNineTopics(cafeTopic3, workAMTopic2, morningSnackTopic0, breakTopic0, lunchTopic1, meditationTopic0, gymTopic0, schoolAMTopic2, weekdayNow9to11Topic1)

            setNatureImage(to: "day4")
            updateQuote(quote: QuoteData.q11)

        case 12...13:
            print("weekdayMTW, Midday")
            appendNineTopics(workAMTopic5, lunchTopic2, afternoonSnackTopic0, breakTopic0, cafePMTopic1, gymTopic1, meditationTopic0, schoolAMTopic3, weekdayNow11to14Topic1)

            setNatureImage(to: "day4")
            updateQuote(quote: QuoteData.q11)

        case 14...15:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic4, afternoonSnackTopic1, breakTopic0, cafePMTopic0, meditationTopic0, commutePMTopic2, gymTopic2, schoolPMTopic3, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")
            updateQuote(quote: QuoteData.q11)

        case 16:
            print("weekdayMTW, Afternoon")
            appendNineTopics(workPMTopic5, afternoonSnackTopic0, breakTopic0, commutePMTopic2, happyHourTopic0, groceryStoreTopicWDAY, gymTopic3, schoolPMTopic3, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")
            updateQuote(quote: QuoteData.q11)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendNineTopics(workLateTopic0, commutePMTopic2, happyHourTopic0, gymTopic4, groceryStoreTopic5, dinnerTopic0, networkingTopic3, homePMTopic3, weekdayNow17to20Topic2)

            setNatureImage(to: "sunset4")
            updateQuote(quote: QuoteData.q12)

        case 19...20:
            print("Weekday, Evening")
            appendNineTopics(gymTopic5, groceryStoreTopic5, restaurantTopic0, dinnerTopic1, dateTopic1, barTopic3, networkingTopic3, homePMTopic3, weekdayNow17to20Topic2)

            setNatureImage(to: "sunset4")
            updateQuote(quote: QuoteData.q12)

        case 21..<24:
            print("Weekday, Late evening")
            appendNineTopics(barTopic0, dateTopic0, dinnerAfter9PMTopic2, homePMTopic3, lateNightSnackTopic0, bathroomPMTopic1, bedtimeTopic2, safetyTopic4, weekdayNow21to24Topic2)

            setNatureImage(to: "night4")
            updateQuote(quote: QuoteData.q12)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic4, lateNightSnackTopic0, bedtimeTopic3, cantSleepTopic2, bathroomPMTopic0, meditationTopic0, barTopic1, safetyTopic5, weekdayNow0to4Topic0)

            setNatureImage(to: "night5")
            updateQuote(quote: QuoteData.q13)

        case 5...7:
            print("weekdayTF, Early Morning")
            appendNineTopics(getReadyAMTopic0, breakfastTopic1, gymTopic6, runningTopic0, meditationTopic0, journalTopic0, cafeTopic0, commuteAMTopic3, weekdayNow5to8Topic3)

            setNatureImage(to: "morning5")
            updateQuote(quote: QuoteData.q13)

        case 8...9:
            appendNineTopics(getReadyAMTopic0, breakfastTopic0, meditationTopic0, gymTopic7, cafeTopic0, commuteAMTopic3, workAMTopic3, schoolAMTopic3, weekdayNow5to8Topic2)

            setNatureImage(to: "morning5")
            updateQuote(quote: QuoteData.q13)

        case 10:
            print("weekdayTF, Late Morning")
            appendNineTopics(cafeTopic0, commuteAMTopic0, gymTopic8, runningTopic1, breakTopic1, morningSnackTopic0, workAMTopic3, schoolAMTopic1, weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")
            updateQuote(quote: QuoteData.q13)

        case 11:
            print("weekdayTF, Late Morning")
            appendNineTopics(cafeTopic0, workAMTopic3, morningSnackTopic0, breakTopic1, meditationTopic0, gymTopic0, lunchTopic0, schoolAMTopic1, weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")
            updateQuote(quote: QuoteData.q13)

        case 12...13:
            print("weekdayTF, Midday")
            appendNineTopics(workAMTopic1, lunchTopic1, afternoonSnackTopic1, breakTopic0, cafePMTopic1, gymTopic1, meditationTopic0, schoolPMTopic1, weekdayNow11to14Topic2)

            setNatureImage(to: "day5")
            updateQuote(quote: QuoteData.q14)

        case 14...15: // 2PM-4PM
            print("weekdayTF, Afternoon")

            appendNineTopics(workPMTopic3, afternoonSnackTopic0, breakPMTopic0, meditationTopic0, cafePMTopic1, gymTopic2, commutePMTopic3, schoolPMTopic1, weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 16:
            print("weekdayTF, Afternoon")
            appendNineTopics(workPMTopic3, afternoonSnackTopic0, breakPMTopic0, commutePMTopic3, happyHourTopic0, gymTopic3, cafePMTopic1, schoolPMTopic3, weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 17...18:
            print("weekdayTF, Evening 5PM")
            appendNineTopics(workLateTopic1, commutePMTopic3, happyHourTopic0, groceryStoreTopic6, gymTopic4, dinnerTopic2, networkingTopic2, homePMTopic4, weekdayNow17to20Topic3)

            setNatureImage(to: "afternoon5")
            updateQuote(quote: QuoteData.q15)

        case 19...20:
            print("weekdayTF, Evening")
            appendNineTopics(gymTopic5, groceryStoreTopic6, dinnerTopic1, restaurantTopic1, dateTopic1, barTopic3, networkingTopic1, homePMTopic4, weekdayNow17to20Topic3)

            updateQuote(quote: QuoteData.q16)
            setNatureImage(to: "sunset5")

        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic0, barTopic0, dateTopic2, safetyTopic5, homePMTopic4, bedtimeTopic3, lateNightSnackTopic0, cantSleepTopic2,  weekdayNow21to24Topic3)

            setNatureImage(to: "night5")
            updateQuote(quote: QuoteData.q16)

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(bedtimeTopic4, lateNightSnackTopic0, homePMTopic5, cantSleepTopic2, meditationTopic0, bathroomPMTopic1, barTopic1, safetyTopic6, weekdayNow0to4Topic1)

            setNatureImage(to: "night6")
            updateQuote(quote: QuoteData.q17)

        case 5...7:
            print("weekday Fri, Early Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, homeAMTopic0, gymTopic6, meditationTopic0, journalTopic1, cafeTopic1, commuteAMTopic4, weekdayNow5to8Topic4)

            setNatureImage(to: "morning6")
            updateQuote(quote: QuoteData.q17)

        case 8...9:
            print("weekday Fri, Late Morning")
            appendNineTopics(getReadyAMTopic1, breakfastTopic2, meditationTopic0, commuteAMTopic4, workAMTopic0, cafeTopic1, gymTopic7, schoolAMTopic2, weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")
            updateQuote(quote: QuoteData.q17)

        case 10:
            print("weekday Fri, Late Morning")
            appendNineTopics(commuteAMTopic4, cafeTopic1, gymTopic8, runningTopic0, workAMTopic2, breakTopic1, morningSnackTopic0, schoolAMTopic2, weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")
            updateQuote(quote: QuoteData.q17)

        case 11:
            print("weekday Fri, Midday")
            appendNineTopics(workAMTopic3, morningSnackTopic0, breakTopic1, lunchTopic1, meditationTopic0, gymTopic0, cafeTopic1, schoolPMTopic2, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")
            updateQuote(quote: QuoteData.q18)

        case 12...13:
            print("weekday Fri, Midday")
            appendNineTopics(workAMTopic3, lunchTopic1, afternoonSnackTopic0, breakTopic1, meditationTopic0, cafePMTopic1, gymTopic1, schoolPMTopic2, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")
            updateQuote(quote: QuoteData.q18)

        case 14...15:
            print("weekday Fri, Afternoon")
            appendNineTopics(workPMTopic2, afternoonSnackTopic1, breakTopic1, meditationTopic0, cafePMTopic0, gymTopic2, commuteFridayPMTopic0, schoolPMTopic2, weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q18)

        case 16:
            print("weekday Fri, Afternoon")
            appendNineTopics(workPMTopic2, afternoonSnackTopic1, breakTopic1, commuteFridayPMTopic0, happyHourTopic0, gymTopic3, cafePMTopic0, schoolPMTopic2, weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q18)

        case 17...18:
            print("weekday Fri, Evening 5-6PM")

            appendNineTopics(commuteFridayPMTopic0, happyHourTopic0, groceryStoreTopic7, gymTopic4, restaurantTopic2, dinnerTopic0, networkingTopic3, homePMTopic5, weekdayNow17to20Topic4)

            setNatureImage(to: "afternoon6")
            updateQuote(quote: QuoteData.q19)

        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendNineTopics(goingOutTopic0, gymTopic5, dinnerTopic1, restaurantTopic0, barTopic2, dateTopic1, homePMTopic0, safetyTopic6, weekdayNow17to20Topic4)

            setNatureImage(to: "sunset6")
            updateQuote(quote: QuoteData.q19)

        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic1, dateTopic2, barTopic3, safetyTopic6, homePMTopic1, lateNightSnackTopic0, bedtimeTopic4, cantSleepTopic1, weekdayNow21to24Topic4)

            setNatureImage(to: "night6")
            updateQuote(quote: QuoteData.q19)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Saturday (7)

    func saturday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(barTopic0, safetyTopic3, homeAMTopic0, bedtimeTopic2, lateNightSnackTopic0, cantSleepTopic2, meditationTopic0, bathroomPMTopic0, weekendNow0to4Topic1)

            setNatureImage(to: "night7")
            updateQuote(quote: QuoteData.q20)
        case 5...9:
            print("Weekend, Early Morning")
            appendNineTopics(breakfastTopic1, homeAMTopic0, bathroomPMTopic0, AMRoutineTopic0, meditationTopic0, gymTopic6, runningTopic1, yogaTopic0, weekendNow5to8Topic0)

            setNatureImage(to: "morning7")
            updateQuote(quote: QuoteData.q20)

        case 10:
            print("Weekend, Late Morning")
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic7, yogaTopic0, runningTopic1, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, weekendNow9to11Topic0)

            setNatureImage(to: "midmorning7")
            updateQuote(quote: QuoteData.q20)

        case 11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendNineTopics(homeAMTopic0, brunchTopic0, gymTopic8, yogaTopic0, runningTopic1, cafeTopic2, groceryStoreTopicWEND, shoppingClothesTopic1, weekendNow9to11Topic0)

            setNatureImage(to: "midmorning7")
            updateQuote(quote: QuoteData.q20)

        case 12...13:
            print("Weekend, Midday")
            appendNineTopics(homePMTopic0, brunchTopic0, lunchTopic1, cafePMTopic1, gymTopic0, runningTopic1, groceryStoreTopicWEND, shoppingClothesTopic2, saturdayNow11to14Topic0)

            setNatureImage(to: "day7")
            updateQuote(quote: QuoteData.q21)

        case 14...15:
            print("Weekend, Afternoon")
            appendNineTopics(homePMTopic1, cafePMTopic0, runningTopic1, gymTopic1, groceryStoreTopic6, shoppingClothesTopic2, afternoonSnackTopic0, barTopic1, weekendNow14to16Topic0)

            setNatureImage(to: "afternoon7")
            updateQuote(quote: QuoteData.q21)

        case 15...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic2, cafePMTopic1, runningTopic1, gymTopic2, groceryStoreTopic6, shoppingClothesTopic2, afternoonSnackTopic1, barTopic1, weekendNow14to16Topic0)

            setNatureImage(to: "afternoon7")
            updateQuote(quote: QuoteData.q21)

        case 17...18:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic3, goingOutTopic0, dinnerTopic0, restaurantTopic1, dateTopic1, barTopic2, groceryStoreTopic7, safetyTopic2, saturdayNow17to20Topic0)

            setNatureImage(to: "sunset7")
            updateQuote(quote: QuoteData.q22)

        case 19...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(homePMTopic4, goingOutTopic0, dinnerTopic0, restaurantTopic1, dateTopic1, barTopic2, groceryStoreTopic7, safetyTopic3, saturdayNow17to20Topic0)

            setNatureImage(to: "sunset7")
            updateQuote(quote: QuoteData.q22)

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(dinnerAfter9PMTopic1, dateTopic2, barTopic3, safetyTopic4, homePMTopic5, lateNightSnackTopic0, bedtimeTopic3, bathroomPMTopic1, weekendNow21to24Topic0)

            setNatureImage(to: "night7")
            updateQuote(quote: QuoteData.q22)

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
            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
            button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        }
    }

    func appendNineTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic,_ topic4: Topic,_ topic5: Topic,_ topic6: Topic,_ topic7: Topic, _ topic8Now: Topic) {

        topics = [topic0, topic1, topic2, topic3, topic4, topic5, topic6, topic7, topic8Now]

        // set UIButtons
        self.topic0Button.setTitle(topic0.title, for: .normal)
        self.topic1Button.setTitle(topic1.title, for: .normal)
        self.topic2Button.setTitle(topic2.title, for: .normal)
        self.topic3Button.setTitle(topic3.title, for: .normal)
        self.topic4Button.setTitle(topic4.title, for: .normal)
        self.topic5Button.setTitle(topic5.title, for: .normal)
        self.topic6Button.setTitle(topic6.title, for: .normal)
        self.topic7Button.setTitle(topic7.title, for: .normal)

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
//    func scrollToTop(){
//        DispatchQueue.main.async {
//            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
//            self.nowTableView.scrollToRow(at: indexPath, at: .top, animated: true)
//        }
//    }


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

        // select button previously tapped
        // Check if this button has been tapped just prior
        if currentIndex == indexNumber {

            appendNowTips()

            // Unselected
            performUIUpdatesOnMain {
                button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
                button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)

//                self.displayHourInTopicLabel()
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

                //re-name Topic Label Title to match selected button title
                self.topicLabel.text = "\(self.topics[indexNumber].title.uppercased()) TIPS"

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

        for item in 0...counter {
            tips.append(topics[index].tip[item])
        }
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /* In the future, you could create multiple subviews and then use a switch statement to display data for each subview
        https://www.makeschool.com/online-courses/utorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui */

        // Whatever tip is at each row
        let tip = tips[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NowTableViewCell

        // cell's bottom line UI
        cell.layoutMargins = UIEdgeInsets.zero

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        // Increase-line-spacing-in-uilabel
        // https://stackoverflow.com/questions/39158604/how-to-increase-line-spacing-in-uilabel-in-swift
        // *** Create attributedString constants
        let attributedStringTitle = NSMutableAttributedString(string: tip.title)
        let attributedStringBody = NSMutableAttributedString(string: tip.body)


        // *** Create instance of `NSMutableParagraphStyle`
        let paragraphStyleTitle = NSMutableParagraphStyle()
        let paragraphStyleBody = NSMutableParagraphStyle()

        // *** set LineSpacing property in points ***
        paragraphStyleTitle.lineSpacing = 2 // Whatever line spacing you want in points
        paragraphStyleBody.lineSpacing = 5

        // *** Apply attribute to strings ***
        attributedStringTitle.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyleTitle, range:NSMakeRange(0, attributedStringTitle.length))

        attributedStringBody.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyleBody, range:NSMakeRange(0, attributedStringBody.length))

        // *** Set Attributed String to your label ***
        cell.titleLabel.attributedText = attributedStringTitle
        cell.bodyLabel.attributedText = attributedStringBody

        // P.S. I may want to do this later (create extension)
        // https://medium.com/@nimjea/custom-label-effects-in-swift-4-69ec12ba2178




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
        let sponsorURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sponsorURL)
        present(safariVC, animated: true, completion: nil)
    }
}
