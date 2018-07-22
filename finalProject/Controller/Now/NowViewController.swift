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

// TODO:
/*
 Add Modal Popups Within A View Controller for playing videos/displaying articles
https://www.youtube.com/watch?v=k-GvIqh5Xcs
 */

import UIKit
import SafariServices // to display webview

class NowViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var nowTableView: UITableView!
    @IBOutlet weak var topicView: UIView!

    // topicButtion OutletCollection only used for flipping UI when buttons tapped
    @IBOutlet var topicButtons: [RoundButton]!

    // individual outlets used to maintain order with buttons and labels in UI
    @IBOutlet weak var topic0Button: RoundButton!
    @IBOutlet weak var topic1Button: RoundButton!
    @IBOutlet weak var topic2Button: RoundButton!
    @IBOutlet weak var topic3Button: RoundButton!
    @IBOutlet weak var topic4Button: RoundButton!
    @IBOutlet weak var topic5Button: RoundButton!

    @IBOutlet weak var topic0Label: UILabel!
    @IBOutlet weak var topic1Label: UILabel!
    @IBOutlet weak var topic2Label: UILabel!
    @IBOutlet weak var topic3Label: UILabel!
    @IBOutlet weak var topic4Label: UILabel!
    @IBOutlet weak var topic5Label: UILabel!

    // MARK: - Properties

    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    // pull to refresh tableView
    let refreshControl = UIRefreshControl()

    // Tips and Topics

    var topics: [Topic] = [] // array of topics
    var tips: [Tip] = []

    var tipArray0 = [Tip]()
    var tipArray1 = [Tip]()
    var tipArray2 = [Tip]()
    var tipArray3 = [Tip]()
    var tipArray4 = [Tip]()
    var tipArray5 = [Tip]()
    var tipArray6 = [Tip]()
    var tipArray7 = [Tip]()
    var tipArray8 = [Tip]() // Now tip array

    var cellHeaderColor: [UIColor] = []
    var topicColor: UIColor?


    // MARK: - Lifecycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        if internetConnected() {
            setupUI()
        } else {
            performUIUpdatesOnMain {
                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
                self.setupRefreshControl()
            }
        }
    }

    // MARK: - Methods

    func setupUI() {

        dayOfWeekAndHour()

        // set estimated row height (needed for auto row height size)
        nowTableView.rowHeight = UITableViewAutomaticDimension
        nowTableView.estimatedRowHeight = 44
        nowTableView.dataSource = self
        nowTableView.delegate = self
        nowTableView.separatorStyle = .none
    }

    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.nowTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }

    // MARK: - Refresh Control

    func setupRefreshControl() {

        // add pull to refresh
        refreshControl.addTarget(self, action: #selector(reloadTimeline), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        nowTableView.addSubview(refreshControl)
    }

    @objc func reloadTimeline() {

        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
        if self.refreshControl.isRefreshing {
            // Reload time based array
            setupUI()

            self.refreshControl.endRefreshing()
        }
        self.nowTableView.reloadData()
    }

    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {

        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)

        colorOfUI(hour)

        switch dayOfWeek {
        case 1: // Sunday
            print("today is Sunday")
            sunday(hour)
        case 2,3,4: // M,T,W
            print("today is a Mon/Tues/Wed")
            weekdayMTW(hour)
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
            print("error with dayAndHour")
            print(dayOfWeek)
            print("^")
        }
    }

    func colorOfUI(_ hour: Int) {
        switch hour {
        case 0...4:
            topicColor = NowConstants.HeaderIndigo.color900
            cellHeaderColor = [NowConstants.HeaderIndigo.color800,
                               NowConstants.HeaderIndigo.color700,
                                NowConstants.HeaderIndigo.color600,
                                NowConstants.HeaderIndigo.color500,
                                NowConstants.HeaderIndigo.color400,
                                NowConstants.HeaderIndigo.color300,
                                NowConstants.HeaderIndigo.color200,]
        case 5...8:
            topicColor = NowConstants.HeaderAmber.color900
            cellHeaderColor = [NowConstants.HeaderAmber.color800,
                               NowConstants.HeaderAmber.color700,
                               NowConstants.HeaderAmber.color600,
                               NowConstants.HeaderAmber.color500,
                               NowConstants.HeaderAmber.color400,
                               NowConstants.HeaderAmber.color300,
                               NowConstants.HeaderAmber.color200,]
        case 9..<11:
            topicColor = NowConstants.HeaderGreen.color900
            cellHeaderColor = [NowConstants.HeaderGreen.color800,
                               NowConstants.HeaderGreen.color700,
                               NowConstants.HeaderGreen.color600,
                               NowConstants.HeaderGreen.color500,
                               NowConstants.HeaderGreen.color400,
                               NowConstants.HeaderGreen.color300,
                               NowConstants.HeaderGreen.color200,]
        case 11..<14:
            topicColor = NowConstants.HeaderCyan.color900
            cellHeaderColor = [NowConstants.HeaderCyan.color800,
                               NowConstants.HeaderCyan.color700,
                               NowConstants.HeaderCyan.color600,
                               NowConstants.HeaderCyan.color500,
                               NowConstants.HeaderCyan.color400,
                               NowConstants.HeaderCyan.color300,
                               NowConstants.HeaderCyan.color200,]
        case 14...16:
            topicColor = NowConstants.HeaderTeal.color900
            cellHeaderColor = [NowConstants.HeaderTeal.color800,
                               NowConstants.HeaderTeal.color700,
                               NowConstants.HeaderTeal.color600,
                               NowConstants.HeaderTeal.color500,
                               NowConstants.HeaderTeal.color400,
                               NowConstants.HeaderTeal.color300,
                               NowConstants.HeaderTeal.color200,]
        case 17...20:
            topicColor = NowConstants.HeaderOrange.color900
            cellHeaderColor = [NowConstants.HeaderOrange.color800,
                               NowConstants.HeaderOrange.color700,
                               NowConstants.HeaderOrange.color600,
                               NowConstants.HeaderOrange.color500,
                               NowConstants.HeaderOrange.color400,
                               NowConstants.HeaderOrange.color300,
                               NowConstants.HeaderOrange.color200,]
        case 21..<24:
            topicColor = NowConstants.HeaderBlue.color900
            cellHeaderColor = [NowConstants.HeaderBlue.color800,
                               NowConstants.HeaderBlue.color700,
                               NowConstants.HeaderBlue.color600,
                               NowConstants.HeaderBlue.color500,
                               NowConstants.HeaderBlue.color400,
                               NowConstants.HeaderBlue.color300,
                               NowConstants.HeaderBlue.color200,]
        default:
            print("ERROR with TopicColor and cellHeaderColor")
        }
    }

    func saturday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, bedtimeTopic0, journalTopic0, weekendNow0to4Topic0)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, gymTopic1, runningTopic0, yogaTopic0, breakfastTopic0, homeAMTopic0, weekendNow5to8Topic0)

        case 9..<11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic2, yogaTopic0, runningTopic0, cafeTopic0, breakfastTopic0, brunchTopic0, weekendNow9to11Topic0)

        case 11..<14:
            print("Weekend, Midday")
            appendSevenTopics(lunchTopic0, cafeTopic0, groceryStoreTopic0, runningTopic0, gymTopic0, yogaTopic0, weekendNow11to14Topic0)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(cafeTopic0, runningTopic0, gymTopic1, groceryStoreTopic1, dateTopic0, barTopic0, weekendNow14to16Topic0)
        case 17...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerTopic0, dateTopic0, barTopic0, restaurantTopic1, groceryStoreTopic2, homePMTopic0, weekendNow17to20Topic0)
        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic1, dateTopic0, homePMTopic0, bathroomPMTopic0, lateNightSnackTopic0, bedtimeTopic0, weekendNow21to24Topic0)
        default:
            print("Weekend,INVALID HOUR!")
        }
    }

    func sunday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, bedtimeTopic0, journalTopic0, weekendNow0to4Topic0)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, gymTopic0, runningTopic0, yogaTopic0, breakfastTopic0, homeAMTopic0, weekendNow5to8Topic0)

        case 9..<11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic1, yogaTopic0, runningTopic0, cafeTopic0, breakfastTopic0, brunchTopic0, weekendNow9to11Topic0)

        case 11..<14:
            print("Weekend, Midday")
            appendSevenTopics(lunchTopic0, cafeTopic0, groceryStoreTopic0, runningTopic0, gymTopic2, yogaTopic0, weekendNow11to14Topic0)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(cafeTopic0, runningTopic0, yogaTopic0, gymTopic0, mindfulnessTopic0, groceryStoreTopic1, weekendNow14to16Topic0)
        case 17...20:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerTopic0, dateTopic0, groceryStoreTopic2, barTopic0, homePMTopic0, restaurantTopic0, weekendNow17to20Topic0)
        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic0, dateTopic0, homePMTopic0, bathroomPMTopic0, lateNightSnackTopic0, bedtimeTopic0, weekendNow21to24Topic0)
        default:
            print("Weekend,INVALID HOUR!")
        }
    }




    func weekdayMTW(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayMTW, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(bedtimeTopic0, lateNightSnackTopic0, homePMTopic0, journalTopic0, meditationTopic0, mindfulnessTopic0, weekdayNow0to4Topic0)
        case 5...8:
            print("weekdayMTW, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, gymTopic2, journalTopic0, breakfastTopic0, cafeTopic0, commuteAMTopic0, weekday0Now5to8Topic0)

        case 9..<11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(breakfastTopic0, cafeTopic0, commuteAMTopic0, workAMTopic0, leadershipAMTopic0, mindfulnessTopic0, weekdayNow9to11Topic0)

        case 11..<14:
            print("weekdayMTW, Midday")
            appendSevenTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, leadershipPMTopic0, breakTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 14...15:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, leadershipPMTopic0, mindfulnessTopic0, afternoonSnackTopic0, breakTopic0,   happyHourTopic0, weekdayNow14to16Topic0)
        case 16..<17:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, afternoonSnackTopic0, breakTopic0, commutePMTopic0, groceryStoreTopic2, happyHourTopic0, weekdayNow14to16Topic0)

        case 17...18:
            print("weekdayMTW, Early-Evening")
            appendSevenTopics(workLateTopic0, commutePMTopic0, gymTopic0, groceryStoreTopic3, dinnerTopic0, dateTopic0, weekdayNow17to20Topic0)
        case 19...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic1, restaurantTopic1, dinnerTopic0, dateTopic0, barTopic0, homePMTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic0, dinnerAfter9PMTopic0, homePMTopic0, lateNightSnackTopic0, bathroomPMTopic0, bedtimeTopic0, weekdayNow21to24Topic0)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    func thursday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(bedtimeTopic0, lateNightSnackTopic0, homePMTopic0, meditationTopic0, barTopic0, dateTopic0, weekdayNow0to4Topic0)
        case 5...8:
            print("weekdayTF, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(homeAMTopic0, meditationTopic0, gymTopic2, journalTopic0, breakfastTopic0, commuteAMTopic0, weekday1Now5to8Topic0)
        case 9..<11:
            print("weekdayTF, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteAMTopic0, workAMTopic0, lunchTopic0, cafeTopic0, breakTopic0, mindfulnessTopic0,  weekdayNow9to11Topic0)

        case 11..<14:
            print("weekdayTF, Midday")
            appendSevenTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, cafeTopic0, breakTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 14...16:
            print("weekdayTF, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, afternoonSnackTopic0, cafeTopic0, breakTopic0, mindfulnessTopic0, commutePMTopic0, weekdayNow14to16Topic0)

        case 17...18:
            print("weekdayTF, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(workLateTopic0, commutePMTopic0, gymTopic0, dinnerTopic0, barTopic0, dateTopic0, weekdayNow17to20Topic0)

        case 19...20:
            print("weekdayTF, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(workLateTopic0, gymTopic1, dinnerTopic0, barTopic0, restaurantTopic0, dateTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerAfter9PMTopic0, barTopic1, dateTopic0, homePMTopic0, bedtimeTopic0, lateNightSnackTopic0, weekdayNow21to24Topic0)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    func friday(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekday Fri, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(bedtimeTopic0, lateNightSnackTopic0, homePMTopic0, meditationTopic0, barTopic0, dateTopic0, weekdayNow0to4Topic0)
        case 5...8:
            print("weekday Fri, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(homeAMTopic0, meditationTopic0, gymTopic2, journalTopic0, breakfastTopic0, commuteAMTopic0, weekday1Now5to8Topic0)
        case 9..<11:
            print("weekday Fri, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteAMTopic0, workAMTopic0, lunchTopic0, cafeTopic0, breakTopic0, mindfulnessTopic0,  weekdayNow9to11Topic0)

        case 11..<14:
            print("weekday Fri, Midday")
            appendSevenTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, cafeTopic0, breakTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 14...16:
            print("weekday Fri, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, afternoonSnackTopic0, cafeTopic0, breakTopic0, mindfulnessTopic0, commutePMTopic0, weekdayNow11to14Topic0)

        case 17...18:
            print("weekday Fri, Evening 5-6PM")
            // call function to display 9 time-based topics
            appendSevenTopics(commutePMTopic0, gymTopic0, happyHourTopic0, restaurantTopic1,  dinnerTopic0, homePMTopic0, weekdayNow17to20Topic0)
        case 19...20:
            print("weekday Fri, Evening 7-8PM")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic1, dinnerTopic0, restaurantTopic1, barTopic1, dateTopic0, homePMTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("weekdayTF, Late evening 9-12PM")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerAfter9PMTopic0, barTopic0, dateTopic0, homePMTopic0, lateNightSnackTopic0, bedtimeTopic0, weekdayNow21to24Topic0)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }


    func setupTopicLabels() {
        styleTopicLabel(label: topic0Label, labelTitle: topics[0].title)
        styleTopicLabel(label: topic1Label, labelTitle: topics[1].title)
        styleTopicLabel(label: topic2Label, labelTitle: topics[2].title)
        styleTopicLabel(label: topic3Label, labelTitle: topics[3].title)
        styleTopicLabel(label: topic4Label, labelTitle: topics[4].title)
        styleTopicLabel(label: topic5Label, labelTitle: topics[5].title)
    }

    func setupTopicButtons() {
        styleTopicButton(button: topic0Button, buttonTitle: topics[0].icon)
        styleTopicButton(button: topic1Button, buttonTitle: topics[1].icon)
        styleTopicButton(button: topic2Button, buttonTitle: topics[2].icon)
        styleTopicButton(button: topic3Button, buttonTitle: topics[3].icon)
        styleTopicButton(button: topic4Button, buttonTitle: topics[4].icon)
        styleTopicButton(button: topic5Button, buttonTitle: topics[5].icon)
    }

    private func styleTopicButton(button: RoundButton, buttonTitle: String) {
        button.setTitle(buttonTitle, for: .normal)
        button.backgroundColor = UIColor.darkGray
    }

    private func styleTopicLabel(label: UILabel, labelTitle: String) {
        label.text = labelTitle
        label.textColor = topicColor
    }

    func appendSevenTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic,_ topic4: Topic,_ topic5: Topic, _ topic6Now: Topic) {

        topics = [topic0, topic1, topic2, topic3, topic4, topic5, topic6Now]

        // set 4 'Now' tips to be displayed in initial table view
        tips = [topics[6].tip[0],
                topics[6].tip[1],
                topics[6].tip[2],
                topics[6].tip[3]]

        setupTopicLabels()
        setupTopicButtons()
    }


    // MARK: - IBActions

    @IBAction func topicButtonTapped(_ sender: RoundButton) {
        if let topicNumber = topicButtons.index(of: sender) {
            flipButton(at: topicNumber, withText: topics[topicNumber].icon, on: sender)
            nowTableView.reloadData()
        } else {
            createAlert(title: "ERROR", message: "Could not laod buttons.")
        }
    }

    func flipButton(at indexNumber: Int, withText text: String, on button: RoundButton) {

        let selectedButtonIcon = Constants.Now.selectedIconDisplay

        if button.currentTitle == text {
            print("Tapped a topic button button")
            setupTopicButtons()
            button.setTitle("\(selectedButtonIcon)", for: .normal)
            button.backgroundColor = topicColor
            topicSelected(indexNumber)
        } else {
            print("Tapped 'X' button, reset")
            button.setTitle(text, for: .normal)
            button.backgroundColor = UIColor.darkGray
            setupTopicButtons()
            topicSelected(topicButtons.count)
        }
    }

    func topicSelected(_ index: Int) {
        tips = []

        // Take selected index in topics array and subtract 1 because we start with zero
        var counter = (topics[index].tip.count - 1)

        for item in 0...counter {
            tips.append(topics[index].tip[item])
        }
    }

} // End of Home2ViewController

// MARK: - Table View Methods

extension NowViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
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

        // extend the bottom line
        cell.layoutMargins = UIEdgeInsets.zero

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

//        cell.boardNoColorView.layer.cornerRadius = 3
//        cell.boarderColorView.layer.cornerRadius = 3
        cell.boarderColorView.layer.borderWidth = 0.5
        cell.boarderColorView.layer.cornerRadius = 4
        cell.boarderColorView.layer.borderColor = cellHeaderColor[indexPath.row].cgColor
        cell.boarderColorView.layer.shadowColor = cellHeaderColor[indexPath.row].cgColor
        cell.boarderColorView.layer.shadowOpacity = 0.9
        cell.boarderColorView.layer.shadowOffset = CGSize(width: -0.6, height: 1.2)
        cell.boarderColorView.layer.shadowRadius = 1
        cell.boarderColorView.backgroundColor = UIColor.white

//        cell.headerLabel.textColor = cellHeaderColor[indexPath.row]

        // Line seperator (extend to left)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        nowTableView.deselectRow(at: indexPath, animated: true)
        let tip = tips[indexPath.row]

        let app = UIApplication.shared
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NowTableViewCell
        if let url = tip.sourceURL {

            // print: true or false
            print("verifyURL: \(verifyUrl(urlString: url))")

            if verifyUrl(urlString: url) == true {
                app.open(URL(string:url)!)
            } else {
                performUIUpdatesOnMain {
                    self.createAlert(title: "Could not open URL", message: "Check your Internet connectio and try again.")
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
