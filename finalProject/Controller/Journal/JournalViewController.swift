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

class KeyboardService: NSObject {
    static var serviceSingleton = KeyboardService()
    var measuredSize: CGRect = CGRect.zero

    @objc class func keyboardHeight() -> CGFloat {
        let keyboardSize = KeyboardService.keyboardSize()
        return keyboardSize.size.height
    }

    @objc class func keyboardSize() -> CGRect {
        return serviceSingleton.measuredSize
    }

    private func observeKeyboardNotifications() {
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(self.keyboardChange), name: .UIKeyboardDidShow, object: nil)
    }

    private func observeKeyboard() {
        let field = UITextField()
        UIApplication.shared.windows.first?.addSubview(field)
        field.becomeFirstResponder()
        field.resignFirstResponder()
        field.removeFromSuperview()

    }

    @objc private func keyboardChange(_ notification: Notification) {
        guard measuredSize == CGRect.zero, let info = notification.userInfo,
            let value = info[UIKeyboardFrameEndUserInfoKey] as? NSValue
            else { return }

        measuredSize = value.cgRectValue
    }

    override init() {
        super.init()
        observeKeyboardNotifications()
        observeKeyboard()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

////////////////////////////////////////////////////////////

class JournalViewController: UIViewController {

    @IBOutlet weak var journalTitleLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!

    // Send/Type message bar
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!

    @IBOutlet weak var journalTableView: UITableView!

    var messageArray = [JournalMessage]()

    let keyboardHeight = KeyboardService.keyboardHeight()
    let keyboardSize = KeyboardService.keyboardSize()

    var expandingCellHeight: CGFloat = 200
    let expandingIndexRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()

//        NotificationCenter.default.addObserver(
//            self,
//            selector: #selector(keyboardWillShow),
//            name: NSNotification.Name.UIKeyboardWillShow,
//            object: nil
//        )

        journalTableView.dataSource = self
        journalTableView.delegate = self
        messageTextField.delegate = self

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tableViewTapped))
        // could add this for the quote view too
        journalTableView.addGestureRecognizer(tapGesture)

//         NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)




        configureTableView()

//        registerKeyboardNotifications()

        retrieveMessages()

        journalTableView.separatorStyle = .none



    }

    override func viewWillAppear(_ animated: Bool) {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)),
//                                               name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)),
//                                               name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }

//    override open func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(true)
//        NotificationCenter.default.removeObserver(self)
//    }

//    @objc override func keyboardWillShow(_ notification: Notification) {
//        if let keyboardFrame: NSValue = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue {
//            let keyboardRectangle = keyboardFrame.cgRectValue
//            keyboardHeight = keyboardRectangle.height
//            print("keyboardHeight \(keyboardHeight)")
//
//        }
//    }
//
//    //MARK: - getKayboardHeight
//    @objc func keyboardWillShow(notification: Notification) {
//        let userInfo:NSDictionary = notification.userInfo! as NSDictionary
//        let keyboardFrame:NSValue = userInfo.value(forKey: UIKeyboardFrameEndUserInfoKey) as! NSValue
//        let keyboardRectangle = keyboardFrame.cgRectValue
//        keyboardHeight = keyboardRectangle.height
//        print("keyboardHeight \(keyboardHeight)")
//
//        // do whatever you want with this keyboard height
//    }



    
//    @objc func keyboardWillHide(notification: Notification) {
//        // keyboard is dismissed/hidden from the screen
//    }





//    func firstMessageOfTheDay(indexOfMessage: NSIndexPath) -> Bool {
//        let messageDate = messages[indexOfMessage.item].date
//        guard let previouseMessageDate = messages[indexOfMessage.item - 1].date else {
//            return true // because there is no previous message so we need to show the date
//        }
//        let day = Calendar.current.component(.day, from: messageDate)
//        let previouseDay = Calendar.current.component(.day, from: previouseMessageDate)
//        if day == previouseDay {
//            return false
//        } else {
//            return true
//        }
//    }

    func configureTableView() {
        journalTableView.rowHeight = UITableViewAutomaticDimension
        journalTableView.estimatedRowHeight = 100.0
    }

    @objc func tableViewTapped() {
        messageTextField.endEditing(true)

    }

    @IBAction func sendButtonPressed(_ sender: Any) {

        messageTextField.endEditing(true)

        // Send the message to Firebase and save it in our database
        messageTextField.isEnabled = false
        sendButton.isEnabled = false

        // Create a new reference inside our main database
        let messagesDB = Database.database().reference().child("Messages")
        // data we want to save in our database
        let messageDictionary = ["Sender": Auth.auth().currentUser?.email, "MessageBody": messageTextField.text]

        // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
        messagesDB.childByAutoId().setValue(messageDictionary) {
            (error, reference) in

            if error != nil {
                print(error)
            } else {
                print("Message saved successfully")
                self.messageTextField.isEnabled = true
                self.sendButton.isEnabled = true
                self.messageTextField.text = ""

            }
        }

    }

    // Create the retrieveMessages method
    func retrieveMessages() {
        let messageDB = Database.database().reference().child("Messages")

        // ask Firebase to observe for any new child's events
        messageDB.observe(.childAdded) { (snapshot) in
            // grab data from snapshot and format it into a custom JournalMessage object
            // we know what 'value' type we will receive from the DB because we created it above that contains a [String:String]
            let snapshotValue = snapshot.value as! Dictionary<String,String>

            // use snapshotValue to pull-out values of keys
            let text = snapshotValue["MessageBody"]!
            let sender = snapshotValue["Sender"]!

            // now save these values into a new JournalMessage object
            let newMessage = JournalMessage()
            newMessage.message = text
            newMessage.sender = sender

            self.messageArray.append(newMessage)

            // re-configure table view and reload data in table view
            self.configureTableView()
            self.journalTableView.reloadData()


        }

    }


    

}

extension JournalViewController: UITextFieldDelegate {

    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.2) {
            // animations that we want to happen
            // keyboard is 258 points high
            self.heightConstraint.constant = (self.keyboardHeight)
            print("keyboardHeight: \(self.keyboardHeight)")
            print("heightContraint: \(self.heightConstraint.constant)")
            self.view.layoutIfNeeded() // update view
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.5) {
            // animations that we want to happen
            // keyboard is 258 points high
            self.heightConstraint.constant = (50)
            self.view.layoutIfNeeded() // update view
        }

    }

//    //Get Keyboard Height and Animation When Keyboard Shows Up
//    @objc func keyboardWillShow(notification: Notification) {
//        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
//            let keyboardHeight = keyboardSize.height
//            //iPhone X has Safe Area Insets
//            if #available(iOS 11.0, *) {
//                heightConstraint.constant = keyboardHeight - view.safeAreaInsets.bottom + 50
//            } else {
//                // Fallback on earlier versions
//                heightConstraint.constant = keyboardHeight + 50
//            }
//            view.layoutIfNeeded()
//        }
//
//    }



}

// MARK: - TableView Data Source and Delegate Protocol Methods

extension JournalViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! JournalTableViewCell


        cell.messageLabel.text = messageArray[indexPath.row].message

//        cell.senderUsername.text = messageArray[indexPath.row].sender

//        if let expandingCell = cell as? JournalTableViewCell {
//            print("Entered in here")
//            expandingCell.delegate = self
//        }

        return cell
    }
}

extension JournalViewController: UITableViewDelegate {

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row == expandingIndexRow {
//            return expandingCellHeight
//        } else {
//            return 100
//        }
//    }
}

//extension JournalViewController: ExpandingCellDelegate {
//
//    func updated(height: CGFloat) {
//        expandingCellHeight = height
//
//        // Disabling animations gives us our desired behaviour
//        UIView.setAnimationsEnabled(false)
//        /* These will causes table cell heights to be recaluclated,
//         without reloading the entire cell */
//        journalTableView.beginUpdates()
//        journalTableView.endUpdates()
//        // Re-enable animations
//        UIView.setAnimationsEnabled(true)
//
//        let indexPath = IndexPath(row: expandingIndexRow, section: 0)
//
//        journalTableView.scrollToRow(at: indexPath, at: .bottom, animated: false)
//    }
//}


fileprivate extension JournalViewController {

//    fileprivate func registerKeyboardNotifications() {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: .UIKeyboardWillChangeFrame, object: nil)
//    }
//
//    @objc func keyboardWillShow(notification: NSNotification) {
//
//        guard let userInfo = notification.userInfo,
//            let keyBoardValueBegin = (userInfo[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue,
//            let keyBoardValueEnd = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue, keyBoardValueBegin != keyBoardValueEnd else {
//                return
//        }
//
//        let keyboardHeight = keyBoardValueEnd.height
//
//        journalTableView.contentInset.bottom = keyboardHeight
//    }
}

