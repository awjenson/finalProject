//
//  JournalViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase
import GrowingTextView
import SVProgressHUD

class JournalViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!

    // remove quote view when keyboard appears
    @IBOutlet weak var quoteView: UIView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!

    // Media Link
    @IBOutlet weak var mediaButton: UIButton!
    @IBOutlet weak var mediaTimeLabel: UILabel!
    @IBOutlet weak var mediaTitleLabel: UILabel!

    // Send/Type message bar
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
//    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var messageTextView: GrowingTextView! // Changed to GrowingTextView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var journalTableView: UITableView!

    // Created individual buttons because Outlet Collection did not work
    @IBOutlet weak var mood0Button: UIButton!
    @IBOutlet weak var mood1Button: UIButton!
    @IBOutlet weak var mood2Button: UIButton!
    @IBOutlet weak var mood3Button: UIButton!
    @IBOutlet weak var mood4Button: UIButton!
    @IBOutlet weak var mood5Button: UIButton!
    @IBOutlet weak var mood6Button: UIButton!
    @IBOutlet weak var mood7Button: UIButton!
    @IBOutlet weak var mood8Button: UIButton!
    @IBOutlet weak var mood9Button: UIButton!


    // MARK: - Properties

    // pull to refresh tableView
    let refreshControl = UIRefreshControl()

    var advice = JournalAdvice(quote: "", source: "", question: "", description: "", time: "", url: "")

    // initial setup
    var messageSentToday = false

    var ref: DatabaseReference!

    // Time and Date
    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    var messageItems: [MessageItem] = []

    var expandingCellHeight: CGFloat = 200
    let expandingIndexRow = 0

    // MARK: - Lifecycle Methods

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("Journal View Controller Will Appear")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if internetConnected() {
            retrieveMessages()
        } else {
            performUIUpdatesOnMain {
                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
            }
        }
        setupUI()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("Journal View Controller Will Disappear")
    }

    // MARK: - Methods

    func setupUI() {

        dayOfWeekAndHour()

        journalTableView.dataSource = self
        journalTableView.delegate = self
        journalTableView.separatorStyle = .none

        // Additional Setup
        configureTableView()

        configureDatabase()

        setupGestureRecognizers()

        setupButtonsLabelsTextViews()

        setupRefreshControl()

        setupKeyboardObservers()
    }

    func setupGestureRecognizers() {

        // Enable Gesture Recognizers
        let tapGestureTableView = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))

        let tapGestureHeaderView = UITapGestureRecognizer(target: self, action: #selector(headerViewTapped))
        // TODO: could add this for the quote view too
        journalTableView.addGestureRecognizer(tapGestureTableView)
        quoteView.addGestureRecognizer(tapGestureHeaderView)
    }

    func setupButtonsLabelsTextViews() {

        // Quote
        quoteLabel.text = advice.quote
        authorLabel.text = advice.source
        questionLabel.text = advice.question

        // Meida
        mediaTitleLabel.text = advice.description

        // Text Messages
        messageTextView.layer.borderColor = UIColor.gray.cgColor
        messageTextView.layer.borderWidth = 1.0
        // Set messageTextView delegate for UITextFieldDelegate
        messageTextView.delegate = self
        messageTextView.trimWhiteSpaceWhenEndEditing = false
        messageTextView.placeholder = "Text something..."
        messageTextView.placeholderColor = UIColor(white: 0.8, alpha: 1.0)
        messageTextView.backgroundColor = UIColor.white
        messageTextView.layer.cornerRadius = 4.0

        mood0Button.setTitle(Constants.SelectedMood.Button0,for: .normal)
        mood1Button.setTitle(Constants.SelectedMood.Button1,for: .normal)
        mood2Button.setTitle(Constants.SelectedMood.Button2,for: .normal)
        mood3Button.setTitle(Constants.SelectedMood.Button3,for: .normal)
        mood4Button.setTitle(Constants.SelectedMood.Button4,for: .normal)
        mood5Button.setTitle(Constants.SelectedMood.Button5,for: .normal)
        mood6Button.setTitle(Constants.SelectedMood.Button6,for: .normal)
        mood7Button.setTitle(Constants.SelectedMood.Button7,for: .normal)
        mood8Button.setTitle(Constants.SelectedMood.Button8,for: .normal)
        mood9Button.setTitle(Constants.SelectedMood.Button9,for: .normal)
    }

    // MARK: - Refresh Control Methods

    func setupRefreshControl() {
        // add pull to refresh
        refreshControl.addTarget(self, action: #selector(reloadMessages), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        journalTableView.addSubview(refreshControl)
    }

    @objc func reloadMessages() {

        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
        if self.refreshControl.isRefreshing {
            // Reload time based array
            loadMessagesAll()
            self.refreshControl.endRefreshing()
        }
    }

    // MARK: - Database Methods

    func loadMessagesAll() {

        MessageItemService.readMessagesAll(for: User.current) { (retrieveAllMessages) in

            if retrieveAllMessages.isEmpty {
                print("retrievedMessages count: \(retrieveAllMessages.count)")
                return
            }
            self.messageItems = retrieveAllMessages

            var number = 0
            print("THREAD: \(Thread.current) + \(number)")
            number += 1
            self.configureTableView()
            self.scrollToBottom()
            self.journalTableView.reloadData()
        }
    }

    func setupKeyboardObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
    }

    @objc func handleKeyboardWillShow(notification: NSNotification) {
        let keyboardFrame = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as AnyObject).cgRectValue
        let keyboardDuration = (notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as AnyObject).doubleValue
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Important: Need this when working with Observers to avoid memory leak!
        NotificationCenter.default.removeObserver(self)
    }

    // NEW



    func dayOfWeekAndHour() {
        print("Refresh JOURNAL table view")
        let dayOfWeek = calendar.component(.weekday, from: date)
        let hour = calendar.component(.hour, from: date)

        switch dayOfWeek {
        case 1: // Sun
            print("today is a weekend")
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
            print(dayOfWeek)
        }
    }

    func sunday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Sunday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am0
        case 14...24:
            print("Sunday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm0
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func monday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Monday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am1
        case 14...24:
            print("Monday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm1
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func tuesday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Tuesday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am2
        case 14...24:
            print("Tuesday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm2
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func wednesday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Wednesday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am3
        case 14...24:
            print("Wednesday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm3
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func thursday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Thursday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am4
        case 14...24:
            print("Thursday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm4
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func friday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Friday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am5
        case 14...24:
            print("Friday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm5
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func saturday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Saturday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = AdviceData.am6
        case 14...24:
            print("Saturday, Afternoon")
            // call function to display 9 time-based topics
            advice = AdviceData.pm6
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    @objc func tableViewTapped() {
        messageTextView.endEditing(true)
    }

    @objc func headerViewTapped() {
        messageTextView.endEditing(true)
    }

    func configureDatabase() {
        ref = Database.database().reference().child(FirebaseConstants.DbChild.Messages).child(User.current.uid)
    }

    func configureTableView() {
        journalTableView.rowHeight = UITableViewAutomaticDimension
        journalTableView.estimatedRowHeight = 100.0
    }

    // Create the retrieveMessages method
    func retrieveMessages() {

        SVProgressHUD.show()

        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        MessageItemService.readMessagesLastTen(for: User.current) { (retrievedMessages) in

            if retrievedMessages.isEmpty {
                print("retrievedMessages count: \(retrievedMessages.count)")
                self.configureTableView()
                self.journalTableView.reloadData()
                SVProgressHUD.dismiss()
                return
            }

            self.messageItems = retrievedMessages

            var number = 0
            print("THREAD: \(Thread.current) + \(number)")
            number += 1
            self.configureTableView()
            self.journalTableView.reloadData()
            self.scrollToBottom()
            SVProgressHUD.dismiss()
        }
    }

    func scrollToBottom(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.messageItems.count-1, section: 0)
            self.journalTableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }


    // MARK: - IBActions

    @IBAction func sendButtonPressed(_ sender: UIButton) {

        messageTextView.endEditing(true)
        messageTextView.isEditable = false
        sendButton.isEnabled = false

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy h:mm a"
        let currentDate = formatter.string(from: now)

        // data we want to save in our database
        if !messageTextView.text!.isEmpty {

            let messageItem = MessageItem(message: messageTextView.text, timestamp: currentDate)

            MessageItemService.writeMessage(for: User.current, message: messageItem, success: { (success) in
                if success == true {
                    print("SUCCESS WRITING MESSAGE: \(success)")
                    self.messageTextView.text = ""
                    self.messageTextView.isEditable = true
                    self.sendButton.isEnabled = true
                    return
                } else if success == false {
                    print("ERROR: NOT ABLE TO SEND MESSAGE")
                    self.createAlert(title: "ERROR", message: "Unable to write to database. Check your Internet connection and try again.")
                    self.sendButton.isEnabled = true
                    return
                }
            })
        }
    }

    // User Notes:
    // Replace anxious over Stressed
    // Optimistic
    // Loving
    // Good or OK

    // MARK: TODO
    func updateAdvice(_ newAdvice: JournalAdvice) {

        // update model object
        self.advice = newAdvice

        // update UI
        self.quoteLabel.text = newAdvice.quote
        self.authorLabel.text = newAdvice.source
        self.questionLabel.text = newAdvice.question
        self.mediaTitleLabel.text = newAdvice.description
    }


    @IBAction func moodButtonTapped(_ sender: UIButton) {

        var selectedMood = ""
        // Plan to add response in next version of app

        switch sender {
        case mood0Button:
            selectedMood = Constants.SelectedMood.Button0
            updateAdvice(AdviceData.sad0)
        case mood1Button:
            selectedMood = Constants.SelectedMood.Button1
            updateAdvice(AdviceData.depressed0)
        case mood2Button:
            selectedMood = Constants.SelectedMood.Button2
            updateAdvice(AdviceData.bored0)
        case mood3Button:
            selectedMood = Constants.SelectedMood.Button3
            updateAdvice(AdviceData.good0)
        case mood4Button:
            selectedMood = Constants.SelectedMood.Button4
            updateAdvice(AdviceData.grateful0)
        case mood5Button:
            selectedMood = Constants.SelectedMood.Button5
            updateAdvice(AdviceData.mad0)
        case mood6Button:
            selectedMood = Constants.SelectedMood.Button6
            updateAdvice(AdviceData.stressed0)//
        case mood7Button:
            selectedMood = Constants.SelectedMood.Button7
            updateAdvice(AdviceData.anxiety0)
        case mood8Button:
            selectedMood = Constants.SelectedMood.Button8
            updateAdvice(AdviceData.motivated0)
        case mood9Button:
            selectedMood = Constants.SelectedMood.Button9
            updateAdvice(AdviceData.happy0)
        default:
            print("ERROR: No button exists")
            break
        }

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy h:mm a"
        let currentDate = formatter.string(from: now)

        // ****
        let selectedButtonText = "Current Mood: \(selectedMood)"
        let messageItem = MessageItem(message: selectedButtonText, timestamp: currentDate)

        MessageItemService.writeMessage(for: User.current, message: messageItem, success: { (success) in
            if success == true {
                print("SUCCESS WRITING BUTTON MOOD: \(success)")
            }
        })
    }

    func sendMood(_ moodDictionary: [String:String?]) {

        let currentUID = User.current.uid
        print("CurrentUID: \(currentUID)")

        let messagesDB = ref.child(FirebaseConstants.DbChild.Messages).child(currentUID)
        // like specifying "/Messages/[some_auto_id]"
        // Then, .setValue, sets a value to the key (key value pair)
        messagesDB.childByAutoId().setValue(moodDictionary) {
            (error, reference) in
            // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
            if error != nil {
                print(error!)
            } else {
                print("Mood saved successfully")
            }
        }
    }


    @IBAction func mediaButtonTapped(_ sender: UIButton) {

        print("Learn more button tapped")

        let app = UIApplication.shared

        if let url = advice.url {

            // print: true or false
            print("verifyURL: \(verifyUrl(urlString: url))")

            if verifyUrl(urlString: url) == true {
                performUIUpdatesOnMain {
                    app.open(URL(string:url)!)
                }
            } else {
                performUIUpdatesOnMain {
                    self.createAlert(title: "Could not open URL", message: "Check Internet connection and try again.")
                }
            }
        }
    }




}


// MARK: - TableView Data Source Methods

extension JournalViewController: UITableViewDataSource {



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageItems.count
    }

    /* Configuring the Timestamp with DateFormatter:
    https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui
    */

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! JournalTableViewCell

        let messageItemRow = messageItems[indexPath.row]

        // To change UI of cell, see JournalTableViewCell.
        cell.dateLabel.text = messageItemRow.timestamp
        cell.messageLabel.text = messageItemRow.message

        return cell
    }

}

// MARK: - Table View Delegate

extension JournalViewController: UITableViewDelegate {
    // Add table view delagate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt indexPath")
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let messageItemRow = messageItems[indexPath.row]
            print("ITEM TO DELETE")
            print("goalItemRow: \(messageItemRow)")

            // Alternative Firebase Code:
            //            // Code doesn't seem as efficient as code below to removeValue()
            //            GoalItemService.deleteGoal(for: User.current, goal: goalItemRow, success: { (success) in
            //                if success == true {
            //                    print("SUCCESS WRITING GOAL: \(success)")
            //                    return
            //                }
            //            })

            // Firebase
            messageItemRow.ref?.removeValue()
        }
    }


}

//MARK:- TextField Delegate Methods

extension JournalViewController: GrowingTextViewDelegate {

    func textViewDidChangeHeight(_ textView: GrowingTextView, height: CGFloat) {
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
}

// MARK: - Text View Delegate

extension JournalViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        UIView.animate(withDuration: 0.18) {
            // put in the animations that we want to happen
            // increase height constraint from 50 to 308 (+258)
            self.heightConstraint.constant = 272
            // call autolayout to update the UI
            self.view.layoutIfNeeded()
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        UIView.animate(withDuration: 0.25) {
            self.heightConstraint.constant = 132
            self.view.layoutIfNeeded()
        }
    }
}





