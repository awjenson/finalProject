//
//  NowViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

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

class NowViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var natureImageView: UIImageView!


    @IBOutlet weak var clearBufferView: UIView!


    @IBOutlet weak var greetingLabel: ShadowLabel!

    @IBOutlet weak var questionLabel: ShadowLabel!

    @IBOutlet weak var nowTableView: UITableView!
    @IBOutlet weak var topicView: UIView!

    @IBOutlet weak var quoteLabel: ShadowLabel!
    @IBOutlet weak var authorLabel: ShadowLabel!


    // topicButtion OutletCollection only used for flipping UI when buttons tapped
    @IBOutlet var topicButtons: [RoundCorneredButton]!

    // individual outlets used to maintain order with buttons and labels in UI
    @IBOutlet weak var topic0Button: RoundCorneredButton!
    @IBOutlet weak var topic1Button: RoundCorneredButton!
    @IBOutlet weak var topic2Button: RoundCorneredButton!
    @IBOutlet weak var topic3Button: RoundCorneredButton!
    @IBOutlet weak var topic4Button: RoundCorneredButton!
    @IBOutlet weak var topic5Button: RoundCorneredButton!


    // Return button
    @IBOutlet weak var returnToTopButton: RoundCorneredButton!
    @IBOutlet weak var footerView: UIView!

    let averageColor: UIColor? = .blue

    // MARK: - Properties

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    var currentIndex:Int = -1 //initial integer since UIButton.indexe start at 0

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

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)
    }


    // MARK: - Methods

    func setupUI() {

        // place buttons in desired order (excludes Now tips)
        topicButtons = [topic0Button, topic1Button, topic2Button,
                        topic3Button, topic4Button, topic5Button]

        dayOfWeekAndHour()

        // Positioning of the buttons
        natureImageView.frame.size.width = self.view.frame.width
        natureImageView.frame.size.height = natureImageView.frame.size.width
        topicView.frame.size.height = natureImageView.frame.size.height + 100 + 130 + 30

//        topicView.frame.size.height = (self.view.frame.size.height + natureImageView.frame.size.height)

        // set footer
//        footerView.frame.size.height = self.view.frame.size.height * 0.4
        sizeFooterToFit()

        nowTableViewSetup()

    }



    func sizeFooterToFit() {
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

     // MARK: - Refresh Control
    // https://medium.com/anantha-krishnan-k-g/pull-to-refresh-how-to-implement-f915743703f8

    func nowTableViewSetup() {
        // set estimated row height (needed for auto row height size)
        nowTableView.rowHeight = UITableView.automaticDimension
        nowTableView.estimatedRowHeight = 44
        nowTableView.dataSource = self
        nowTableView.delegate = self
        nowTableView.separatorStyle = .none

        self.nowTableView.addSubview(self.refreshControl)
    }

    @objc func handleRefresh(_ refreshControl: UIRefreshControl) {
        // Do some reloading of data and update the table view's data source
        // Fetch more objects from a web service, for example...

        // Simply adding an object to the data source for this example
        // Reload time based array
        print("REFRESHING!!!")
        setupUI()

        performUIUpdatesOnMain {
            self.nowTableView.reloadData()
        }
        refreshControl.endRefreshing()
    }



    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {

        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)
        let week = calendar.component(.weekOfYear, from: date)

        if week % 2 == 0 {
            print("Week: \(week) is even")
        } else {
            print("Week: \(week) is odd")
        }

        switch hour {
        case 0...4:
            greetingLabel.text = "Good Evening"
        case 5...11:
            greetingLabel.text = "Good Morning"
        case 12...17:
            greetingLabel.text = "Good Afternoon"
        case 18...24:
            greetingLabel.text = "Good Evening"



            topic0Button.backgroundColor = NowConstants.HeaderBlue.color700
            topic0Button.setTitleColor(.white, for: .normal)
            topic1Button.backgroundColor = NowConstants.HeaderBlue.color700
            topic1Button.setTitleColor(.white, for: .normal)
            topic2Button.backgroundColor = NowConstants.HeaderBlue.color700
            topic2Button.setTitleColor(.white, for: .normal)

            topic3Button.backgroundColor = NowConstants.HeaderBlue.color700
            topic3Button.setTitleColor(.white, for: .normal)
            topic4Button.backgroundColor = NowConstants.HeaderBlue.color700
            topic4Button.setTitleColor(.white, for: .normal)
            topic5Button.backgroundColor = NowConstants.HeaderBlue.color700
            topic5Button.setTitleColor(.white, for: .normal)

        default:
            greetingLabel.text = "Hello"
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
            appendSevenTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, bedtimeTopic1, journalTopic0, weekendNow0to4Topic0)

            setNatureImage(to: "night1")

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, journalTopic1, gymTopic0, runningTopic0, breakfastTopic0, homeAMTopic0, weekendNow5to8Topic1)

            setNatureImage(to: "morning1")

        case 9..<11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic1, yogaTopic0, runningTopic0, cafeTopic0, breakfastTopic0, brunchTopic0, weekendNow9to11Topic1)

            setNatureImage(to: "midmorning1")

        case 11..<14:
            print("Weekend, Midday")
            appendSevenTopics(lunchTopic2, cafeTopic1, groceryStoreTopicWEND, runningTopic0, gymTopic2, yogaTopic0, sundayNow11to14Topic1)

            setNatureImage(to: "day1")

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(cafePMTopic0, runningTopic0, yogaTopic0, gymTopic3, shoppingClothesTopic0, groceryStoreTopic0, weekendNow14to16Topic1)

            setNatureImage(to: "afternoon1")

        case 17...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(homePMTopic0, dinnerTopic0, restaurantTopic0, groceryStoreTopic1, barTopic1, dateTopic0, sundayNow17to20Topic0)

            setNatureImage(to: "sunset1")

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic2, dateTopic1, homePMTopic0, bathroomPMTopic0, lateNightSnackTopic0, bedtimeTopic1, weekendNow21to24Topic1)

            setNatureImage(to: "night1")

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
            appendSevenTopics(bedtimeTopic0, lateNightSnackTopic0, homePMTopic1, journalTopic1, meditationTopic0, mindfulnessTopic1, weekdayNow0to4Topic0)

            setNatureImage(to: "night2")

        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, gymTopic4, journalTopic0, breakfastTopic1, cafeTopic2, commuteAMTopic0, weekdayNow5to8Topic0) //*

            setNatureImage(to: "morning2")

        case 9..<11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(breakfastTopic1, cafeTopic0, commuteAMTopic0, workAMTopic0, mindfulnessTopic0, breakTopic0, weekdayNow9to11Topic0)

            setNatureImage(to: "midmorning2")

        case 11...13:
            print("weekdayMTW, Midday")
            appendSevenTopics(workAMTopic1, lunchTopic0, afternoonSnackTopic0, breakTopic0, mindfulnessTopic1, cafeTopic1, weekdayNow11to14Topic0)

            setNatureImage(to: "day2")

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, mindfulnessTopic0, afternoonSnackTopic1, breakTopic0, cafePMTopic0, happyHourTopic0, weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")

        case 16..<17:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic1, afternoonSnackTopic0, breakTopic0, commutePMTopic0, groceryStoreTopicWDAY, happyHourTopic0, weekdayNow14to16Topic0)

            setNatureImage(to: "afternoon2")

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendSevenTopics(workLateTopic0, commutePMTopic0, gymTopic0, groceryStoreTopic2, dinnerTopic1, dateTopic2, weekdayNow17to20Topic0)

            setNatureImage(to: "sunset2")

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic2, restaurantTopic1, dinnerTopic0, dateTopic0, barTopic3, homePMTopic1, weekdayNow17to20Topic0)

            setNatureImage(to: "sunset2")
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic0, dinnerAfter9PMTopic0, homePMTopic1, lateNightSnackTopic0, bathroomPMTopic1, bedtimeTopic0, weekdayNow21to24Topic0)

            setNatureImage(to: "night2")
            
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
            appendSevenTopics(bedtimeTopic1, lateNightSnackTopic0, homePMTopic2, journalTopic0, meditationTopic0, mindfulnessTopic0, weekdayNow0to4Topic1)

            setNatureImage(to: "night3")
        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, journalTopic1, gymTopic2, breakfastTopic2, cafeTopic1, commuteTuesdayAMTopic0, weekdayNow5to8Topic1) //*

            setNatureImage(to: "morning3")
        case 9..<11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(breakfastTopic2, cafeTopic2, commuteTuesdayAMTopic0, workAMTopic2, mindfulnessTopic1, breakTopic1, weekdayNow9to11Topic1)

            setNatureImage(to: "midmorning3")
        case 11...13:
            print("weekdayMTW, Midday")
            appendSevenTopics(workAMTopic3, lunchTopic1, afternoonSnackTopic1, breakTopic1, mindfulnessTopic0, cafeTopic0, tuesdayNow11to14Topic0) // Tues specific tips

            setNatureImage(to: "day3")
        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic2, mindfulnessTopic1, afternoonSnackTopic0, breakPMTopic0, cafePMTopic1, happyHourTopic0, weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")
        case 16..<17:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic3, afternoonSnackTopic1, breakPMTopic0, commutePMTopic1, groceryStoreTopic3, happyHourTopic0, weekdayNow14to16Topic1)

            setNatureImage(to: "afternoon3")

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendSevenTopics(workLateTopic1, commutePMTopic1, gymTopic3, groceryStoreTopic4, dinnerTopic1, dateTopic1, weekdayNow17to20Topic1)

            setNatureImage(to: "sunset3")

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic4, restaurantTopic1, dinnerTopic0, dateTopic2, barTopic1, homePMTopic2, weekdayNow17to20Topic1)

            setNatureImage(to: "sunset3")

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic2, dinnerAfter9PMTopic1, homePMTopic2, lateNightSnackTopic0, bathroomPMTopic0, bedtimeTopic1, weekdayNow21to24Topic1)

            setNatureImage(to: "night3")
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(bedtimeTopic2, lateNightSnackTopic0, homePMTopic3, journalTopic1, meditationTopic0, mindfulnessTopic1, weekdayNow0to4Topic2)

            setNatureImage(to: "night4")
        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, gymTopic0, journalTopic0, breakfastTopic0, cafeTopic2, commuteAMTopic2, weekdayNow5to8Topic2) //*

            setNatureImage(to: "morning4")

        case 9..<11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(breakfastTopic0, cafeTopic0, commuteAMTopic2, workAMTopic4, mindfulnessTopic1, breakTopic0, weekdayNow9to11Topic2)

            setNatureImage(to: "midmorning4")

        case 11...13:
            print("weekdayMTW, Midday")
            appendSevenTopics(workAMTopic5, lunchTopic2, afternoonSnackTopic0, breakTopic0, mindfulnessTopic0, cafeTopic1, weekdayNow11to14Topic1)

            setNatureImage(to: "day4")
        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic4, mindfulnessTopic0, afternoonSnackTopic1, breakTopic0, cafePMTopic0, happyHourTopic0, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")
        case 16..<17:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic5, afternoonSnackTopic0, breakTopic0, commutePMTopic2, groceryStoreTopicWDAY, happyHourTopic0, weekdayNow14to16Topic2)

            setNatureImage(to: "afternoon4")

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendSevenTopics(workLateTopic0, commutePMTopic2, gymTopic1, groceryStoreTopic0, dinnerTopic0, dateTopic0, weekdayNow17to20Topic2)

            setNatureImage(to: "sunset4")

        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic2, restaurantTopic1, dinnerTopic1, dateTopic1, barTopic3, homePMTopic3, weekdayNow17to20Topic2)

            setNatureImage(to: "sunset4")

        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic0, dinnerAfter9PMTopic2, homePMTopic3, lateNightSnackTopic0, bathroomPMTopic1, bedtimeTopic2, weekdayNow21to24Topic2)

            setNatureImage(to: "night4")

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
            appendSevenTopics(homePMTopic4, lateNightSnackTopic0, bedtimeTopic3,   meditationTopic0, barTopic1, dateTopic2, weekdayNow0to4Topic0)

            setNatureImage(to: "night5")
        case 5...8:
            print("weekdayTF, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(homeAMTopic0, meditationTopic0, gymTopic3, journalTopic0, breakfastTopic1, commuteAMTopic3, weekdayNow5to8Topic3) //*

            setNatureImage(to: "morning5")
        case 9..<11:
            print("weekdayTF, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteAMTopic0, workAMTopic3, lunchTopic0, cafeTopic2, breakTopic0, mindfulnessTopic1, weekdayNow9to11Topic3)

            setNatureImage(to: "midmorning5")
        case 11..<14: // 11AM to 1PM
            print("weekdayTF, Midday")
            appendSevenTopics(workAMTopic1, lunchTopic1, afternoonSnackTopic1, cafeTopic0, breakTopic0, mindfulnessTopic0, weekdayNow11to14Topic2)

            setNatureImage(to: "day5")

        case 14...16: // 2PM-4PM
            print("weekdayTF, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic1, afternoonSnackTopic0, cafePMTopic1, breakPMTopic0, happyHourTopic0, commutePMTopic3, weekdayNow14to16Topic3)

            setNatureImage(to: "afternoon5")
        case 17...18:
            print("weekdayTF, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(workLateTopic1, commutePMTopic3, gymTopic4, dinnerTopic2, barTopic2, dateTopic0, weekdayNow17to20Topic3)

            setNatureImage(to: "afternoon5")
        case 19...20:
            print("weekdayTF, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(workLateTopic0, gymTopic0, dinnerTopic1, barTopic3, restaurantTopic0, dateTopic1, weekdayNow17to20Topic3)

            setNatureImage(to: "sunset5")
        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerAfter9PMTopic0, barTopic0, dateTopic2, homePMTopic4, bedtimeTopic3, lateNightSnackTopic0, weekdayNow21to24Topic3)

            setNatureImage(to: "night5")
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
            appendSevenTopics(bedtimeTopic4, lateNightSnackTopic0, homePMTopic0, meditationTopic0, barTopic1, dateTopic0, weekdayNow0to4Topic1)

            setNatureImage(to: "night6")

        case 5...8:
            print("weekday Fri, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(homeAMTopic0, meditationTopic0, gymTopic1, journalTopic1, breakfastTopic2, commuteAMTopic4, weekdayNow5to8Topic4) //*

            setNatureImage(to: "morning6")
        case 9..<11:
            print("weekday Fri, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteAMTopic4, workAMTopic2, lunchTopic2, cafeTopic0, breakTopic1, mindfulnessTopic1, weekdayNow9to11Topic4)

            setNatureImage(to: "midmorning6")
        case 11..<14:
            print("weekday Fri, Midday")
            appendSevenTopics(workAMTopic3, lunchTopic1, afternoonSnackTopic0, cafeTopic1, breakTopic1, mindfulnessTopic0, weekdayNow11to14Topic3)

            setNatureImage(to: "day6")
        case 14...16:
            print("weekday Fri, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic2, afternoonSnackTopic1, cafePMTopic0, breakTopic1, happyHourTopic0, commuteFridayPMTopic0, weekdayNow14to16Topic4)

            setNatureImage(to: "afternoon6")

        case 17...18:
            print("weekday Fri, Evening 5-6PM")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteFridayPMTopic0, gymTopic2, happyHourTopic0, restaurantTopic1, dinnerTopic0, homePMTopic1, weekdayNow17to20Topic4)

            setNatureImage(to: "afternoon6")
        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic3, dinnerTopic1, restaurantTopic1, barTopic2, dateTopic1, homePMTopic2, weekdayNow17to20Topic4)

            setNatureImage(to: "sunset6")
        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerAfter9PMTopic1, barTopic3, dateTopic2, homePMTopic3, lateNightSnackTopic0, bedtimeTopic4, weekdayNow21to24Topic4) // Update Now to Friday

            setNatureImage(to: "night6")
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
            appendSevenTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, bedtimeTopic2, journalTopic0, weekendNow0to4Topic1)

            setNatureImage(to: "night7")

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, journalTopic1, gymTopic0, runningTopic0, breakfastTopic1, homeAMTopic0, weekendNow5to8Topic0)

            setNatureImage(to: "morning7")

        case 9..<11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic1, yogaTopic0, runningTopic0, cafeTopic0, breakfastTopic2, brunchTopic0, weekendNow9to11Topic0)

            setNatureImage(to: "midmorning7")

        case 11..<14:
            print("Weekend, Midday")
            appendSevenTopics(lunchTopic1, cafeTopic1, groceryStoreTopicWEND, runningTopic0, gymTopic2, yogaTopic0, saturdayNow11to14Topic0)

            setNatureImage(to: "day7")

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(cafeTopic2, runningTopic0, gymTopic3, groceryStoreTopic3, dateTopic0, barTopic1, weekendNow14to16Topic0)

            setNatureImage(to: "afternoon7")

        case 17...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(homePMTopic3, dinnerTopic0, restaurantTopic1, dateTopic1, barTopic2, groceryStoreTopic4, saturdayNow17to20Topic0) //TODO: Grocery store?

            setNatureImage(to: "sunset7")

        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerAfter9PMTopic1, barTopic3, dateTopic2, homePMTopic4, lateNightSnackTopic0, bedtimeTopic3, weekendNow21to24Topic0)

            setNatureImage(to: "night7")

        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    func setNatureImage(to imageTitle: String) {
        performUIUpdatesOnMain {
            self.natureImageView.image = UIImage(named: imageTitle)
        }
    }


    private func resetTopicButtonOriginalStyle(button: RoundCorneredButton) {

        performUIUpdatesOnMain {

            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = NowConstants.HeaderBlue.color700
        }
    }

    func appendSevenTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic,_ topic4: Topic,_ topic5: Topic, _ topic6Now: Topic) {

        topics = [topic0, topic1, topic2, topic3, topic4, topic5, topic6Now]

        self.topic0Button.setTitle(topic0.title, for: .normal)
        self.topic1Button.setTitle(topic1.title, for: .normal)
        self.topic2Button.setTitle(topic2.title, for: .normal)
        self.topic3Button.setTitle(topic3.title, for: .normal)
        self.topic4Button.setTitle(topic4.title, for: .normal)
        self.topic5Button.setTitle(topic5.title, for: .normal)


        // set 4 'Now' tips to be displayed in initial table view
        appendNowTips()

//        resetTopicButtonsSetup()
    }

    func appendNowTips() {
        tips = [topics[6].tip[0],
                topics[6].tip[1],
                topics[6].tip[2],
                topics[6].tip[3]]

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
        if let topicNumber = topicButtons.index(of: sender) {

            print("ANDREW: topicButtonTapped", topicNumber)

            flipButton(at: topicNumber, on: sender)
        } else {
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

        // Identify what button was tapped

        // select button previously tapped
        // Check if this button has been tapped just prior
        if currentIndex == indexNumber {

            appendNowTips()

            // Unselected
            performUIUpdatesOnMain {
                button.backgroundColor = NowConstants.HeaderBlue.color700
                button.setTitleColor(.white, for: .normal)
            }

            currentIndex = -1
        } else {
            // select button NOT previously tapped
            // gray out selected button
            // display selected topic tips

            appendTipsArrayBasedOnTopicSelected(indexNumber)

            // Selected
            performUIUpdatesOnMain {
                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = UIColor.gray
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
