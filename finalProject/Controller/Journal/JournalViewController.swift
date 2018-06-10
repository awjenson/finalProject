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

    var advice = JournalAdvice(quote: "", source: "", question: "")

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

        quoteLabel.text = advice.quote
        authorLabel.text = advice.source
        questionLabel.text = advice.question

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

    // PLAN TO USE IN NEXT VERSION OF APP:
//
//    let am0 = JournalAdvice(quote: "David McCullough, the Pulitzer Prize winning author and historian has said if you want to become the voice of your generation, write a journal entry every day and then gift it to your local university library at the end of your life. Voice of your generation or not, I believe that a journal is one of the most precious gifts you can give to those you leave behind.", source: "Greg McKeown, author of Essentialism: The Disciplined Pursuit of Less", question: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/")
//
//    let pm0 = JournalAdvice(quote: "Journaling helps you clarify your thoughts and feelings. Do you ever seem all jumbled up inside, unsure of what you want or feel? Taking a few minutes to jot down your thoughts and emotions (no editing!) will quickly get you in touch with your internal world.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let pm1 = JournalAdvice(quote: "Journaling helps you know yourself better. By writing routinely you will get to know what makes you feel happy and confident. You will also become clear about situations and people who are toxic for you — important information for your emotional well-being.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let am1 = JournalAdvice(quote: "Journaling helps to reduce stress. Writing about anger, sadness and other painful emotions helps to release the intensity of these feelings. By doing so you will feel calmer and better able to stay in the present.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let am2 = JournalAdvice(quote: "Journaling helps you solve problems more effectively. Typically we problem solve from a left-brained, analytical perspective. But sometimes the answer can only be found by engaging right-brained creativity and intuition. Writing unlocks these other capabilities, and affords the opportunity for unexpected solutions to seemingly unsolvable problems.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let pm2 = JournalAdvice(quote: "Keeping a journal allows you to track patterns, trends and improvement and growth over time. When current circumstances appear insurmountable, you will be able to look back on previous dilemmas that you have since resolved.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let am3 = JournalAdvice(quote: "Your journaling will be most effective if you do it daily for about 20 minutes. Begin anywhere, and forget spelling and punctuation. Privacy is key if you are to write without censor. Write quickly, as this frees your brain from \"shoulds\" and other blocks to successful journaling. If it helps, pick a theme for the day, week or month (for example, peace of mind, confusion, change or anger). The most important rule of all is that there are no rules. You’ll discover that your journal is an all-accepting, nonjudgmental friend. And it may provide the cheapest therapy you will ever get.", source: "Psych Central", question: "https://psychcentral.com/lib/the-health-benefits-of-journaling/")
//
//    let pm3 = JournalAdvice(quote: "If you want to create a new journaling habit: write less than you feel like writing. Typically, when people start to keep a journal they write pages the first day. Then by the second day the prospect of writing so much is daunting, and they procrastinate or abandon the exercise. So instead, even if you feel like writing more, force yourself to write no more than one sentence a day. Apply the disciplined pursuit of “less but better” to your journal.", source: "Greg McKeown, author of Essentialism: The Disciplined Pursuit of Less", question: "https://gregmckeown.com/blog/one-thing-productive-people-reaching-phones/")
//
//    let am4 = JournalAdvice(quote: "Even if you start a journal session in a bad mood, a five-minute a day gratitude journal can increase your long-term well-being by more than 10 percent. Those who pay attention to what is good in their life instead of what is bad are more likely to feel positively about their life. Gratitude makes us feel more gratitude.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//    let pm4 = JournalAdvice(quote: "Journaling gratitude has a strong positive impact on psychological well-being, self-esteem, depression. It also keeps suicidal thoughts and attempts at bay. A study found that gratitude is a protective factor when it comes to suicidal ideation in stressed and depressed individuals. Enhancing our own practice of gratitude can help protect us when we are weakest.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//    let am5 = JournalAdvice(quote: "Regular gratitude journaling has been shown to result in 5% to 15% increases in optimism, meaning that the more we think about what we are grateful for, the more we find to be grateful for.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//    let pm5 = JournalAdvice(quote: "Gratitude journaling can be an effective supplement to treatment for depression. A study found that participants who practiced gratitude journaling experienced a 35% reduction in depressive symptoms for as long as the journaling continued. Think of at least one thing that you are greatful for today.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")
//
//    let am6 = JournalAdvice(quote: "Journaling can help you achieve your goals. Writing goals signals to your brain “this is important. More detailed goals provide a psychological blueprint, and increases the likelihood of achieving them.", source: "Huffington Post", question: "https://www.huffingtonpost.com/thai-nguyen/benefits-of-journaling-_b_6648884.html")
//
//    let pm6 = JournalAdvice(quote: "Gratitude journaling can help improve your sleep. A two week gratitude study increased sleep quality and reduced blood pressure in participants, leading to enhanced well-being. If you’re having trouble sleeping or just waking up feeling fatigued, try a quick gratitude journaling exercise before bed by writing down what you're thankful for.", source: "Positive Psychology Program", question: "https://positivepsychologyprogram.com/benefits-gratitude-research-questions/")


    // NEW
    let am0 = JournalAdvice(quote: "\"Those who are unaware they are walking in darkness will never seek the light.", source: "Bruce Lee", question: "What are three fears in your life?\"")

    let pm0 = JournalAdvice(quote: "\"Could bitching and moaning on paper for five minutes each morning change your life? As crazy as it might seem, I believe the answer is yes.\"", source: "Tim Ferriss", question: "When do I feel most alive?")

    let pm1 = JournalAdvice(quote: "\"As we grow in our consciousness, there will be more compassion and more love, and then the barriers between people, between religions, between nations will begin to fall.\"", source: "Ram Dass", question: "What is one of my best memories?")

    let am1 = JournalAdvice(quote: "\"The key to growth is the introduction of higher dimensions of consciousness into our awareness.\"", source: "Lao Tzu", question: "What makes me depressed?")

    let am2 = JournalAdvice(quote: "\"Self awareness is the ability to take an honest look at your life without any attachment to it being right or wrong, good or bad.\"", source: "Debbie Ford", question: "When was a last time that I lost control of my emotions?")

    let pm2 = JournalAdvice(quote: "\"I think self-awareness is probably the most important thing towards being a champion.\"", source: "Billie Jean King", question: "What daily acitivies add value to my life?")

    let am3 = JournalAdvice(quote: "\"The unexamined life is not worth living.\"", source: "Socrates", question: "What daily activities do not add value to my life?")

    let pm3 = JournalAdvice(quote: "\"Be mindful of your self talk. It's a conversation with the universe.\"", source: "Davide James Lees", question: "What is one negative thought that you have about yourself?")

    let am4 = JournalAdvice(quote: "\"You are the average of the five people you spend the most time with.\"", source: "Jim Rohn", question: "Who brings negativity into your life?")

    let pm4 = JournalAdvice(quote: "\"When you think everything is someone else's fault, you will suffer a lot. When you realize that everything springs only from yourself, you will learn both peace and joy.\"", source: "The 14th Dalai Lama", question: "Who is one of your heros? And why?")

    let am5 = JournalAdvice(quote: "\"Wisdom tends to grow in proportion to one’s awareness of one’s ignorance.\"", source: "Anthony de Mello", question: "What am I learning and studying for?")

    let pm5 = JournalAdvice(quote: "\"Awareness is a key ingredient in success. If you have it, teach it, if you lack it, seek it.\"", source: "Michael B. Kitson", question: "What can I say no to so I can yes to what matters?")

    let am6 = JournalAdvice(quote: "\"Refuse to be average. Let your heart soar as high as it will.\"", source: "A. W. Tozer", question: "Who improves your life?")

    let pm6 = JournalAdvice(quote: "\"The awakening of consciousness is the next evolutionary step for mankind.\"", source: "Eckhart Tolle", question: "What's one thing that I am grateful for today?")


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
            advice = am0
        case 14...24:
            print("Sunday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm0
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func monday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Monday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = am1
        case 14...24:
            print("Monday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm1
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func tuesday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Tuesday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = am2
        case 14...24:
            print("Tuesday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm2
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func wednesday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Wednesday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = am3
        case 14...24:
            print("Wednesday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm3
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func thursday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Thursday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = am4
        case 14...24:
            print("Thursday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm4
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func friday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Friday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = am5
        case 14...24:
            print("Friday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm5
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func saturday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Saturday, Very Early Morning")
            // call function to display 9 time-based topics
            advice = am6
        case 14...24:
            print("Saturday, Afternoon")
            // call function to display 9 time-based topics
            advice = pm6
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

    @IBAction func moodButtonTapped(_ sender: UIButton) {

        var selectedMood = ""
        // Plan to add response in next version of app
        var response = ""

        switch sender {
        case mood0Button:
            selectedMood = Constants.SelectedMood.Button0
            response = ""
        case mood1Button:
            selectedMood = Constants.SelectedMood.Button1
            response = ""
        case mood2Button:
            selectedMood = Constants.SelectedMood.Button2
            response = ""

        case mood3Button:
            selectedMood = Constants.SelectedMood.Button3
            response = ""
        case mood4Button:
            selectedMood = Constants.SelectedMood.Button4
            response = ""
        case mood5Button:
            selectedMood = Constants.SelectedMood.Button5
            response = ""

        case mood6Button:
            selectedMood = Constants.SelectedMood.Button6
            response = ""
        case mood7Button:
            selectedMood = Constants.SelectedMood.Button7
            response = ""
        case mood8Button:
            selectedMood = Constants.SelectedMood.Button8
            response = ""

        case mood9Button:
            selectedMood = Constants.SelectedMood.Button9
            response = ""

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





