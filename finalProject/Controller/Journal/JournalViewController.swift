//
//  JournalViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase
import ChameleonFramework // for colors
import GrowingTextView

// leading = leading + 8
// top = top + 10
// trailing = trailing + 8
// Send Button.leading = Message Text Field.trailing + 8

class JournalViewController: UIViewController {

    @IBOutlet weak var quoteView: UIView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!

    @IBOutlet weak var quoteButton: UIButton!

    // Send/Type message bar
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
//    @IBOutlet weak var messageTextField: UITextField!

    @IBOutlet weak var messageTextView: GrowingTextView! // Changed to GrowingTextView!
    @IBOutlet weak var sendButton: UIButton!




    @IBOutlet weak var journalTableView: UITableView!

    var ref: DatabaseReference!
    fileprivate var _refHandle: DatabaseHandle!
    fileprivate var _authHandle: AuthStateDidChangeListenerHandle!

    // an empty JournalMessage array to contain the user's messages
    var messageArray = [JournalMessage]()

//    let keyboardHeight = KeyboardService.keyboardHeight()
//    let keyboardSize = KeyboardService.keyboardSize()

    var expandingCellHeight: CGFloat = 200
    let expandingIndexRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        signedInStatus(isSignedIn: true)

        quoteView.layer.cornerRadius = 10
        quoteView.layer.shadowColor = UIColor.gray.cgColor
        quoteView.layer.shadowOffset = CGSize(width: 5, height: 5)
        quoteView.layer.shadowOpacity = 0.7
        quoteView.layer.shadowRadius = 5
    }

    deinit {
        // The database observer doesn't stop listen for changes in the database when the VC goes off screen. So if the observer isn't removed then the observer will continue to sync data to local memory casusing excessive memory use. So when an observer is no longer needed we should remove it. In this case, remove the observer when the VC is deinitalized.
//        ref.child(Constants.DbChild.Messages).removeObserver(withHandle: _refHandle)
    }


    func signedInStatus(isSignedIn: Bool) {
        if (isSignedIn) {

            journalTableView.dataSource = self
            journalTableView.delegate = self

            messageTextView.delegate = self
            messageTextView.trimWhiteSpaceWhenEndEditing = false
            messageTextView.placeholder = "Say something..."
            messageTextView.placeholderColor = UIColor(white: 0.8, alpha: 1.0)
            messageTextView.backgroundColor = UIColor.white
            messageTextView.layer.cornerRadius = 4.0

            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
            // could add this for the quote view too
            journalTableView.addGestureRecognizer(tapGesture)

            configureTableView()

            configureDatabase()

            retrieveMessages()

            journalTableView.separatorStyle = .none


        }

    }

    func configureDatabase() {
        ref = Database.database().reference()
    }





    func configureTableView() {
        journalTableView.rowHeight = UITableViewAutomaticDimension
        journalTableView.estimatedRowHeight = 100.0
    }

    @objc func tableViewTapped() {
        messageTextView.endEditing(true)

    }

    // MARK: - IBActions

    @IBAction func QuoteButtonTapped(_ sender: UIButton) {

        // Launch URL Window
        print("QuoteButtonTapped")
    }





    @IBAction func sendButtonPressed(_ sender: UIButton) {

//        messageTextField.endEditing(true)
        messageTextView.endEditing(true)

        // Send the message to Firebase and save it in our database
//        messageTextField.isEnabled = false
        messageTextView.isEditable = false
        sendButton.isEnabled = false

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "dd MMMM yyyy"
        let currentDate = formatter.string(from: now)


        // Create a new reference inside our main database

        // data we want to save in our database
        if !messageTextView.text!.isEmpty {
            let messageDictionary = [Constants.Message.Sender: Auth.auth().currentUser?.email,
                                     Constants.Message.Text: messageTextView.text! as String,
                                     Constants.Message.TimeStamp: currentDate]
            sendMessage(messageDictionary)
        }

    }

    func sendMessage(_ messageDictionary: [String:String?]) {
        let messagesDB = ref.child(Constants.DbChild.Messages)
        // like specifying "/Messages/[some_auto_id]"
        // Then, .setValue, sets a value to the key (key value pair)
        messagesDB.childByAutoId().setValue(messageDictionary) {
            (error, reference) in
            // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
            if error != nil {
                print(error!)
            } else {
                print("Message saved successfully")
                //                self.messageTextField.isEnabled = true
                self.messageTextView.isEditable = true
                self.sendButton.isEnabled = true
                //                self.messageTextField.text = ""
                self.messageTextView.text = ""

            }
        }
    }



    // Create the retrieveMessages method
    func retrieveMessages() {
        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        _refHandle = ref.child(Constants.DbChild.Messages).observe(.childAdded) { (snapshot) in
            // grab data from snapshot and format it into a custom JournalMessage object
            // we know what 'value' type we will receive from the DB because we created it above that contains a [String:String]
            let snapshotValue = snapshot.value as! Dictionary<String,String>

            // use snapshotValue to pull-out values of keys
            let sender = snapshotValue[Constants.Message.Sender]!
            let text = snapshotValue[Constants.Message.Text]!
            let timeStamp = snapshotValue[Constants.Message.TimeStamp]

            // now save these values into a new JournalMessage object
            let newMessage = JournalMessage()
            newMessage.sender = sender
            newMessage.message = text
            newMessage.timestamp = timeStamp ?? ""

            self.messageArray.append(newMessage)

            // re-configure table view and reload data in table view
            self.configureTableView()
            self.journalTableView.reloadData()
            self.scrollToBottom()
        }
    }

    func scrollToBottom(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.messageArray.count-1, section: 0)
            self.journalTableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }




    

}

extension JournalViewController: GrowingTextViewDelegate {

    func textViewDidChangeHeight(_ textView: GrowingTextView, height: CGFloat) {
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
}

// MARK: - TableView Data Source and Delegate Protocol Methods

extension JournalViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! JournalTableViewCell

        cell.dateLabel.text = messageArray[indexPath.row].timestamp
        cell.messageLabel.text = messageArray[indexPath.row].message

        return cell
    }
}

extension JournalViewController: UITableViewDelegate {
    // Add table view delagate methods

}





