//
//  Home2ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import SafariServices // to display webview

class Home2ViewController: UIViewController {



    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var profileButton: UIButton!

    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var topicView: UIView!

    // Array of UIB
    @IBOutlet var topicButtons: [UIButton]!

    @IBOutlet var topicLabels: [UILabel]!


    // MARK: - Properties

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current
    

    // Tips and Topics

    var topics: [Topic] = [] // array of topics
    var tips: [Tip] = []

    var tipArray0 = [Tip]()
    var tipArray1 = [Tip]()
    var tipArray2 = [Tip]()
    var tipArray3 = [Tip]()
    var tipArray4 = [Tip]()

//    var button0 = Topic(title: "", icon: "", tip: [])
//    var button1 = Topic(title: "", icon: "", tip: [])
//    var button2 = Topic(title: "", icon: "", tip: [])
//    var button3 = Topic(title: "", icon: "", tip: [])
//    var button4Now = Topic(title: "", icon: "", tip: [])
//
//    // MARK: - AM
//
//    // Button1
//    let tipAM1 = Tip(title: "Gym 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM2 = Tip(title: "Gym 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM3 = Tip(title: "Gym 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM4 = Tip(title: "Gym 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Button2
//    let tipAM11 = Tip(title: "Breakfast 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM12 = Tip(title: "Breakfast 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM13 = Tip(title: "Breakfast 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM14 = Tip(title: "Breakfast 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Button3
//    let tipAM21 = Tip(title: "Work 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM22 = Tip(title: "Work 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM23 = Tip(title: "Work 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM24 = Tip(title: "work 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Button4
//    let tipAM31 = Tip(title: "Meditate 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM32 = Tip(title: "Meditate 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM33 = Tip(title: "Meditate 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM34 = Tip(title: "Meditate 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Now/Present Hour
//    let tipAM41 = Tip(title: "Present Day and Hour: 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM42 = Tip(title: "Present Day and Hour: 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM43 = Tip(title: "Present Day and Hour: 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipAM44 = Tip(title: "Present Day and Hour: 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//
//    // MARK: - PM
//
//    // Button1
//    let tipPM1 = Tip(title: "Gym 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM2 = Tip(title: "Gym 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM3 = Tip(title: "Gym 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM4 = Tip(title: "Gym 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Button2
//    let tipPM11 = Tip(title: "Dinner 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM12 = Tip(title: "Dinner 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM13 = Tip(title: "Dinner 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM14 = Tip(title: "Dinner 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Button3
//    let tipPM21 = Tip(title: "Bar 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM22 = Tip(title: "Bar 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM23 = Tip(title: "Bar 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM24 = Tip(title: "Bar 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Button4
//    let tipPM31 = Tip(title: "Meditate 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM32 = Tip(title: "Meditate 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM33 = Tip(title: "Meditate 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM34 = Tip(title: "Meditate 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//
//    // Now/Present Hour
//    let tipPM41 = Tip(title: "Present Night and Hour: 1 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM42 = Tip(title: "Present Night and Hour: 2 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM43 = Tip(title: "Present Night and Hour: 3 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")
//    let tipPM44 = Tip(title: "Present Night and Hour: 4 Title", body: "body text, yada, yada, yada." , sourceName: "SourceName", sourceURL: "www.test.com", sponsorLogo: "TBD", sponsorURL: "www.test.com")




    override func viewDidLoad() {
        super.viewDidLoad()

        let year = calendar.component(.year, from: date)
        let weekOfYear = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)
        let weekdayOrdinal = calendar.component(.weekdayOrdinal, from: date)
        let weekday = calendar.component(.weekday, from: date) // Sunday is represented by 1
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let hour = calendar.component(.hour, from: date)

        // Append individual tips to correct tipArray


//        // Create topics
//
//        if hour < 12 {
//            print("AM")
//
//            // append tips
//
//            // Always will be tipArray0, tipArray1, tipArray2, tipArray3, and tipArray4
//            tipArray0.append(tipAM1)
//            tipArray0.append(tipAM2)
//            tipArray0.append(tipAM3)
//            tipArray0.append(tipAM4)
//
//            tipArray1.append(tipAM11)
//            tipArray1.append(tipAM12)
//            tipArray1.append(tipAM13)
//            tipArray1.append(tipAM14)
//
//            tipArray2.append(tipAM21)
//            tipArray2.append(tipAM22)
//            tipArray2.append(tipAM23)
//            tipArray2.append(tipAM24)
//
//            tipArray3.append(tipAM31)
//            tipArray3.append(tipAM32)
//            tipArray3.append(tipAM33)
//            tipArray3.append(tipAM34)
//
//            tipArray4.append(tipAM41)
//            tipArray4.append(tipAM42)
//            tipArray4.append(tipAM43)
//            tipArray4.append(tipAM44)
//
//            // create topics
//
//            let topic0 = Topic(title: "Gym", icon: "Gym", tip: tipArray0)
//            let topic1 = Topic(title: "Breakfast", icon: "Bre", tip: tipArray1)
//            let topic2 = Topic(title: "Work", icon: "Wor", tip: tipArray2)
//            let topic3 = Topic(title: "Meditate", icon: "Med", tip: tipArray3)
//            let topic4 = Topic(title: "Now", icon: "Now", tip: tipArray4)
//
//            // Below stays constant, just insert desired topic objects.
//            // Append selected topics to main array of Topics
//            // Always will append 5 topic objects.
//
//            appendFiveTopics(topic0, topic1, topic2, topic3, topic4)
//
//        } else if day > 12 {
//            print("PM")
//
//            tipArray0 = [tipPM1, tipPM2, tipPM3, tipPM4]
//            tipArray1 = [tipPM11, tipPM12, tipPM13, tipAM14]
//            tipArray2 = [tipPM21, tipPM22, tipPM23, tipPM24]
//            tipArray3 = [tipPM31, tipPM32, tipPM33, tipPM34]
//            tipArray4 = [tipPM41, tipPM42, tipPM43, tipPM44]
//
//            let topic0 = Topic(title: "Gym", icon: "Gym", tip: tipArray0)
//            let topic1 = Topic(title: "Dinner", icon: "Din", tip: tipArray1)
//            let topic2 = Topic(title: "Bar", icon: "Bar", tip: tipArray2)
//            let topic3 = Topic(title: "Meditate", icon: "Med", tip: tipArray3)
//            let topic4 = Topic(title: "Now", icon: "Now", tip: tipArray4)
//
//            // Select desired topics (0 through n)
//            button0 = topic0
//            button1 = topic1
//            button2 = topic2
//            button3 = topic3
//            button4Now = topic4
//
//            // don't need to button variables
//            appendFiveTopics(button0, button1, button2, button3, button4Now)
//
//        }


        // set estimated row height (needed for auto row height size)
        homeTableView.rowHeight = UITableViewAutomaticDimension
        homeTableView.estimatedRowHeight = 44


        print("XXXXXX")
        print(year)
        print("WeekOfYear: \(weekOfYear)")
        print(weekOfMonth)
        print("Weekday: \(weekday)") // Sunday is represented by 1
        print("Month: \(month)")
        print("Day: \(day)")
        print("Hour: \(hour)")
        print("XXXXXX")





//        let timeOfDay: String
//
//        switch hour {
//        case 0...5:
//            timeOfDay = "Early morning"
//        case 6...11:
//            timeOfDay = "Morning"
//        case 12...16:
//            timeOfDay = "Afternoon"
//        case 17...19:
//            timeOfDay = "Evening"
//        case 20..<24:
//            timeOfDay = "Late evening"
//        default:
//            timeOfDay = "INVALID HOUR!"
//        }
//
//        print("timeOfDay: \(timeOfDay)")
//
//        // add to categories array by calling function
////        homeCategories = createHomeCategoryArray(hour)
//

        // Creates an array based on the hour of day (add in day of week)
//        createTopicsAndTips()


        dayOfWeekAndHour()







//
//        if hour < 12 {
//            print("AM hours")
//
//            print("*************")
//            categoryButtons[0].setTitle("\(categoryButtonTitlesAM[0])", for: .normal)
//            categoryLabels[0].text = categoryLabelTitlesAM[0]
//
//            categoryButtons[1].setTitle("\(categoryButtonTitlesAM[1])", for: .normal)
//            categoryLabels[1].text = categoryLabelTitlesAM[1]
//
//            categoryButtons[2].setTitle("\(categoryButtonTitlesAM[2])", for: .normal)
//            categoryLabels[2].text = categoryLabelTitlesAM[2]
//
//            categoryButtons[3].setTitle("\(categoryButtonTitlesAM[3])", for: .normal)
//            categoryLabels[3].text = categoryLabelTitlesAM[3]
//            print("*************")
//
//        } else {
//            print("PM hours")
//
//            print("*************")
//            categoryButtons[0].setTitle("\(categoryButtonTitlesPM[0])", for: .normal)
//            categoryLabels[0].text = categoryLabelTitlesPM[0]
//
//            categoryButtons[1].setTitle("\(categoryButtonTitlesPM[1])", for: .normal)
//            categoryLabels[1].text = categoryLabelTitlesPM[1]
//
//            categoryButtons[2].setTitle("\(categoryButtonTitlesPM[2])", for: .normal)
//            categoryLabels[2].text = categoryLabelTitlesPM[2]
//
//            categoryButtons[3].setTitle("\(categoryButtonTitlesPM[3])", for: .normal)
//            categoryLabels[3].text = categoryLabelTitlesPM[3]
//            print("*************")
//
//        }
//
//
//
//
//
//        func updateTableViewWithSelectedCategory(_: Int) {
//
//            let tip1 = Tip(title: "Before going to the gym", body: "Research suggests that ending your day with gratitude...", sourceName: "NY Times", sourceURL: "www.nytimes.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
//            let tip2 = Tip(title: "Strech before working out", body: "Research suggests that ending your day with meditation...", sourceName: "BBC News", sourceURL: "www.bbcnews.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//            let tip3 = Tip(title: "When working out, stay focused", body: "Research suggests that ending your day with a glass of water...", sourceName: "Men's Health", sourceURL: "www.menshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
//            let tip4 = Tip(title: "Post workout, drink a protein shake", body: "Research suggests that ending with exercise...", sourceName: "Women's Health", sourceURL: "www.womenshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
//            let tip5 = Tip(title: "Shower after the gym", body: "Research suggests that ending with oatmeal...", sourceName: "WebMD", sourceURL: "www.webmd.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//            let tip6 = Tip(title: "Rest after the gym", body: "Research suggests that resting...", sourceName: "WebMD", sourceURL: "www.webmd.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//            let tip7 = Tip(title: "Prepare for your next workout by putting your gym clothes next to your backpack or door", body: "Research suggests that preparing for...", sourceName: "WebMD", sourceURL: "www.webmd.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//            let tip8 = Tip(title: "When working out, stay focused", body: "Research suggests that ending your day with a glass of water...", sourceName: "Men's Health", sourceURL: "www.menshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
//            let tip9 = Tip(title: "Mentally prepare for your next gym class", body: "Research suggests that visualization before working out...", sourceName: "WebMD", sourceURL: "www.webmd.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//            let tip10 = Tip(title: "Eat a healthy post-workout meal", body: "Research suggests that ending your meal with a healthy food...", sourceName: "Men's Health", sourceURL: "www.menshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
//            beforeTips.append(tip1)
//            beforeTips.append(tip2)
//            beforeTips.append(tip3)
//            duringTips.append(tip4)
//            duringTips.append(tip5)
//            duringTips.append(tip6)
//            duringTips.append(tip7)
//            afterTips.append(tip8)
//            afterTips.append(tip9)
//            afterTips.append(tip10)
//        }





        // Do any additional setup after loading the view.

        homeTableView.dataSource = self
        homeTableView.delegate = self

    }

    func appendFiveTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic, _ topic4Now: Topic) {

        // Append selected topics to main array of Topics
        // = [button0, button1, button2, button3, presentDayAndHour]
        topics = [topic0, topic1, topic2, topic3, topic4Now]

        // Set-up buttons and labels with current topics
        topicButtons[0].setTitle("\(topics[0].icon)", for: .normal)
        topicLabels[0].text = topics[0].title

        topicButtons[1].setTitle("\(topics[1].icon)", for: .normal)
        topicLabels[1].text = topics[1].title

        topicButtons[2].setTitle("\(topics[2].icon)", for: .normal)
        topicLabels[2].text = topics[2].title

        topicButtons[3].setTitle("\(topics[3].icon)", for: .normal)
        topicLabels[3].text = topics[3].title

        // set tips to be displayed in initial table view
        tips = [topics[4].tip[0],
                topics[4].tip[1],
                topics[4].tip[2],
                topics[4].tip[3]]

    }

    func dayOfWeekAndHour() {
        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)

        switch dayOfWeek {
        case 1,7: // S,S
            print("today is a weekend")
            weekend(hour)
        case 2,3,4: // M,T,W
            print("today is a Mon/Tues/Wed")
            weekdayMTW(hour)
        case 5,6:
            print("today is Thur/Fri")
            weekdayTF(hour)
        default:
            print("error with dayAndHour")
            print(dayOfWeek)
            print("^")
        }
    }

    func weekend(_ hour: Int) {
                switch hour {
                case 0...4:
                    print("Weekend, Very Early Morning")
                    // call function to display 5 time-based topics
                    appendFiveTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, weekendNow0to4Topic0)

                case 5...8:
                    print("Weekend, Early Morning")
                    // call function to display 5 time-based topics
                    appendFiveTopics(meditationTopic0, gymTopic0, breakfastTopic0, homeAMTopic0, weekendNow5to8Topic0)

                case 9..<11:
                    print("Weekend, Late Morning")
                    // call function to display 5 time-based topics
                    appendFiveTopics(gymTopic0, yogaTopic0, runningTopic0, cafeTopic0, weekendNow9to11Topic0)

                case 11..<14:
                    print("Weekend, Midday")
                    appendFiveTopics(lunchTopic0, cafeTopic0, shoppingClothesTopic0, groceryStoreTopic0, weekendNow11to14Topic0)

                case 14...16:
                    print("Weekend, Afternoon")
                    // call function to display 5 time-based topics
                    appendFiveTopics(mindfulnessTopic0, runningTopic0, shoppingClothesTopic0, groceryStoreTopic0, weekendNow14to16Topic0)
                case 17...20:
                    print("Weekend, Evening")
                    // call function to display 5 time-based topics
                    appendFiveTopics(dinnerTopic0, homePMTopic0, groceryStoreTopic0, mindfulnessTopic0, weekendNow17to20Topic0)
                case 21..<24:
                    print("Weekend, Late evening")
                    // call function to display 5 time-based topics
                    appendFiveTopics(homePMTopic0, meditationTopic0, bedtimeTopic0, lateNightSnackTopic0, weekendNow21to24Topic0)
                default:
                    print("Weekend,INVALID HOUR!")
                }
    }

    func weekdayMTW(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 5 time-based topics
            appendFiveTopics(bedtimeTopic0, lateNightSnackTopic0, meditationTopic0, barTopic0, weekdayNow0to4Topic0)
        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 5 time-based topics
            appendFiveTopics(meditationTopic0, gymTopic0, breakfastTopic0, commuteAMTopic0, weekdayNow5to8Topic0)

        case 9..<11:
            print("weekdayMTW, Late Morning")
            // call function to display 5 time-based topics
            appendFiveTopics(workAMTopic0, lunchTopic0, leadershipAMTopic0, cafeTopic0, weekdayNow9to11Topic0)

        case 11..<14:
            print("weekdayMTW, Midday")
            appendFiveTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, leadershipPMTopic0, weekdayNow11to14Topic0)

        case 14...16:
            print("weekdayMTW, Afternoon")
            // call function to display 5 time-based topics
            appendFiveTopics(workPMTopic0, leadershipPMTopic0, afternoonSnackTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 17...20:
            print("Weekday, Evening")
            // call function to display 5 time-based topics
            appendFiveTopics(commutePMTopic0, gymTopic0, groceryStoreTopic0, dinnerTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 5 time-based topics
            appendFiveTopics(barTopic0, lateNightSnackTopic0, homePMTopic0, bedtimeTopic0, weekdayNow21to24Topic0)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    func weekdayTF(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 5 time-based topics
            appendFiveTopics(bedtimeTopic0, lateNightSnackTopic0, meditationTopic0, barTopic0, weekdayNow0to4Topic0)
        case 5...8:
            print("weekdayTF, Early Morning")
            // call function to display 5 time-based topics
            appendFiveTopics(meditationTopic0, gymTopic0, breakfastTopic0, commuteAMTopic0, weekdayNow5to8Topic0)
        case 9..<11:
            print("weekdayTF, Late Morning")
            // call function to display 5 time-based topics
            appendFiveTopics(workAMTopic0, lunchTopic0, leadershipAMTopic0, cafeTopic0, weekdayNow9to11Topic0)

        case 11..<14:
            print("weekdayTF, Midday")
            appendFiveTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, leadershipPMTopic0, weekdayNow11to14Topic0)

        case 14...16:
            print("weekdayTF, Afternoon")
            // call function to display 5 time-based topics
            appendFiveTopics(workPMTopic0, leadershipPMTopic0, afternoonSnackTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 17...20:
            print("weekdayTF, Evening")
            // call function to display 5 time-based topics
            appendFiveTopics(gymTopic0, dinnerTopic0, barTopic0, dateTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 5 time-based topics
            appendFiveTopics(barTopic0, dateTopic0, homePMTopic0, bedtimeTopic0, weekdayNow21to24Topic0)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    // Table View Methods

//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }





//    func combineDateWithTime(date: Date, time: Date) -> Date? {
//        let calendar = NSCalendar.current
//
//        let dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
//        let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: time)
//
//        var mergedComponments = DateComponents()
//        mergedComponments.year = dateComponents.year!
//        mergedComponments.month = dateComponents.month!
//        mergedComponments.day = dateComponents.day!
//        mergedComponments.hour = timeComponents.hour!
//        mergedComponments.minute = timeComponents.minute!
//        mergedComponments.second = timeComponents.second!
//
//        return calendar.date(from: mergedComponments)
//    }



//    func createHomeCategoryArray(_ hour: Int) -> [HomeCategory] {
//        // create all homeCategory object, put them into a temperory array
//        // then, set homeCategories array equal to temperory array returned in this method
//
//
//
//        if hour < 12 {
//            // AM: create HomeCategory objects
//            let category1 = HomeCategory(icon: "Gy", title: "Gym")
//            let category2 = HomeCategory(icon: "Br", title: "Breakfast")
//            let category3 = HomeCategory(icon: "Me", title: "Meditate")
//            let category4 = HomeCategory(icon: "Jo", title: "Journal")
//
//            tempCategories.append(category1)
//            tempCategories.append(category2)
//            tempCategories.append(category3)
//            tempCategories.append(category4)
//
//        } else if hour >= 12 {
//            // PM: create HomeCategory objects
//            let category1 = HomeCategory(icon: "Di", title: "Dinner")
//            let category2 = HomeCategory(icon: "Gy", title: "Gym")
//            let category3 = HomeCategory(icon: "Sn", title: "Snack")
//            let category4 = HomeCategory(icon: "Jo", title: "Journal")
//
//            tempCategories.append(category1)
//            tempCategories.append(category2)
//            tempCategories.append(category3)
//            tempCategories.append(category4)
//        }
//
//        return tempCategories
//    }


//    func createTopicsAndTips() {
//
//        let day = calendar.component(.day, from: date)
//        let hour = calendar.component(.hour, from: date)
//
//        if day == 1 || day == 7 {
//            print("It's a weekend")
//
//
//        } else {
//            print("It's a weekday")
//
//        }
//
//
//
//
//        if hour < 12 {
//            print("IN THE AM")
////            let tip1 = Tip(title: "Wake up by saying gratitude", body: "Research suggests that starting your day with gratitude...", sourceName: "NY Times", sourceURL: "www.nytimes.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
////            let tip2 = Tip(title: "Wake up by meditating for 5 minute", body: "Research suggests that starting your day with meditation...", sourceName: "BBC News", sourceURL: "www.bbcnews.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
////            let tip3 = Tip(title: "Wake up by drinking a glass of water", body: "Research suggests that starting your day with a glass of water...", sourceName: "Men's Health", sourceURL: "www.menshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
////            let tip4 = Tip(title: "Wake up by going to the gym", body: "Research suggests that starting with exercise...", sourceName: "Women's Health", sourceURL: "www.womenshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
////            let tip5 = Tip(title: "Wake up by going to eating oatmeal", body: "Research suggests that starting with oatmeal...", sourceName: "WebMD", sourceURL: "www.webmd.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//
////            tips.append(tip1)
////            tips.append(tip2)
////            tips.append(tip3)
////            tips.append(tip4)
////            tips.append(tip5)
//
//        } else {
//            print("IN THE PM")
//
//
////            let tip1 = Tip(title: "Go to bed by saying gratitude in order to live healthy. Go to bed by saying gratitude in order to live healthy.", body: "1. Research suggests that ending your day with gratitude. 2. Research suggests that ending your day with gratitude. 3. Research suggests that ending your day with gratitude. 5. Research suggests that ending your day with gratitude. 6. Research suggests that ending your day with gratitude. 7. Research suggests that ending your day with gratitude. 8. Research suggests that ending your day with gratitude. 9. Research suggests that ending your day with gratitude. 10. Research suggests that ending your day with gratitude. 11. Research suggests that ending your day with gratitude.", sourceName: "NY Times", sourceURL: "www.nytimes.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
////            let tip2 = Tip(title: "Go to bed by meditating for 5 minute in order to live healthy.", body: "Research suggests that ending your day with meditation...", sourceName: "BBC News", sourceURL: "www.bbcnews.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
////            let tip3 = Tip(title: "Go to bed by drinking a glass of water", body: "Research suggests that ending your day with a glass of water...", sourceName: "Men's Health", sourceURL: "www.menshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
////            let tip4 = Tip(title: "Go to bed by going to the gym", body: "Research suggests that ending with exercise...", sourceName: "Women's Health", sourceURL: "www.womenshealth.com", sponsorLogo: "GM_logo", sponsorURL: "https://www.gm.com/")
////            let tip5 = Tip(title: "Go to bed by going to eating oatmeal yada, yada, yada. End title.", body: "Research suggests that ending with oatmeal... Research suggests that ending with oatmeal... Research suggests that ending with oatmeal... Research suggests that ending with oatmeal... End.", sourceName: "WebMD", sourceURL: "www.webmd.com", sponsorLogo: "Coke_logo", sponsorURL: "https://us.coca-cola.com/")
//
////            tips.append(tip1)
////            tips.append(tip2)
////            tips.append(tip3)
////            tips.append(tip4)
////            tips.append(tip5)
//
//
//
//        }
//
//    }




    // MARK: - IBActions

    @IBAction func profileButtonTapped(_ sender: RoundButton) {
    }


    @IBAction func topicButtonTapped(_ sender: RoundButton) {
        if let topicNumber = topicButtons.index(of: sender) {
            flipButton(at: topicNumber, withText: topics[topicNumber].icon, on: sender)
            homeTableView.reloadData()
        } else {
            print("ERROR: button tapped not in topicButtons")
        }
    }



    func refreshTopicButtons() {
        topicButtons[0].setTitle("\(topics[0].icon)", for: .normal)
        topicButtons[1].setTitle("\(topics[1].icon)", for: .normal)
        topicButtons[2].setTitle("\(topics[2].icon)", for: .normal)
        topicButtons[3].setTitle("\(topics[3].icon)", for: .normal)

        topicButtons[0].backgroundColor = UIColor.blue
        topicButtons[1].backgroundColor = UIColor.blue
        topicButtons[2].backgroundColor = UIColor.blue
        topicButtons[3].backgroundColor = UIColor.blue
    }


    func flipButton(at indexNumber: Int, withText text: String, on button: RoundButton) {

        let selectedButtonIcon = "X"

        if button.currentTitle == text {
            print("Tapped a topic button button")
            refreshTopicButtons()
            button.setTitle("\(selectedButtonIcon)", for: .normal)
            button.backgroundColor = UIColor.gray
            topicSelected(indexNumber)
        } else {
            print("Tapped 'X' button")
            button.setTitle(text, for: .normal)
            button.backgroundColor = UIColor.blue
            refreshTopicButtons()
            topicSelected(topicButtons.count)
        }
    }

    func topicSelected(_ index: Int) {
        tips = []

        // Take selected index in topics array and subtract 0 because we start with zero
        var counter = (topics[index].tip.count - 1)

        for item in 0...counter {
            print("counter: \(counter)")
            print("index: \(index)")
            print("item: \(item)")
            tips.append(topics[index].tip[item])
        }

//        print("Index: \(index), Number of tips: \(tips.count)")
//        print("Number of topics: \(topics[index].title)")
//        tips.append(topics[index].tip[0])
//        tips.append(topics[index].tip[1])
//        tips.append(topics[index].tip[2])
//        tips.append(topics[index].tip[3])
//        print("Index: \(index), Number of tips: \(tips.count)")
    }

}

extension Home2ViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        print("Number of tips in table view: \(tips.count)")
        return tips.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Whatever tip is at each row
        let tip = tips[indexPath.row]
//        let tipCategory = categoryObjectsArray[indexPath.section].sectionObjects[indexPath.row]


        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Home2TableViewCell

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        // Tell the UITableViewCell who its delegate is, set it in the table view method. Self is the View Controller because we are in the View Controller file. This is equivalent of giving the boss an intern. The View Controller is the intern of the delegate.
        cell.delegate = self
//        cell.bodyTextView.delegate = self

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell clicked")
        homeTableView.deselectRow(at: indexPath, animated: true)
    }
}

//extension Home2ViewController: UITextViewDelegate {
//    func textViewDidChange(_ textView: UITextView) {
//        let currentOffset = homeTableView.contentOffset
//        UIView.setAnimationsEnabled(false)
//        homeTableView.beginUpdates()
//        homeTableView.endUpdates()
//        UIView.setAnimationsEnabled(true)
//        homeTableView.setContentOffset(currentOffset, animated: false)
//    }
//}

extension Home2ViewController: Home2TableViewCellDelegate {

    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sponsorURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sponsorURL)
        present(safariVC, animated: true, completion: nil)

    }


}
