//
//  HobbyViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 1/23/21.
//  Copyright © 2021 Andrew Jenson. All rights reserved.
//

import UIKit
//import Firebase
import SafariServices // to display webview

//Quotes (combine with Life Goals?)
// Row 1 - 3: Single, Relationship, Parenting
// Row 2 - 4: Studying, Startup, Filmmaking, Screenwriting
// Row 3 - 3: Job Search (Career Growth), Confidence (Mental Toughness), Bad Mood (Anxiety, Depression, Loneliness)


// Currently Excluded: Investing, Journal, Meditation

class HobbyViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var bioTextLabel: UILabel!
    @IBOutlet weak var quoteTextLabel: UILabel!

    @IBOutlet weak var mediaTitleLabel: UILabel!

    //Tableview
    @IBOutlet weak var hobbyTableView: UITableView!
    @IBOutlet weak var hobbyTableViewFooter: UIView!
    @IBOutlet weak var hobbyHeaderView: UIView!
    
    @IBOutlet weak var hobbyButton: UIButton!
    @IBOutlet weak var saveButton: EditButton!

    @IBOutlet weak var quoteCardView: CardView!
    @IBOutlet weak var mediaCardView: CardView!

    //Advice Title
    @IBOutlet weak var hobbyTitleLabel: UILabel!

    //Buttons
    @IBOutlet var hobbyTopicButtons: [CircleButton]!

    //row 1
    @IBOutlet weak var hobbyTopic0Button: CircleButton!
    @IBOutlet weak var hobbyTopic1Button: CircleButton!
    @IBOutlet weak var hobbyTopic2Button: CircleButton!
    @IBOutlet weak var hobbyTopic3Button: CircleButton!
    //row 2
    @IBOutlet weak var hobbyTopic4Button: CircleButton!
    @IBOutlet weak var hobbyTopic5Button: CircleButton!
    @IBOutlet weak var hobbyTopic6Button: CircleButton!
    @IBOutlet weak var hobbyTopic7Button: CircleButton!
    //row 3
    @IBOutlet weak var hobbyTopic8Button: CircleButton!
    @IBOutlet weak var hobbyTopic9Button: CircleButton!
    @IBOutlet weak var hobbyTopic10Button: CircleButton!
    @IBOutlet weak var hobbyTopic11Button: CircleButton!

    //Labels (of Buttons)
    @IBOutlet var hobbyTopicLabels: [UILabel]!

    @IBOutlet weak var hobbyTopic0Label: UILabel!
    @IBOutlet weak var hobbyTopic1Label: UILabel!
    @IBOutlet weak var hobbyTopic2Label: UILabel!
    @IBOutlet weak var hobbyTopic3Label: UILabel!

    @IBOutlet weak var hobbyTopic4Label: UILabel!
    @IBOutlet weak var hobbyTopic5Label: UILabel!
    @IBOutlet weak var hobbyTopic6Label: UILabel!
    @IBOutlet weak var hobbyTopic7Label: UILabel!

    @IBOutlet weak var hobbyTopic8Label: UILabel!
    @IBOutlet weak var hobbyTopic9Label: UILabel!
    @IBOutlet weak var hobbyTopic10Label: UILabel!
    @IBOutlet weak var hobbyTopic11Label: UILabel!

    @IBOutlet weak var feedbackYouButton: UIButton!


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

    //Row 1
     var topicArray0: [Topic]!
     var topicArray1: [Topic]!
     var topicArray2: [Topic]!
     var topicArray3: [Topic]!

     var topicsArrays: [Topics] = [] // Array of [array of topics]

     //NOT USED
     var twoDimensionalArray: [Topic] = []

     var topic0ButtonArray: [Topic]!
     var topic1ButtonArray: [Topic]!
     var topic2ButtonArray: [Topic]!
     var topic3ButtonArray: [Topic]!

     var topic4ButtonArray: [Topic]!
     var topic5ButtonArray: [Topic]!
     var topic6ButtonArray: [Topic]!
     var topic7ButtonArray: [Topic]!

     var topicNowButtonArray: [Topic]!

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
        appDelegate.hobbyVC = self

        setupUI()

        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: Notification.Name.NSExtensionHostWillEnterForeground, object: nil)

        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: Notification.Name.NSExtensionHostDidEnterBackground, object: nil)
    }


    @objc func appMovedToBackground() {
        print("App moved to Background!")
    }

    @objc func appMovedToForeground() {
        print("App moved to ForeGround!")
        setupUI()
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

    func refreshUI() {
        print("Refresh ProfileVC")

    }


    // MARK: - Methods

    func setupUI() {

        // place 4 buttons in desired order (excludes Now tips)
        hobbyTopicButtons = [hobbyTopic0Button, hobbyTopic1Button, hobbyTopic2Button, hobbyTopic3Button,]

        hobbyTopicLabels = [hobbyTopic0Label, hobbyTopic1Label, hobbyTopic2Label, hobbyTopic3Label,]

        // set footer
        hobbyTableViewFooter.frame.size.height = 200

        //setupQuote() moved into dayOfWeekAndHour()

        dayOfWeekAndHour()

        hobbyTableViewSetup()
    }


    // MARK: - Refresh Control
    // https://medium.com/anantha-krishnan-k-g/pull-to-refresh-how-to-implement-f915743703f8

    func hobbyTableViewSetup() {

        hobbyTableView.dataSource = self
        hobbyTableView.delegate = self
        // set estimated row height (needed for auto row height size)
        hobbyTableView.rowHeight = UITableView.automaticDimension
        hobbyTableView.estimatedRowHeight = 44
        hobbyTableView.separatorStyle = .none
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
    }


    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {

        let dayOfWeek = calendar.component(.weekday, from: date)
        hour = calendar.component(.hour, from: date)
        let week = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)

        //Display hour for topic title
        displayHourInTopicLabel()

        day(hour)

//        if week % 2 == 0 {
//            print("Week: \(week) is even")
//
//
//        } else {
//            print("Week: \(week) is odd")
//
//        }
//
//        func oddWeek() {
//            print("Odd Week")
//
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sunday1(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                monday1(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesday1(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesday1(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursday1(hour)
//            case 6: // Friday
//                print("today is Friday")
//                friday1(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturday1(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//        }
//
//        func evenWeek() {
//            print("Odd Week")
//
//            switch dayOfWeek {
//            case 1: // Sunday
//                print("today is Sunday")
//                sunday2(hour)
//            case 2: // Monday
//                print("today is a Monday")
//                monday2(hour)
//            case 3: // Tuesday
//                print("today is a Tuesday")
//                tuesday2(hour)
//            case 4: // Wednesday
//                print("today is a Wednesday")
//                wednesday2(hour)
//            case 5: // Thursday
//                print("today is Thursday")
//                thursday2(hour)
//            case 6: // Friday
//                print("today is Friday")
//                friday2(hour)
//            case 7: // Saturday
//                print("today is Saturday")
//                saturday2(hour)
//            default:
//                print("ERROR: error with dayAndHour")
//            }
//        }
//
//        switch weekOfMonth {
//        case 1,3,5:
//            oddWeek()
//
//        default:
//            //evenWeek()
//            evenWeek()
//        }
    }

    //MARK: - DAY

    func day(_ hour: Int) {
        switch hour {

        case 0...24:
            print("Weekend, Very Early Morning")
            print("hour: \(hour)")

            // call function to display 4 time-based topics

            appendFiveTopics(podcastTopics, comedianTopics, startupTopics(), filmTopics(), topicsNow: adviceTopics)


        default:
            print("Weekend,INVALID HOUR!")
        }
    }


    private func sizeFooterToFit() {
        if let footerView = hobbyTableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()

            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame

            hobbyTableView.tableFooterView = footerView
        }
    }

    private func resetTopicButtonOriginalStyle(button: CircleButton) {

        performUIUpdatesOnMain {

//            //row1
//            self.hobbyTopic0Button.imageView?.image = UIImage(named: self.topicsArrays[0].icon)
//            self.hobbyTopic1Button.imageView?.image = UIImage(named: self.topicsArrays[1].icon)
//            self.hobbyTopic2Button.imageView?.image = UIImage(named: self.topicsArrays[2].icon)
//            self.hobbyTopic3Button.imageView?.image = UIImage(named: self.topicsArrays[3].icon)

            //UIButton.setImage
            //row1
            self.hobbyTopic0Button.setImage(UIImage(named: self.topicsArrays[0].icon), for: .normal)
            self.hobbyTopic1Button.setImage(UIImage(named: self.topicsArrays[1].icon), for: .normal)
            self.hobbyTopic2Button.setImage(UIImage(named: self.topicsArrays[2].icon), for: .normal)
            self.hobbyTopic3Button.setImage(UIImage(named: self.topicsArrays[3].icon), for: .normal)


            //row2
//            self.hobbyTopic4Button.imageView?.image = UIImage(named: self.topicsArrays[4].icon)
//            self.hobbyTopic5Button.imageView?.image = UIImage(named: self.topicsArrays[5].icon)
//            self.hobbyTopic6Button.imageView?.image = UIImage(named: self.topicsArrays[6].icon)
//            self.hobbyTopic7Button.imageView?.image = UIImage(named: self.topicsArrays[7].icon)
//            //row3
//            self.hobbyTopic8Button.imageView?.image = UIImage(named: self.topicsArrays[8].icon)
//            self.hobbyTopic9Button.imageView?.image = UIImage(named: self.topicsArrays[9].icon)
//            self.hobbyTopic10Button.imageView?.image = UIImage(named: self.topicsArrays[10].icon)
//            self.hobbyTopic11Button.imageView?.image = UIImage(named: self.topicsArrays[11].icon)


//            let unTappedButtonEdgeInsets = UIEdgeInsets(top: 0.5, left: 0.5 , bottom: 0.5, right: 0.5)
//            //row1
//            self.adviceTopic0Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic1Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic2Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic3Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            //row2
//            self.adviceTopic4Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic5Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic6Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic7Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            //row3
//            self.adviceTopic8Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic9Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic10Button.imageEdgeInsets = unTappedButtonEdgeInsets
//            self.adviceTopic11Button.imageEdgeInsets = unTappedButtonEdgeInsets
        }
    }

    func setupButtonIcons(_ topics: [Topics]) {

        //https://stackoverflow.com/questions/1469474/setting-an-image-for-a-uibutton-in-code
        print("topics: \(topics)")

        //row 1
        self.hobbyTopic0Button.setImage(UIImage(named: topics[0].icon) , for: UIControl.State.normal)
        self.hobbyTopic1Button.setImage(UIImage(named: topics[1].icon) , for: UIControl.State.normal)
        self.hobbyTopic2Button.setImage(UIImage(named: topics[2].icon) , for: UIControl.State.normal)
        self.hobbyTopic3Button.setImage(UIImage(named: topics[3].icon) , for: UIControl.State.normal)

    }



    func appendFiveTopics(_ topics0: Topics, _ topics1: Topics, _ topics2: Topics, _ topics3: Topics, topicsNow: Topics) {

        topicsArrays = [topics0, topics1, topics2, topics3,
                        topicsNow]

        setupButtonIcons(topicsArrays)

        //setup Labels text
            //row1
            self.hobbyTopic0Label.text = topics0.title
            self.hobbyTopic1Label.text = topics1.title
            self.hobbyTopic2Label.text = topics2.title
            self.hobbyTopic3Label.text = topics3.title
            //row2
//            self.hobbyTopic4Label.text = topics4.title
//            self.hobbyTopic5Label.text = topics5.title
//            self.hobbyTopic6Label.text = topics6.title
//            self.hobbyTopic7Label.text = topics7.title
//            //row3
//            self.hobbyTopic8Label.text = topics8.title
//            self.hobbyTopic9Label.text = topics9.title
//            self.hobbyTopic10Label.text = topics10.title
//            self.hobbyTopic11Label.text = topics11.title

       //set array that displays in initial tableview
        twoDimensionalArray = topicsNow.topics
    }



    func scrollToTopTableView() {
        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.hobbyTableView.setContentOffset(.zero, animated: false)
        }
    }

    // MARK: - IBActions

    //https://www.hackingwithswift.com/example-code/uikit/how-to-generate-haptic-feedback-with-uifeedbackgenerator
    @objc func tapped() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }

    //TODO: UPDATE BUTTON
    @IBAction func goToNowTabTapped(_ sender: Any) {
        tapped()
        scrollToTopTableView()
        tabBarController?.selectedIndex = 0
    }


    @IBAction func returnToTopTapped(_ sender: Any) {
        tapped()
        scrollToTopTableView()
    }


    @IBAction func feedbackYouButtonTapped(_ sender: Any) {
        tapped()
        goToSourceURL(url: Constants.Website.rizeFormURL)
    }


    //    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.hobbyTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }

    //Link IBAction hobbyTopicButtonTapped to all topic buttons
    @IBAction func hobbyTopicButtonTapped(_ sender: CircleButton) {

        tapped()

        //IBAction linked to all RoundCircle Buttons
        if let topicNumber = hobbyTopicButtons.firstIndex(of: sender) {

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
        //row1
        resetTopicButtonOriginalStyle(button: hobbyTopic0Button)
        resetTopicButtonOriginalStyle(button: hobbyTopic1Button)
        resetTopicButtonOriginalStyle(button: hobbyTopic2Button)
        resetTopicButtonOriginalStyle(button: hobbyTopic3Button)
        //row2
//        resetTopicButtonOriginalStyle(button: hobbyTopic4Button)
//        resetTopicButtonOriginalStyle(button: hobbyTopic5Button)
//        resetTopicButtonOriginalStyle(button: hobbyTopic6Button)
//        resetTopicButtonOriginalStyle(button: hobbyTopic7Button)
//        //row3
//        resetTopicButtonOriginalStyle(button: hobbyTopic8Button)
//        resetTopicButtonOriginalStyle(button: hobbyTopic9Button)
//        resetTopicButtonOriginalStyle(button: hobbyTopic10Button)
//        resetTopicButtonOriginalStyle(button: hobbyTopic11Button)

        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped")

            // Selected button previously tapped, return to Now Tips
            // Check if this button has been tapped just prior
            twoDimensionalArray = []

            //NOW Topics are located in the 4th position of topicsArrays
            twoDimensionalArray = topicsArrays[4].topics

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
            self.hobbyTableView.reloadData()
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


    @IBAction func sourceButtonTapped(_ sender: Any) {
        print("go to source")

    }


} // End of Home2ViewController

// MARK: - Table View Methods

extension HobbyViewController: UITableViewDataSource, UITableViewDelegate {

    //SECTION HEADER
    //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-section-header-to-a-table-view

    func titleColor(number: Int) -> UIColor {
        switch number {
        case 0:
            return UIColor.purple
        case 1:
            return UIColor.purple
        case 2:
            return UIColor.purple
        default:
            return UIColor.purple
        }
    }

    //SECTION

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 20))
        headerView.backgroundColor = Constants.RizeBackgroundColor.rizeAppUIColor

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
        let tip = twoDimensionalArray[indexPath.section].tip[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HobbyTableViewCell

        // cell's bottom line UI
        cell.layoutMargins = UIEdgeInsets.zero

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        cell.headerLabel.textColor = titleColor(number: indexPath.section)

        //Tell UITableViewCell who it's delegate is
        //Give the boss the intern
        cell.delegate = self  //self is the ProfileVC

        return cell
    }


}

// MARK: - Table View Cell Methods

extension HobbyViewController: HobbyTableViewCellDelegate {


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

        let activityVC = UIActivityViewController(activityItems: ["Tip: \(header)\n\n","\(title)\n\n", "\(body)\n\n","For more tips, download 'Rize: Smarter Decisions Now' on Apple's App Store", rizeLogo as Any], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view

        self.present(activityVC, animated: true, completion: nil)
    }
}

