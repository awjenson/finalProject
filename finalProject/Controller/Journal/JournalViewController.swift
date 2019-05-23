//
//  JournalViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

// Mind Gym
// Goal is to inspire and help some become a better person for themselves, family, and community
// Like a daily exercise class where your trainer tells you what to do

// More: Confidence, Character, Integrity, Personality, Joy/Gratitude

// Less:

// Wants fun graphics/light hearted graphics

import UIKit
//import Firebase
//import GrowingTextView
//import SVProgressHUD
import ChameleonFramework
import SafariServices // to display webview

class JournalViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var journalTableView: UITableView!

    // Table View Header View
    @IBOutlet weak var topView: UIView!

    // Quote
    @IBOutlet weak var quoteView: UIView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!

    // moodButtions OutletCollection only used for flipping UI when buttons tapped
    @IBOutlet var headerButtons: [RoundCorneredButton]!

    // Created individual buttons because Outlet Collection did not work
    @IBOutlet weak var header0Button: RoundCorneredButton!
    @IBOutlet weak var header1Button: RoundCorneredButton!
    @IBOutlet weak var header2Button: RoundCorneredButton!
    @IBOutlet weak var header3Button: RoundCorneredButton!
    // 2nd row
    @IBOutlet weak var header4Button: RoundCorneredButton!
    @IBOutlet weak var header5Button: RoundCorneredButton!
    @IBOutlet weak var header6Button: RoundCorneredButton!
    @IBOutlet weak var header7Button: RoundCorneredButton!

    // 3rd row
    @IBOutlet weak var header8Button: RoundCorneredButton!
    @IBOutlet weak var header9Button: RoundCorneredButton!
    @IBOutlet weak var header10Button: RoundCorneredButton!
    @IBOutlet weak var header11Button: RoundCorneredButton!



    @IBOutlet weak var returnToTopButton: RoundCorneredButton!
    @IBOutlet weak var footerView: UIView!


    // MARK: - Properties

    // pull to refresh tableView
    let refreshControl = UIRefreshControl()

    //NEW

    var headers: [Header] = [] // array of headers
    var hints: [Hint] = []

    var selectedImage: String?

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    var currentIndex:Int = -1 //initial integer since UIButton.index start at 0



    // initial setup
    var messageSentToday = false

//    var ref: DatabaseReference!

    // Time and Date
    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    var displayMoodButtonView = true
    var selectedMood = ""

    var expandingCellHeight: CGFloat = 200
    let expandingIndexRow = 0

    // Card Color UI
    var topicColor: UIColor?
    var cellHeaderColor: [UIColor] = []

    // MARK: - Lifecycle Methods


//    override func viewDidLayoutSubviews() {
//        // Code to adjust size of tableviewHeader
//        // Source: https://useyourloaf.com/blog/variable-height-table-view-header/
//        super.viewDidLayoutSubviews()
//        guard let headerView = journalTableView.tableHeaderView else {
//            return
//        }
//        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
//        if headerView.frame.size.height != size.height {
//            headerView.frame.size.height = size.height
//            journalTableView.tableHeaderView = headerView
//            journalTableView.layoutIfNeeded()
//        }
//    }

    override func viewWillAppear(_ animated: Bool) {


    }



    override func viewDidLoad() {
        super.viewDidLoad()

//        if internetConnected() {
////            retrieveMessages()
//        } else {
//            performUIUpdatesOnMain {
//                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
//            }
//        }
        setupUI()

        footerView.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)
    }



    // MARK: - Methods

    func setupUI() {

        let selectedGradientColor = UIColor(gradientStyle:UIGradientStyle.leftToRight, withFrame: view.frame, andColors:[UIColor.flatMint(), UIColor.flatMintColorDark(), UIColor.flatMintColorDark(), UIColor.flatMintColorDark(),UIColor.flatMintColorDark()])
        self.view.backgroundColor = selectedGradientColor
        self.footerView.backgroundColor = selectedGradientColor

        // place buttons in desired order (excludes FamousPerson hints)
        headerButtons = [header0Button, header1Button, header2Button, header3Button,
                         header4Button, header5Button, header6Button, header7Button,
                         header8Button, header9Button]


        // determines which buttons headers and hints are displayed
        dayOfWeekAndHour()

        // set footer


        journalTableViewSetup()

    }

    func journalTableViewSetup() {
        journalTableView.dataSource = self
        journalTableView.delegate = self
        journalTableView.rowHeight = UITableView.automaticDimension
        journalTableView.estimatedRowHeight = 44
        journalTableView.separatorStyle = .none

        self.setupRefreshControl()
    }

    // MARK: - Refresh Control Methods

    func setupRefreshControl() {
        // add pull to refresh
        refreshControl.addTarget(self, action: #selector(reloadQuote), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        journalTableView.addSubview(refreshControl)
    }

    // Call this inside UIButton to scroll to top
    func scrollToTop(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.hints.count-1, section: 0)
            self.journalTableView.scrollToRow(at: indexPath, at: .top, animated: true)
        }
    }



    func setupButtonsQuoteImage() {

//        if let imageToLoad = selectedImage {
//            imageView.image  = UIImage(named: imageToLoad)
//        }

        // Set initial quote
        quoteLabel.text = headers[12].quote.quote
        authorLabel.text = headers[12].quote.source
    }


    @objc func reloadQuote() {

        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
        if self.refreshControl.isRefreshing {
            // Reload time based array
            self.setupUI()
            self.refreshControl.endRefreshing()
        }
        self.journalTableView.reloadData()
    }




    // NEW

    // initial setup


    func dayOfWeekAndHour() {
        print("Refresh JOURNAL table view")
        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)


        setNatureImage(to: "night1")

        switch dayOfWeek {
        case 1: // Sun
            sunday(hour)
        case 2:
            monday(hour)
        case 3:
            tuesday(hour)
        case 4:
            wednesday(hour)
        case 5:
            thursday(hour)
        case 6:
            friday(hour)
        case 7:
            saturday(hour)
        default:
            print("ERROR: error with dayAndHour")
        }
    }

    func sunday(_ hour: Int) {

        switch hour {
        case 0...24:
            print("Hello")
//            appendHeaders(confidenceHeader1, charismaHeader1, leadershipHeader1, mentalToughnessHeader1, creativityHeader1, anxiousHeader1, stressedHeader1, boredHeader1, madHeader1, depressedHeader1, sadHeader1, lazyHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func monday(_ hour: Int) {
        switch hour {
        case 0...24:
            print("Hello")
//            appendHeaders(confidenceHeader1, charismaHeader1, leadershipHeader1, mentalToughnessHeader1, creativityHeader1, anxiousHeader1, stressedHeader1, boredHeader1, madHeader1, depressedHeader1, sadHeader1, lazyHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func tuesday(_ hour: Int) {
        switch hour {
        case 0...24:
            print("Hello")
            appendHeaders(goodGreatHeader1, boredHeader1, lazyHeader1, confidenceHeader1, lonelyHeader1, jealousHeader1, anxiousHeader1, stressedHeader1, madHeader1, depressedHeader1, sadHeader1, goodGreatHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func wednesday(_ hour: Int) {
        switch hour {
        case 0...24:
            print("Hello")
//            appendHeaders(confidenceHeader1, charismaHeader1, leadershipHeader1, mentalToughnessHeader1, creativityHeader1, anxiousHeader1, stressedHeader1, boredHeader1, madHeader1, depressedHeader1, sadHeader1, lazyHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func thursday(_ hour: Int) {
        switch hour {
        case 0...24:
            print("Hello")
//            appendHeaders(confidenceHeader1, charismaHeader1, leadershipHeader1, mentalToughnessHeader1, creativityHeader1, anxiousHeader1, stressedHeader1, boredHeader1, madHeader1, depressedHeader1, sadHeader1, lazyHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func friday(_ hour: Int) {
        switch hour {
        case 0...24:
            print("Hello")
//            appendHeaders(confidenceHeader1, charismaHeader1, leadershipHeader1, mentalToughnessHeader1, creativityHeader1, anxiousHeader1, stressedHeader1, boredHeader1, madHeader1, depressedHeader1, sadHeader1, lazyHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func saturday(_ hour: Int) {
        switch hour {
        case 0...24:
            print("Hello")
//            appendHeaders(confidenceHeader1, charismaHeader1, leadershipHeader1, mentalToughnessHeader1, creativityHeader1, anxiousHeader1, stressedHeader1, boredHeader1, madHeader1, depressedHeader1, sadHeader1, lazyHeader1)
        default:
            print("ERROR: INVALID HOUR!")
        }
    }


    func setNatureImage(to imageTitle: String) {
        performUIUpdatesOnMain {
//            self.natureImageView.image = UIImage(named: imageTitle)
        }
    }

    func updateQuote(quote: Quote) {
        performUIUpdatesOnMain {
            self.quoteLabel.text = quote.quote
            self.authorLabel.text = quote.source

            //            self.sizeFooterToFit()// needs to be called after setting quote

//            self.quoteView.frame.size.height = self.view.frame.size.width
        }
    }



    @IBAction func returnToTopTapped(_ sender: Any) {

        performUIUpdatesOnMain {
            // removed animation because it was too slow
            self.journalTableView.setContentOffset(.zero, animated: false)
        }
    }











//    func configureDatabase() {
//        ref = Database.database().reference().child(FirebaseConstants.DbChild.Messages).child(User.current.uid)
//    }

    func configureTableView() {
        journalTableView.rowHeight = UITableView.automaticDimension
        journalTableView.estimatedRowHeight = 100.0
    }

    // User Notes:
    // 4 positive: Confidence, gratitude, character/itegrity,
    // 4 negative: Depressed, anxious, stressed, angry, bored, envy, sad, lonely
    // Replace anxious over Stressed
    // Optimistic
    // Loving
    // Good or OK

    func appendHeaders(_ header0: Header, _ header1: Header, _ header2: Header, _ header3: Header,_ header4: Header, _ header5: Header, _ header6: Header, _ header7: Header, _ header8: Header, _ header9: Header, _ header10: Header, _ header11: Header) {

        headers = [header0, header1, header2, header3, header4, header5, header6, header7, header8, header9, header10, header11]

        // set UIButtons
        self.header0Button.setTitle(header0.title, for: .normal)
        self.header1Button.setTitle(header1.title, for: .normal)
        self.header2Button.setTitle(header2.title, for: .normal)
        self.header3Button.setTitle(header3.title, for: .normal)

        self.header4Button.setTitle(header4.title, for: .normal)
        self.header5Button.setTitle(header5.title, for: .normal)
        self.header6Button.setTitle(header6.title, for: .normal)
        self.header7Button.setTitle(header7.title, for: .normal)

        self.header8Button.setTitle(header8.title, for: .normal)
        self.header9Button.setTitle(header9.title, for: .normal)
//        self.header10Button.setTitle(header10.title, for: .normal)
//        self.header11Button.setTitle(header11.title, for: .normal)


    }

//    func resetHeaderButtonsSetup() {
//        resetHeaderButtonOriginalStyle(button: header0Button, buttonTitle: headers[0].title)
//        resetHeaderButtonOriginalStyle(button: header1Button, buttonTitle: headers[1].title)
//        resetHeaderButtonOriginalStyle(button: header2Button, buttonTitle: headers[2].title)
//        resetHeaderButtonOriginalStyle(button: header3Button, buttonTitle: headers[3].title)
//        resetHeaderButtonOriginalStyle(button: header4Button, buttonTitle: headers[4].title)
//        resetHeaderButtonOriginalStyle(button: header5Button, buttonTitle: headers[5].title)
//        resetHeaderButtonOriginalStyle(button: header6Button, buttonTitle: headers[6].title)
//        resetHeaderButtonOriginalStyle(button: header7Button, buttonTitle: headers[7].title)
//
//    }


    private func resetHeaderButtonOriginalStyle(button: RoundCorneredButton) {

        performUIUpdatesOnMain {
            // reset to original color display
            button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)
            button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
        }
    }

    // MARK: TODO
//    func updateAdvice(_ newTips: [Hint]) {
//
//        // update model object
//
//        UIView.animate(withDuration: 0.5) {
//
//            // Scroll to top
//            self.journalTableView.layoutIfNeeded()
//            self.journalTableView.contentOffset = CGPoint(x: 0, y: -self.journalTableView.contentInset.top)
//
//            // update tableview
//            self.tipItems = newTips
//            self.configureTableView()
//            self.journalTableView.reloadData()
//
//        }
//    }





    func updateQuote(_ item:Quote) {
        quoteLabel.text = item.quote
        authorLabel.text = item.source
    }



    @IBAction func headerButtonTapped(_ sender: RoundCorneredButton) {

        if let headerNumber = headerButtons.index(of: sender) {

            print("ANDREW: headerButtonTapped", headerNumber)

            flipButton(at: headerNumber, on: sender)
        } else {
            createAlert(title: "ERROR", message: "Could not laod buttons.")
        }
    }

    func flipButton(at indexNumber: Int, on button: RoundCorneredButton) {

        // reset buttons to original UI display
        resetHeaderButtonOriginalStyle(button: header0Button)
        resetHeaderButtonOriginalStyle(button: header1Button)
        resetHeaderButtonOriginalStyle(button: header2Button)
        resetHeaderButtonOriginalStyle(button: header3Button)
        resetHeaderButtonOriginalStyle(button: header4Button)
        resetHeaderButtonOriginalStyle(button: header5Button)
        resetHeaderButtonOriginalStyle(button: header6Button)
        resetHeaderButtonOriginalStyle(button: header7Button)
        resetHeaderButtonOriginalStyle(button: header8Button)
        resetHeaderButtonOriginalStyle(button: header9Button)

        // Identify what button was tapped

        // selected button previously tapped
        // Check if this button has been tapped just prior
        if currentIndex == indexNumber {

            footerView.isHidden = true

            // reset hints
            hints = []

            // Unselected
            performUIUpdatesOnMain {
                button.backgroundColor = UIColor.init(hexString: "FFF1E5", withAlpha: 1)
                button.setTitleColor(NowConstants.YvonneColor.defaultBlue, for: .normal)


            }

            currentIndex = -1
        } else {
            // selected button NOT previously tapped
            // gray out selected button
            // display selected topic tips

            // display return button
            footerView.isHidden = false

            appendHintsArrayBasedOnHeaderSelected(indexNumber)

            // Selected
            performUIUpdatesOnMain {
                //                button.setTitleColor(.black, for: .normal)
                //                button.backgroundColor = NowConstants.YvonneColor.silver

                button.setTitleColor(UIColor.init(hexString: "FFF1E5", withAlpha: 1), for: .normal)
                button.backgroundColor = NowConstants.YvonneColor.defaultBlue

            }

            currentIndex = indexNumber
        }// end of else

        performUIUpdatesOnMain {
            self.journalTableView.reloadData()
        }
    }

    func appendHintsArrayBasedOnHeaderSelected(_ index: Int) {
        hints = []

        // Take selected index in topics array and subtract 1 because we start with zero
        let counter = (headers[index].hints.count - 1)

        for item in 0...counter {
            hints.append(headers[index].hints[item])
        }
    }












//
//
//    func flipButton(at indexNumber: Int, withText text: String, on button: RoundCorneredButton) {
//
//        print("ANDREW: indexNumber \(indexNumber, text)")
//
//        if button.currentTitle == text {
//            print("Tapped an unselected topic button, display X")
//            resetHeaderButtonsSetup()
//            let selectedButtonIcon = Constants.Now.selectedIconDisplay
//            button.setTitle("\(selectedButtonIcon)", for: .normal)
//            button.setTitleColor(.white, for: .normal)
//            button.backgroundColor = UIColor.gray
//            headerSelected(indexNumber)
//        } else {
//            print("Tapped 'X' button, reset to Now Tips and remove X")
//            button.setTitle(text, for: .normal)
//            button.backgroundColor = .white
//            button.setTitleColor(.black, for: .normal)
//            resetHeaderButtonsSetup()
//            headerSelected(headerButtons.count)
//        }
//    }



//    func headerSelected(_ index: Int) {
//        hints = []
//
//        // Take selected index in topics array and subtract 1 because we start with zero
//        let counter = (headers[index].hints.count - 1)
//
//        for item in 0...counter {
//            hints.append(headers[index].hints[item])
//        }
//    }




//    func sendMoodToFirebase(selectedMood: String) {
//        let now = Date()
//        let formatter = DateFormatter()
//        // initially set the format based on your datepicker date
//        formatter.dateFormat = "MMMM d, yyyy h:mm a"
//        let currentDate = formatter.string(from: now)
//
//        // ****
//        let selectedButtonText = "Mood: \(selectedMood)"
//
//
//        let messageItem = MessageItem(message: selectedButtonText, timestamp: currentDate)
//
//        MessageItemService.writeMessage(for: User.current, message: messageItem, success: { (success) in
//            if success == true {
//                print("SUCCESS WRITING BUTTON MOOD: \(success)")
//            }
//        })
//    }
//
//    func sendMood(_ moodDictionary: [String:String?]) {
//
//        let currentUID = User.current.uid
//        print("CurrentUID: \(currentUID)")
//
//        let messagesDB = ref.child(FirebaseConstants.DbChild.Messages).child(currentUID)
//        // like specifying "/Messages/[some_auto_id]"
//        // Then, .setValue, sets a value to the key (key value pair)
//        messagesDB.childByAutoId().setValue(moodDictionary) {
//            (error, reference) in
//            // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
//            if error != nil {
//                print(error!)
//            } else {
//                print("Mood saved successfully")
//            }
//        }
//    }



}


// MARK: - TableView Data Source Methods

extension JournalViewController: UITableViewDataSource {


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hints.count
    }

    /* Configuring the Timestamp with DateFormatter:
    https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui
    */

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath) as! JournalTableViewCell

        let hint = hints[indexPath.row]

        // To change UI of cell, see JournalTableViewCell.
        cell.configureCell(tip: hint)

        cell.boarderColorView.layer.borderWidth = 0.5
        cell.boarderColorView.layer.cornerRadius = 5
        cell.boarderColorView.layer.borderColor = topicColor?.cgColor
        cell.boarderColorView.layer.shadowColor = topicColor?.cgColor
        cell.boarderColorView.layer.shadowOpacity = 0.7
        cell.boarderColorView.layer.shadowOffset = CGSize(width: -0.4, height: 1.5)
        cell.boarderColorView.layer.shadowRadius = 2.5

        return cell
    }

//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 48))
//        footerView.backgroundColor = UIColor.clear
//
//        return footerView
//    }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 0
//    }

}

// MARK: - Table View Delegate

extension JournalViewController: UITableViewDelegate {
    // Add table view delagate methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        journalTableView.deselectRow(at: indexPath, animated: true)
        let hint = hints[indexPath.row]

        let app = UIApplication.shared
        let cell = tableView.dequeueReusableCell(withIdentifier: "JournalCell", for: indexPath) as! JournalTableViewCell
        if let url = hint.sourceURL {

            // print: true or false
            print("verifyURL: \(verifyUrl(urlString: url))")

            if verifyUrl(urlString: url) == true {
                app.open(URL(string:url)!)
            } else {
                performUIUpdatesOnMain {
                    self.createAlert(title: "Could not open URL", message: "Check your Internet connection and try again.")
                }
            }
        }
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }


//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            let messageItemRow = messageItems[indexPath.row]
//            print("ITEM TO DELETE")
//            print("goalItemRow: \(messageItemRow)")
//
//            // Alternative Firebase Code:
//            //            // Code doesn't seem as efficient as code below to removeValue()
//            //            GoalItemService.deleteGoal(for: User.current, goal: goalItemRow, success: { (success) in
//            //                if success == true {
//            //                    print("SUCCESS WRITING GOAL: \(success)")
//            //                    return
//            //                }
//            //            })
//
//            // Firebase
//            messageItemRow.ref?.removeValue()
//        }
//    }


}

// MARK: - Table View Cell Methods

extension JournalViewController: JournalTableViewCellDelegate {

    func goToSourceURL(url: String) {
        // get the URL from the delegate and presents in Safari VC
        let sponsorURL = URL(string: url)!
        let safariVC = SFSafariViewController(url: sponsorURL)
        present(safariVC, animated: true, completion: nil)
    }
}









