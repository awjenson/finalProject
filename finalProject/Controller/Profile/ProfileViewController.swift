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

    @IBOutlet weak var adviceTopic0Button: CircleButton!
    @IBOutlet weak var adviceTopic1Button: CircleButton!
    @IBOutlet weak var adviceTopic2Button: CircleButton!
    @IBOutlet weak var adviceTopic3Button: CircleButton!

    @IBOutlet weak var adviceTopic4Button: CircleButton!
    @IBOutlet weak var adviceTopic5Button: CircleButton!
    @IBOutlet weak var adviceTopic6Button: CircleButton!
    @IBOutlet weak var adviceTopic7Button: CircleButton!

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
        appDelegate.adviceVC = self
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)

    }



    var selectedTopicTitle = ""

    func refreshUI() {
        print("Refresh ProfileVC")

    }











    // MARK: - Methods

    func setupUI() {


        //        self.view.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
//        self.view.backgroundColor = UIColor.init(hexString: "2283F6", withAlpha: 1)
        //        self.view.backgroundColor = UIColor.red




        // place 8 buttons in desired order (excludes Now tips)
        adviceTopicButtons = [adviceTopic0Button, adviceTopic1Button, adviceTopic2Button, adviceTopic3Button,
                        adviceTopic4Button, adviceTopic5Button, adviceTopic6Button, adviceTopic7Button]

        adviceTopicLabels = [adviceTopic0Label, adviceTopic1Label, adviceTopic2Label, adviceTopic3Label,
                       adviceTopic4Label, adviceTopic5Label, adviceTopic6Label, adviceTopic7Label]

        // set footer
        profileTableViewFooter.frame.size.height = self.view.frame.size.width + 20
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

        let hourString = formatter.string(from: Date()) // "12 AM"
        adviceTitleLabel.text = "\(hourString) Advice"
    }



    // MARK: - Time-based Functions

    func dayOfWeekAndHour() {

        let dayOfWeek = calendar.component(.weekday, from: date)
        hour = calendar.component(.hour, from: date)
        let week = calendar.component(.weekOfYear, from: date)
        let weekOfMonth = calendar.component(.weekOfMonth, from: date)

        //Display hour for topic title
        displayHourInTopicLabel()

        if week % 2 == 0 {
            print("Week: \(week) is even")


        } else {
            print("Week: \(week) is odd")

        }

        func oddWeek() {
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
        case 1,3,5:
            oddWeek()

        default:
            //evenWeek()
            oddWeek()
        }


    }

    //MARK: - WEEK 1

    func sunday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)

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
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)



        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)


        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Tuesday (3)

    func tuesday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Wednesday (4)

    func wednesday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)

        default:
            print("Weekday,INVALID HOUR!")
        }
    }

    // Thursday (5)

    func thursday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)

        default:
            print("weekdayTF,INVALID HOUR!")
        }
    }

    //Friday (6)

    func friday1(_ hour: Int) {
        switch hour {

        case 0...4:
            print("Weekend, Very Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)

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
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingBedtimeTopic0, sideHustleTopic0, studyTopic0,
                             bathroomPMTopic0, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 5...10:
            print("Weekend, Early Morning")
            // call function to display 9 time-based topics
            appendNineTopics(motivateAMTopic0, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             networkingTopic1, meditationTopic0, journalTopic0,
                             adviceTopic0)

        case 11...14:
            appendNineTopics(motivateDayTopic2, relationshipAMTopic0, parentingAMTopic0, sideHustleTopic0, studyTopic0,
                             bathroomTopic0, gymTopic5, meditationTopic1,
                             adviceTopic0)

        case 15...19:
            print("Weekend, Early Evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipPMTopic0, parentingPMTopic0, sideHustleTopic1, studyTopic0,
                             groceryStoreTopic1, gymTopic1, homePMTopic0,
                             adviceTopic0)

        case 20..<24:
            print("Weekend, Late evening")
            // call function to display 9 time-based topics
            appendNineTopics(motivatePMTopic0, relationshipBedTopic0, parentingBedtimeTopic0, sideHustleTopic1, studyTopic0,
                             meditationTopic0, journalTopic0, cantSleepTopic1,
                             adviceTopic0)


        default:
            print("Weekend,INVALID HOUR!")
        }
    }



    //MARK: - WEEK 2



























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

            self.adviceTopic0Button.imageView?.image = UIImage(named: self.topics[0].icon)
            self.adviceTopic1Button.imageView?.image = UIImage(named: self.topics[1].icon)
            self.adviceTopic2Button.imageView?.image = UIImage(named: self.topics[2].icon)
            self.adviceTopic3Button.imageView?.image = UIImage(named: self.topics[3].icon)
            self.adviceTopic4Button.imageView?.image = UIImage(named: self.topics[4].icon)
            self.adviceTopic5Button.imageView?.image = UIImage(named: self.topics[5].icon)
            self.adviceTopic6Button.imageView?.image = UIImage(named: self.topics[6].icon)
            self.adviceTopic7Button.imageView?.image = UIImage(named: self.topics[7].icon)



            let unTappedButtonEdgeInsets = UIEdgeInsets(top: 15, left: 15 , bottom: 15, right: 15)

            self.adviceTopic0Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic1Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic2Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic3Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic4Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic5Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic6Button.imageEdgeInsets = unTappedButtonEdgeInsets
            self.adviceTopic7Button.imageEdgeInsets = unTappedButtonEdgeInsets
        }
    }

    func setupButtonIcons(_ topics: [Topic]) {

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

    }



    func appendNineTopics(_ topic0: Topic, _ topic1: Topic, _ topic2: Topic, _ topic3: Topic, _ topic4: Topic, _ topic5: Topic, _ topic6: Topic, _ topic7: Topic, _ topic8Now: Topic) {

        topics = [topic0, topic1, topic2, topic3,
                  topic4, topic5, topic6, topic7,
                  topic8Now]

        setupButtonIcons(topics)

        self.adviceTopic0Label.text = topic0.title
        self.adviceTopic1Label.text = topic1.title
        self.adviceTopic2Label.text = topic2.title
        self.adviceTopic3Label.text = topic3.title
        self.adviceTopic4Label.text = topic4.title
        self.adviceTopic5Label.text = topic5.title
        self.adviceTopic6Label.text = topic6.title
        self.adviceTopic7Label.text = topic7.title

        // set 4 'Now' tips to be displayed in initial table view
        appendAdviceTips()


    }

    func appendAdviceTips() {
        // for display in table view at launch
        //
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
            self.profileTableView.setContentOffset(.zero, animated: false)
        }
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
        if let topicNumber = adviceTopicButtons.index(of: sender) {

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
        resetTopicButtonOriginalStyle(button: adviceTopic0Button)
        resetTopicButtonOriginalStyle(button: adviceTopic1Button)
        resetTopicButtonOriginalStyle(button: adviceTopic2Button)
        resetTopicButtonOriginalStyle(button: adviceTopic3Button)
        resetTopicButtonOriginalStyle(button: adviceTopic4Button)
        resetTopicButtonOriginalStyle(button: adviceTopic5Button)
        resetTopicButtonOriginalStyle(button: adviceTopic6Button)
        resetTopicButtonOriginalStyle(button: adviceTopic7Button)


        // Identify what button was tapped

        if currentIndex == indexNumber {

            print("A - Previously Tapped")

            // Selected button previously tapped, return to Now Tips
            // Check if this button has been tapped just prior
            appendAdviceTips()

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
                button.imageView?.image = UIImage(named: "icons8-cancel")
                // button title


                //                button.setTitleColor(.white, for: .normal)
                //                button.backgroundColor = NowConstants.YvonneColor.defaultBlue

                //Display selected Topic Title
                let originalTitleText = self.topics[indexNumber].title
                let replacedText = originalTitleText.replacingOccurrences(of: "\n", with: "").uppercased()

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

        // Take selected index in topics array and subtract 1 because we start with zero
        let counter = (topics[index].tip.count - 1)

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

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AdviceTableViewCell

        // cell's bottom line UI
        cell.layoutMargins = UIEdgeInsets.zero

        cell.adviceTipNumberLabel.text = "\(indexPath.row + 1)"

        // configure cell in UITableViewCell file
        cell.configureCell(tip: tip)

        //Tell UITableViewCell who it's delegate is
        //Give the boss the intern
        cell.delegate = self  //self is the ProfileVC

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        profileTableView.deselectRow(at: indexPath, animated: true)

//        let tip = tips[indexPath.row]
//
//        let app = UIApplication.shared
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AdviceTableViewCell
//        if let url = tip.sourceURL {
//
//            // print: true or false
//            print("verifyURL in 'Now' VC: \(verifyUrl(urlString: url))")
//
//            if verifyUrl(urlString: url) == true {
//                app.open(URL(string:url)!)
//            } else {
//                performUIUpdatesOnMain {
//                    self.createAlert(title: "Could not open URL", message: "Check your Internet connection and try again.")
//                }
//            }
//        }
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
}
