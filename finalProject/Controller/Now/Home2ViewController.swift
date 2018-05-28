//
//  Home2ViewController.swift
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

class Home2ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var profileButton: UIButton!

    @IBOutlet weak var homeTableView: UITableView!
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


    func signedInStatus(isSignedIn: Bool) {
        if (isSignedIn) {

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if internetConnected() {
            setupUI()
        } else {
            createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
        }

    } // End of ViewDidLoad

    func setupUI() {
        // call configureTableView() and reloadTimeline() in viewDidLoad
        configureTableView()
        dayOfWeekAndHour()

        // set estimated row height (needed for auto row height size)
        homeTableView.rowHeight = UITableViewAutomaticDimension
        homeTableView.estimatedRowHeight = 44
        homeTableView.dataSource = self
        homeTableView.delegate = self
    }

    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.homeTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }

    @objc func reloadTimeline() {

        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
        if self.refreshControl.isRefreshing {
            // Reload time based array
            dayOfWeekAndHour()
            self.refreshControl.endRefreshing()
        }
        self.homeTableView.reloadData()

        /* Advanced way to refresh posts in timeline
         https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/building-the-timeline
         */
        //        UserService.timeline { (posts) in
        //            self.posts = posts
        //
        //            if self.refreshControl.isRefreshing {
        //                self.refreshControl.endRefreshing()
        //            }
        //
        //            self.homeTableView.reloadData()
        //        }
    }

    func configureTableView() {
        // ...

        // add pull to refresh
        refreshControl.addTarget(self, action: #selector(reloadTimeline), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        homeTableView.addSubview(refreshControl)

    }

    func dayOfWeekAndHour() {

        // TEST CODE:
//        let year = calendar.component(.year, from: date)
//        let weekOfYear = calendar.component(.weekOfYear, from: date)
//        let weekOfMonth = calendar.component(.weekOfMonth, from: date)
//        let weekdayOrdinal = calendar.component(.weekdayOrdinal, from: date)
//        let weekday = calendar.component(.weekday, from: date) // Sunday is represented by 1
//        let month = calendar.component(.month, from: date)
//        let day = calendar.component(.day, from: date)
//        let hour = calendar.component(.hour, from: date)
//
//        print("XXXXXX")
//        print(year)
//        print("WeekOfYear: \(weekOfYear)")
//        print(weekOfMonth)
//        print("Weekday: \(weekday)") // Sunday is represented by 1
//        print("Month: \(month)")
//        print("Day: \(day)")
//        print("Hour: \(hour)")
//        print("XXXXXX")

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
            // call function to display 9 time-based topics
            appendSevenTopics(lateNightSnackTopic0, meditationTopic0, barTopic0, homeAMTopic0, bedtimeTopic0, journalTopic0, weekendNow0to4Topic0)

        case 5...8:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(meditationTopic0, gymTopic0, runningTopic0, yogaTopic0, breakfastTopic0, homeAMTopic0, weekendNow5to8Topic0)

        case 9..<11:
            print("Weekend, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(gymTopic0, yogaTopic0, runningTopic0, cafeTopic0, breakfastTopic0, brunchTopic0, weekendNow9to11Topic0)

        case 11..<14:
            print("Weekend, Midday")
            appendSevenTopics(lunchTopic0, cafeTopic0, shoppingClothesTopic0, groceryStoreTopic0, gymTopic0, yogaTopic0, weekendNow11to14Topic0)

        case 14...16:
            print("Weekend, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(cafeTopic0, runningTopic0, yogaTopic0, gymTopic0, mindfulnessTopic0, groceryStoreTopic0, weekendNow14to16Topic0)
        case 17...20:
            print("Weekend, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerTopic0, homePMTopic0, bathroomTopic0, kitchenTopic0, groceryStoreTopic0, shoppingClothesTopic0, weekendNow17to20Topic0)
        case 21..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic0, dateTopic0, homePMTopic0, meditationTopic0, bedtimeTopic0, lateNightSnackTopic0, weekendNow21to24Topic0)
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
            appendSevenTopics(meditationTopic0, gymTopic0, journalTopic0, breakfastTopic0, cafeTopic0, commuteAMTopic0, weekdayNow5to8Topic0)

        case 9..<11:
            print("weekdayMTW, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteAMTopic0, workAMTopic0, leadershipAMTopic0, courageTopic0, cafeTopic0, mindfulnessTopic0, weekdayNow9to11Topic0)

        case 11..<14:
            print("weekdayMTW, Midday")
            appendSevenTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, leadershipPMTopic0, courageTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 14...16:
            print("weekdayMTW, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, afternoonSnackTopic0, leadershipPMTopic0, courageTopic0, mindfulnessTopic0, commutePMTopic0, weekdayNow11to14Topic0)

        case 17...20:
            print("Weekday, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(workLateTopic0, commutePMTopic0, gymTopic0, groceryStoreTopic0, dinnerTopic0, dateTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("Weekday, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(barTopic0, dateTopic0, lateNightSnackTopic0, homePMTopic0, bedtimeTopic0, meditationTopic0, weekdayNow21to24Topic0)
        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    func weekdayTF(_ hour: Int) {
        switch hour {
        case 0...4:
            print("weekdayTF, Very Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(bedtimeTopic0, lateNightSnackTopic0, homePMTopic0, meditationTopic0, barTopic0, dateTopic0, weekdayNow0to4Topic0)
        case 5...8:
            print("weekdayTF, Early Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(homeAMTopic0, meditationTopic0, gymTopic0, journalTopic0, breakfastTopic0, commuteAMTopic0, weekdayNow5to8Topic0)
        case 9..<11:
            print("weekdayTF, Late Morning")
            // call function to display 9 time-based topics
            appendSevenTopics(commuteAMTopic0, workAMTopic0, lunchTopic0, leadershipAMTopic0, courageTopic0, mindfulnessTopic0,  weekdayNow9to11Topic0)

        case 11..<14:
            print("weekdayTF, Midday")
            appendSevenTopics(workAMTopic0, lunchTopic0, afternoonSnackTopic0, leadershipPMTopic0, courageTopic0, mindfulnessTopic0, weekdayNow11to14Topic0)

        case 14...16:
            print("weekdayTF, Afternoon")
            // call function to display 9 time-based topics
            appendSevenTopics(workPMTopic0, afternoonSnackTopic0, leadershipPMTopic0, courageTopic0, mindfulnessTopic0, commutePMTopic0, weekdayNow11to14Topic0)

        case 17...20:
            print("weekdayTF, Evening")
            // call function to display 9 time-based topics
            appendSevenTopics(workLateTopic0, commutePMTopic0, gymTopic0, dinnerTopic0, barTopic0, dateTopic0, weekdayNow17to20Topic0)
        case 21..<24:
            print("weekdayTF, Late evening")
            // call function to display 9 time-based topics
            appendSevenTopics(dinnerTopic0, barTopic0, dateTopic0, homePMTopic0, bedtimeTopic0, lateNightSnackTopic0, weekdayNow21to24Topic0)
        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }


    func appendSevenTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic,_ topic4: Topic,_ topic5: Topic, _ topic6Now: Topic) {

        topics = [topic0, topic1, topic2, topic3, topic4, topic5, topic6Now]

        // Set-up the six buttons and six labels for display with topics array
        topic0Button.setTitle("\(topics[0].icon)", for: .normal)
        topic0Label.text = topics[0].title

        topic1Button.setTitle("\(topics[1].icon)", for: .normal)
        topic1Label.text = topics[1].title

        topic2Button.setTitle("\(topics[2].icon)", for: .normal)
        topic2Label.text = topics[2].title

        topic3Button.setTitle("\(topics[3].icon)", for: .normal)
        topic3Label.text = topics[3].title

        //// Added topic4, topic5, topic6, topic7
        topic4Button.setTitle("\(topics[4].icon)", for: .normal)
        topic4Label.text = topics[4].title

        topic5Button.setTitle("\(topics[5].icon)", for: .normal)
        topic5Label.text = topics[5].title

        // set 4 'Now' tips to be displayed in initial table view
        tips = [topics[6].tip[0],
                topics[6].tip[1],
                topics[6].tip[2],
                topics[6].tip[3]]
    }





    // MARK: - IBActions

    @IBAction func topicButtonTapped(_ sender: RoundButton) {
        if let topicNumber = topicButtons.index(of: sender) {
            flipButton(at: topicNumber, withText: topics[topicNumber].icon, on: sender)
            homeTableView.reloadData()
        } else {
            createAlert(title: "ERROR", message: "Could not laod buttons.")
        }
    }

    func refreshTopicButtons() {
        topic0Button.setTitle("\(topics[0].icon)", for: .normal)
        topic1Button.setTitle("\(topics[1].icon)", for: .normal)
        topic2Button.setTitle("\(topics[2].icon)", for: .normal)
        topic3Button.setTitle("\(topics[3].icon)", for: .normal)
        topic4Button.setTitle("\(topics[4].icon)", for: .normal)
        topic5Button.setTitle("\(topics[5].icon)", for: .normal)
    }

    func flipButton(at indexNumber: Int, withText text: String, on button: RoundButton) {

        let selectedButtonIcon = "X"

        if button.currentTitle == text {
            print("Tapped a topic button button")
            refreshTopicButtons()
            button.setTitle("\(selectedButtonIcon)", for: .normal)
//            button.backgroundColor = UIColor.gray
            topicSelected(indexNumber)
        } else {
            print("Tapped 'X' button")
            button.setTitle(text, for: .normal)
//            button.backgroundColor = UIColor.blue
            refreshTopicButtons()
            topicSelected(topicButtons.count)
        }
    }

    func topicSelected(_ index: Int) {
        tips = []

        // Take selected index in topics array and subtract 1 because we start with zero
        var counter = (topics[index].tip.count - 1)

        for item in 0...counter {
            print("counter: \(counter)")
            print("index: \(index)")
            print("item: \(item)")
            tips.append(topics[index].tip[item])
        }
    }

} // End of Home2ViewController

// MARK: - Table View Methods

extension Home2ViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        print("Number of tips in table view: \(tips.count)")
        return tips.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /* In the future, you could create multiple subviews and then use a switch statement to display data for each subview
        https://www.makeschool.com/online-courses/utorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui */

        // Whatever tip is at each row
        let tip = tips[indexPath.row]


        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Home2TableViewCell

        // extend the bottom line
        cell.layoutMargins = UIEdgeInsets.zero

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        // Tell the UITableViewCell who its delegate is, set it in the table view method. Self is the View Controller because we are in the View Controller file. This is equivalent of giving the boss an intern. The View Controller is the intern of the delegate.
//        cell.delegate = self
//        cell.bodyTextView.delegate = self

        // Line seperator (extend to left)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        homeTableView.deselectRow(at: indexPath, animated: true)
        let tip = tips[indexPath.row]

        let app = UIApplication.shared
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Home2TableViewCell
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

extension Home2ViewController: Home2TableViewCellDelegate {

    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sponsorURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sponsorURL)
        present(safariVC, animated: true, completion: nil)
    }

}
