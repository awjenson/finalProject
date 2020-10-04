//
//  Profile3ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// Add example goal/passion text in grey before user types in to help them 

import UIKit
//import Firebase
import SafariServices // to display webview

//Quotes (combine with Life Goals?)
// Row 1 - 3: Single, Relationship, Parenting
// Row 2 - 4: Studying, Startup, Filmmaking, Screenwriting
// Row 3 - 3: Job Search (Career Growth), Confidence (Mental Toughness), Bad Mood (Anxiety, Depression, Loneliness)

// Currently Excluded: Investing, Journal, Meditation

class ProfileViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var bioTextLabel: UILabel!
    @IBOutlet weak var quoteTextLabel: UILabel!

    @IBOutlet weak var mediaTitleLabel: UILabel!





    //Tableview
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileTableViewFooter: UIView!

    @IBOutlet weak var profileHeaderView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var saveButton: EditButton!

    @IBOutlet weak var quoteCardView: CardView!
    @IBOutlet weak var mediaCardView: CardView!

    //Advice Title
    @IBOutlet weak var adviceTitleLabel: UILabel!

    //Buttons
    @IBOutlet var adviceTopicButtons: [CircleButton]!

    //row 1
    @IBOutlet weak var adviceTopic0Button: CircleButton!
    @IBOutlet weak var adviceTopic1Button: CircleButton!
    @IBOutlet weak var adviceTopic2Button: CircleButton!
    @IBOutlet weak var adviceTopic3Button: CircleButton!
    //row 2
    @IBOutlet weak var adviceTopic4Button: CircleButton!
    @IBOutlet weak var adviceTopic5Button: CircleButton!
    @IBOutlet weak var adviceTopic6Button: CircleButton!
    @IBOutlet weak var adviceTopic7Button: CircleButton!
    //row 3
    @IBOutlet weak var adviceTopic8Button: CircleButton!
    @IBOutlet weak var adviceTopic9Button: CircleButton!
    @IBOutlet weak var adviceTopic10Button: CircleButton!
    @IBOutlet weak var adviceTopic11Button: CircleButton!

    //Labels (of Buttons)
    @IBOutlet var adviceTopicLabels: [UILabel]!

    @IBOutlet weak var adviceTopic0Label: UILabel!
    @IBOutlet weak var adviceTopic1Label: UILabel!
    @IBOutlet weak var adviceTopic2Label: UILabel!
    @IBOutlet weak var adviceTopic3Label: UILabel!

    @IBOutlet weak var adviceTopic4Label: UILabel!
    @IBOutlet weak var adviceTopic5Label: UILabel!
    @IBOutlet weak var adviceTopic6Label: UILabel!
    @IBOutlet weak var adviceTopic7Label: UILabel!

    @IBOutlet weak var adviceTopic8Label: UILabel!
    @IBOutlet weak var adviceTopic9Label: UILabel!
    @IBOutlet weak var adviceTopic10Label: UILabel!
    @IBOutlet weak var adviceTopic11Label: UILabel!

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
     //Row 2
     var topicArray4: [Topic]!
     var topicArray5: [Topic]!
     var topicArray6: [Topic]!
     var topicArray7: [Topic]!

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
        appDelegate.adviceVC = self

        setupUI()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)

    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    


    var selectedTopicTitle = ""

    func refreshUI() {
        print("Refresh ProfileVC")

    }


    // MARK: - Methods

    func setupUI() {

        // place 12 buttons in desired order (excludes Now tips)
        adviceTopicButtons = [adviceTopic0Button, adviceTopic1Button, adviceTopic2Button, adviceTopic3Button,
                              adviceTopic4Button, adviceTopic5Button, adviceTopic6Button, adviceTopic7Button, adviceTopic8Button, adviceTopic9Button, adviceTopic10Button, adviceTopic11Button]

        adviceTopicLabels = [adviceTopic0Label, adviceTopic1Label, adviceTopic2Label, adviceTopic3Label,
                       adviceTopic4Label, adviceTopic5Label, adviceTopic6Label, adviceTopic7Label, adviceTopic8Label, adviceTopic9Label, adviceTopic10Label, adviceTopic11Label,]

        // set footer
        profileTableViewFooter.frame.size.height = 250

        //setupQuote() moved into dayOfWeekAndHour()

        dayOfWeekAndHour()

        profileTableViewSetup()
    }


    // MARK: - Refresh Control
    // https://medium.com/anantha-krishnan-k-g/pull-to-refresh-how-to-implement-f915743703f8

    func profileTableViewSetup() {

        profileTableView.dataSource = self
        profileTableView.delegate = self
        // set estimated row height (needed for auto row height size)
        profileTableView.rowHeight = UITableView.automaticDimension
        profileTableView.estimatedRowHeight = 44
        profileTableView.separatorStyle = .none
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

        case 0...4:
            print("Weekend, Very Early Morning")
            print("hour: \(hour)")
            // call function to display 9 time-based topics
//            append13Topics(personalTopic, adviceTopic, singlePMTopic, relationshipBedTopic, jobSearchTopic, wealthTopic, friendsTopic, parentingBedtimeTopic,
//                             studyPMTopic, stressedPMTopic, depressedPMTopic, madPMTopic,
//                             motivateAMTopic)

            appendNineTopics(adviceTopics, personalTopics, wealthTopics, sideHustle(), studyCareerNight(), relationshipNight(), familyParentNight(), friendTopics,

                anxiousPMTopics, stressedPMTopics, depressedPMTopics, madPMTopics, topicsNow: motivateAMTopics)

        case 5...9:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
//            append13Topics(personalTopic, adviceTopic, singleAMTopic, relationshipAMTopic, jobSearchTopic, wealthTopic, friendsTopic, parentingAMTopic,
//                             studyTopic, stressedAMTopic, depressedAMTopic, madAMTopic,
//                             motivateAMTopic)

            appendNineTopics(adviceTopics, personalTopics, wealthTopics, sideHustle(), studyCareerAM(), relationshipAM(), familyParentAM(), friendTopics,

                             anxiousAMTopics, stressedAMTopics, depressedAMTopics, madAMTopics, topicsNow: motivateAMTopics)

        case 10...14:
//            append13Topics(personalTopic, adviceTopic, singleDayTopic, relationshipDayTopic, jobSearchTopic, wealthTopic, friendsTopic, parentingDayTopic,
//                             studyDayTopic, stressedDayTopic, depressedDayTopic, madDayTopic,
//                             motivateDayTopic)

            appendNineTopics(adviceTopics, personalTopics, wealthTopics, sideHustle(), studyCareerDay(), relationshipDay(), familyParentDay(), friendTopics,
                             anxiousDayTopics, stressedDayTopics, depressedDayTopics, madDayTopics, topicsNow: motivateDayTopics)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
//            append13Topics(personalTopic, adviceTopic, singlePMTopic, relationshipPMTopic, jobSearchTopic, wealthTopic, friendsTopic, parentingPMTopic,
//                             studyTopic, stressedDayTopic, depressedDayTopic, madDayTopic, motivateAfterTopic)

            appendNineTopics(adviceTopics, personalTopics, wealthTopics, sideHustle(), studyCareerPM(),
                             relationshipPM(), familyParentPM(), friendTopics,
                             anxiousDayTopics, stressedDayTopics, depressedDayTopics, madDayTopics, topicsNow: motivateAfterTopics)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
//            append13Topics(personalTopic, adviceTopic, singlePMTopic, relationshipBedTopic, jobSearchTopic, wealthTopic, friendsTopic, parentingBedtimeTopic,
//                             studyPMTopic, stressedPMTopic, depressedPMTopic, madPMTopic,
//                             motivatePMTopic)

            appendNineTopics(adviceTopics, personalTopics, wealthTopics, sideHustle(), studyCareerNight(), relationshipNight(), familyParentNight(), friendTopics,
                             anxiousPMTopics, stressedPMTopics, depressedPMTopics, madPMTopics, topicsNow: motivatePMTopics)

        default:
            print("Weekend,INVALID HOUR!")
        }
    }


    private func sizeFooterToFit() {
        if let footerView = profileTableView.tableFooterView {
            footerView.setNeedsLayout()
            footerView.layoutIfNeeded()

            let height = footerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height
            var frame = footerView.frame
            frame.size.height = height
            footerView.frame = frame

            profileTableView.tableFooterView = footerView
        }
    }

    private func resetTopicButtonOriginalStyle(button: CircleButton) {

        performUIUpdatesOnMain {
            // reset to original color display
            //            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
            //            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
            //            button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)

            //row1
            self.adviceTopic0Button.imageView?.image = UIImage(named: self.topicsArrays[0].icon)
            self.adviceTopic1Button.imageView?.image = UIImage(named: self.topicsArrays[1].icon)
            self.adviceTopic2Button.imageView?.image = UIImage(named: self.topicsArrays[2].icon)
            self.adviceTopic3Button.imageView?.image = UIImage(named: self.topicsArrays[3].icon)
            //row2
            self.adviceTopic4Button.imageView?.image = UIImage(named: self.topicsArrays[4].icon)
            self.adviceTopic5Button.imageView?.image = UIImage(named: self.topicsArrays[5].icon)
            self.adviceTopic6Button.imageView?.image = UIImage(named: self.topicsArrays[6].icon)
            self.adviceTopic7Button.imageView?.image = UIImage(named: self.topicsArrays[7].icon)
            //row3
            self.adviceTopic8Button.imageView?.image = UIImage(named: self.topics[8].icon)
            self.adviceTopic9Button.imageView?.image = UIImage(named: self.topics[9].icon)
            self.adviceTopic10Button.imageView?.image = UIImage(named: self.topics[10].icon)
            self.adviceTopic11Button.imageView?.image = UIImage(named: self.topics[11].icon)



            let unTappedButtonEdgeInsets = UIEdgeInsets(top: 14, left: 14, bottom: 14, right: 14)
            //row1
            self.adviceTopic0Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic1Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic2Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic3Button.imageEdgeInsets = unTappedButtonEdgeInsets
            //row2
            self.adviceTopic4Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic5Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic6Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic7Button.imageEdgeInsets = unTappedButtonEdgeInsets
            //row3
            self.adviceTopic8Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic9Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic10Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic11Button.imageEdgeInsets = unTappedButtonEdgeInsets
        }
    }

    func setupButtonIcons(_ topics: [Topics]) {

        //https://stackoverflow.com/questions/1469474/setting-an-image-for-a-uibutton-in-code
        print("topics: \(topics)")

        //row 1
        self.adviceTopic0Button.setImage(UIImage(named: topics[0].icon) , for: UIControl.State.normal)
        self.adviceTopic1Button.setImage(UIImage(named: topics[1].icon) , for: UIControl.State.normal)
        self.adviceTopic2Button.setImage(UIImage(named: topics[2].icon) , for: UIControl.State.normal)
        self.adviceTopic3Button.setImage(UIImage(named: topics[3].icon) , for: UIControl.State.normal)
        //row2
        self.adviceTopic4Button.setImage(UIImage(named: topics[4].icon) , for: UIControl.State.normal)
        self.adviceTopic5Button.setImage(UIImage(named: topics[5].icon) , for: UIControl.State.normal)
        self.adviceTopic6Button.setImage(UIImage(named: topics[6].icon) , for: UIControl.State.normal)
        self.adviceTopic7Button.setImage(UIImage(named: topics[7].icon) , for: UIControl.State.normal)

        //row3
        self.adviceTopic8Button.setImage(UIImage(named: topics[8].icon) , for: UIControl.State.normal)
        self.adviceTopic9Button.setImage(UIImage(named: topics[9].icon) , for: UIControl.State.normal)
        self.adviceTopic10Button.setImage(UIImage(named: topics[10].icon) , for: UIControl.State.normal)
        self.adviceTopic11Button.setImage(UIImage(named: topics[11].icon) , for: UIControl.State.normal)
    }



//    func append13Topics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic, _ topic4: Topic, _ topic5: Topic, _ topic6: Topic, _ topic7: Topic, _ topic8: Topic, _ topic9: Topic, _ topic10: Topic, _ topic11: Topic, _ topic12Now: Topic) {
//
//        topics = [topic0, topic1, topic2, topic3,
//                  topic4, topic5, topic6, topic7,
//                  topic8, topic9, topic10, topic11,
//                  topic12Now]
//
//        setupButtonIcons(topics)
//        //row1
//        self.adviceTopic0Label.text = topic0.title
//        self.adviceTopic1Label.text = topic1.title
//        self.adviceTopic2Label.text = topic2.title
//        self.adviceTopic3Label.text = topic3.title
//        //row2
//        self.adviceTopic4Label.text = topic4.title
//        self.adviceTopic5Label.text = topic5.title
//        self.adviceTopic6Label.text = topic6.title
//        self.adviceTopic7Label.text = topic7.title
//        //row3
//        self.adviceTopic8Label.text = topic8.title
//        self.adviceTopic9Label.text = topic9.title
//        self.adviceTopic10Label.text = topic10.title
//        self.adviceTopic11Label.text = topic11.title
//
//        // set 4 'Now' tips to be displayed in initial table view
//        appendAdviceTips()
//    }

//    func appendAdviceTips() {
//        // for display in table view at launch
//        //12th item in array (topic12Now)
//        tips = [topics[12].tip[0],
//                topics[12].tip[1],
//                topics[12].tip[2],
//                topics[12].tip[3]]
//
//        print("tips array count: \(tips.count)")
//    }

    func appendNineTopics(_ topics0: Topics, _ topics1: Topics, _ topics2: Topics, _ topics3: Topics, _ topics4: Topics, _ topics5: Topics, _ topics6: Topics, _ topics7: Topics, _ topics8: Topics, _ topics9: Topics, _ topics10: Topics, _ topics11: Topics, topicsNow: Topics) {

        topicsArrays = [topics0, topics1, topics2, topics3,
                        topics4, topics5, topics6, topics7,
                        topics8, topics9, topics10, topics11,
                        topicsNow]

        setupButtonIcons(topicsArrays)

            //row1
            self.adviceTopic0Label.text = topics0.title
            self.adviceTopic1Label.text = topics1.title
            self.adviceTopic2Label.text = topics2.title
            self.adviceTopic3Label.text = topics3.title
            //row2
            self.adviceTopic4Label.text = topics4.title
            self.adviceTopic5Label.text = topics5.title
            self.adviceTopic6Label.text = topics6.title
            self.adviceTopic7Label.text = topics7.title
            //row3
            self.adviceTopic8Label.text = topics8.title
            self.adviceTopic9Label.text = topics9.title
            self.adviceTopic10Label.text = topics10.title
            self.adviceTopic11Label.text = topics11.title

       //set array that displays in initial tableview
        twoDimensionalArray = topicsNow.topics
    }



    func scrollToTopTableView() {
        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.profileTableView.setContentOffset(.zero, animated: false)
        }
    }

    // MARK: - IBActions

    @IBAction func goToNowTabTapped(_ sender: Any) {
        scrollToTopTableView()
        tabBarController?.selectedIndex = 0
    }


    @IBAction func returnToTopTapped(_ sender: Any) {
        scrollToTopTableView()
    }


    @IBAction func feedbackYouButtonTapped(_ sender: Any) {
        goToSourceURL(url: Constants.Webiste.rizeFormURL)
    }


    //    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.tips.count-1, section: 0)
            self.profileTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }


    @IBAction func adviceTopicButtonTapped(_ sender: CircleButton) {
        //IBAction linked to all RoundCircle Buttons
        if let topicNumber = adviceTopicButtons.firstIndex(of: sender) {

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
        resetTopicButtonOriginalStyle(button: adviceTopic0Button)
        resetTopicButtonOriginalStyle(button: adviceTopic1Button)
        resetTopicButtonOriginalStyle(button: adviceTopic2Button)
        resetTopicButtonOriginalStyle(button: adviceTopic3Button)
        //row2
        resetTopicButtonOriginalStyle(button: adviceTopic4Button)
        resetTopicButtonOriginalStyle(button: adviceTopic5Button)
        resetTopicButtonOriginalStyle(button: adviceTopic6Button)
        resetTopicButtonOriginalStyle(button: adviceTopic7Button)
        //row3
        resetTopicButtonOriginalStyle(button: adviceTopic8Button)
        resetTopicButtonOriginalStyle(button: adviceTopic9Button)
        resetTopicButtonOriginalStyle(button: adviceTopic10Button)
        resetTopicButtonOriginalStyle(button: adviceTopic11Button)

        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped")

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

            print("Print:")
            print(topicsArrays)
            print(currentIndex)
            twoDimensionalArray = topicsArrays[indexNumber].topics

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
            self.profileTableView.reloadData()
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

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {

    //SECTION HEADER
    //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-section-header-to-a-table-view

    func titleColor(number: Int) -> UIColor {
        switch number {
        case 0:
            return UIColor.flatRed()
        case 1:
            return UIColor.blue
        case 2:
            return UIColor.flatMint()
        case 3:
            return UIColor.flatPlum()
        case 4:
            return UIColor.flatTeal()
        case 5:
            return UIColor.flatMaroon()
        default:
            return UIColor.black
        }
    }

    //SECTION

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

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
        let tip = twoDimensionalArray[indexPath.section].tip[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AdviceTableViewCell

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

extension ProfileViewController: AdviceTableViewCellDelegate {

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
