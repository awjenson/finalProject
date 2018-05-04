//
//  Profile3ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase

// Our timeline will retrieve post data from our database and display it to our user.

// Firebase push happens when use taps out of textView. But, when does the retrive happen.. in the viewDidLoad.

// Checkout Code With Chris's Question Bank Tutorial. Each question could be like each textView (Vision, Goals, etc.)

class Profile3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var profile3TableView: UITableView!

    @IBOutlet weak var profileHeaderView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    
//    let keyboardHeight = KeyboardService.keyboardHeight()
//    let keyboardSize = KeyboardService.keyboardSize()

    var posts = [Post]()

    var statementArray = [ProfileStatement]()
    var dailyRoutine3 = ProfileStatement(sender: "Andrew", statement: "My daily routine will be to do this and that each day...")
    var oneYearGoals2 = ProfileStatement(sender: "Andrew", statement: "My one year goals are to do x, y, and z.")
    var lifetime1 = ProfileStatement(sender: "Andrew", statement: "My lifetime goals will be to accomplish these x, y, and z.")
    var vision0 = ProfileStatement(sender: "Andrew", statement: "My vision is to...")


    var profileArray = [ProfileUserData]()
    var ref: DatabaseReference!
    fileprivate var _refHandle: DatabaseHandle!



    
    var results = [ProfileDataResults]()
    var selectedResults = [ProfileDataModel]() // this will be used to stores the selected vision and goals

    


    override func viewDidLoad() {
        super.viewDidLoad()



        profileHeaderView.layer.cornerRadius = 10
        profileHeaderView.layer.shadowColor = UIColor.gray.cgColor
        profileHeaderView.layer.shadowOffset = CGSize(width: 5, height: 5)
        profileHeaderView.layer.shadowOpacity = 0.7
        profileHeaderView.layer.shadowRadius = 5

        profileButton.layer.cornerRadius = 10
        profileButton.layer.borderWidth = 1.0

//        UserService.posts(for: User.current) { (posts) in
//            self.posts = posts
//            self.tableView.reloadData()
//        }

        statementArray.append(dailyRoutine3)
        statementArray.append(oneYearGoals2)
        statementArray.append(lifetime1)
        statementArray.append(vision0)

        print(statementArray)
        print("???")
        print(statementArray[0])



        profile3TableView.dataSource = self
        profile3TableView.delegate = self

        // Check order of statementArray[n] to make sure pulling correct text
        let dailyRoutine = ProfileDataModel(category: "Daily Routine", adviceText: "It's not what we do once in a while that shapes our lives, but what we do consistently.", adviceAuthor: "Tony Robbins", adviceURL: "https://www.youtube.com/watch?v=3sK3wJAxGfs", userInput: statementArray[0])

        let oneYearGoals = ProfileDataModel(category: "One Year Goals", adviceText: "People without goals get used by other people who have them. People who don’t have goals work for people who do.", adviceAuthor: "Sean Croxton", adviceURL: "https://www.youtube.com/watch?v=DNITe9snHqA&t", userInput: statementArray[1])

        let lifetimeGoals = ProfileDataModel(category: "Lifetime Goals", adviceText: "Project your life to age 80 and then make decisions today to minimize regrets you will have. While you might feel remorse for things you did wrong, more often regrets stem from the path not taken. If you fail, at least you will be proud when you're 80 that you tried.", adviceAuthor: "Jeff Bezos", adviceURL: "https://www.youtube.com/watch?v=ikuLEZoE1vE", userInput: statementArray[2])

        let vision = ProfileDataModel(category: "Vision", adviceText: "Create the highest grandest vision possible for your life, because you become what you believe.", adviceAuthor: "Oprah Winfrey", adviceURL: "https://www.youtube.com/watch?v=acBp_5OmTkQ&t", userInput: statementArray[3])



        selectedResults.append(dailyRoutine)
        selectedResults.append(oneYearGoals)
        selectedResults.append(lifetimeGoals)
        selectedResults.append(vision)

        configureTableView()
        configureDatabase() // is the needed?
        retrieveProfileUserData()

    }

    func configureDatabase() {
        ref = Database.database().reference()
    }

    func retrieveProfileUserData() {
        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        _refHandle = ref.child(Constants.DbChild.ProfileUserData).observe(.childAdded) { (snapshot) in
            // grab data from snapshot and format it into a custom JournalMessage object
            // we know what 'value' type we will receive from the DB because we created it above that contains a [String:String]
            let snapshotValue = snapshot.value as! Dictionary<String,String>

            // use snapshotValue to pull-out values of keys
            let sender = snapshotValue[Constants.ProfileUserData.Sender]!
            let dailyRoutine = snapshotValue[Constants.ProfileUserData.DailyRoutine]!
            let oneYearGoal = snapshotValue[Constants.ProfileUserData.OneYearGoal]!
            let lifetimeGoal = snapshotValue[Constants.ProfileUserData.LifetimeGoal]!
            let vision = snapshotValue[Constants.ProfileUserData.Vision]!
            let timeStamp = snapshotValue[Constants.ProfileUserData.TimeStamp]

            // now save these values into a new JournalMessage object
            let editedProfileUserData = ProfileUserData()
            editedProfileUserData.sender = sender
            editedProfileUserData.dailyRoutine = dailyRoutine
            editedProfileUserData.oneYearGoal = oneYearGoal
            editedProfileUserData.lifetimeGoal = lifetimeGoal
            editedProfileUserData.vision = vision
            editedProfileUserData.timestamp = timeStamp ?? ""

            self.profileArray.append(editedProfileUserData)
            print("Profile Array: \(self.profileArray.count)")

            // re-configure table view and reload data in table view
            self.configureTableView()
            self.profile3TableView.reloadData()

        }
    }

    func configureTableView() {
        profile3TableView.estimatedRowHeight = 50
        profile3TableView.rowHeight = UITableViewAutomaticDimension
    }


    @IBAction func saveButtonTapped(_ sender: UIButton) {

        let cell = profile3TableView.dequeueReusableCell(withIdentifier: "cell") as! ProfileTableViewCell

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy"
        let currentDate = formatter.string(from: now)


        // Create a new reference inside our main database

        // data we want to save in our database
        let userDictionary = [
            Constants.ProfileUserData.Sender: Auth.auth().currentUser?.email,
            Constants.ProfileUserData.DailyRoutine: /*textView.text from cell 1*/ as String,
            Constants.ProfileUserData.OneYearGoal: /*textView.text from cell 2*/ as String,
            Constants.ProfileUserData.LifetimeGoal: /*textView.text from cell 3*/ as String,
            Constants.ProfileUserData.Vision: /*textView.text from cell 4*/ as String,
            Constants.ProfileUserData.TimeStamp: currentDate]

        sendProfileUserData(userDictionary)

    }

    func sendProfileUserData(_ userDictionary: [String:String?]) {
        let messagesDB = ref.child(Constants.DbChild.ProfileUserData)
        // like specifying "/Messages/[some_auto_id]"
        // Then, .setValue, sets a value to the key (key value pair)
        messagesDB.childByAutoId().setValue(userDictionary) {
            (error, reference) in
            // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
            if error != nil {
                print(error!)
            } else {
                print("Message saved successfully")
            }
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return post.count
        return selectedResults.count
    }

    /*
     CELL - comes after each 'cell.'
     categoryLabel: UILabel!
     adviceTextLabel: UILabel!
     adviceAuthorLabel: UILabel!
     userTextView: UITextView!
     quoteAuthorLabel: UILabel!
     quoteLabel: UILabel!
     quoteButton: UIButton!

     Profile3DataModel - comes after each [indexPath.row]
     category
     adviceText
     adviceAuthor
     userInput
     quoteText
     quoteAuthor
     quoteURL
     */

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell

        // set its text view’s delegate to self *** UNSURE WHY THIS DOESN'T WORK???
//        cell.userTextView.delegate = self

        cell.userTextView.layer.borderColor = UIColor.darkGray.cgColor
        cell.userTextView.layer.borderWidth = 2
        cell.userTextView.delegate = self

        cell.categoryLabel.text = selectedResults[indexPath.row].category
        cell.adviceTextLabel.text = selectedResults[indexPath.row].adviceText
        cell.adviceAuthorLabel.text = selectedResults[indexPath.row].adviceAuthor

        cell.userTextView.text = selectedResults[indexPath.row].userInput.statement
        // Set the delegate to be the VC when you create the cell
        cell.userTextView.delegate = self

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //getting the index path of selected row


    }

    /* Update database when changes made to TextView in a cell. Seems to be similar as updating a like button UILabel each time the like button is clicked. Method for did tap away from textView.
     https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/liking-posts */

//    // Used for working with UITextView
//    func didTapLikeButton(_ profileTextView: UITextView, on cell: ProfileTableViewCell) {
//        // 1
//        guard let indexPath = profileTableView.indexPath(for: cell)
//            else { return }
//
//        // 2
//        profileTextView.isUserInteractionEnabled = false
//        // 3 Reference the correct Category corresponding with the ProfileTableViewCell that the user tapped.
//        let post = posts[indexPath.section]
//
//        // 4
//        LikeService.setIsLiked(!post.isLiked, for: post) { (success) in
//            // 5
//            defer {
//                likeButton.isUserInteractionEnabled = true
//            }
//
//            // 6
//            guard success else { return }
//
//            // 7
//            post.likeCount += !post.isLiked ? 1 : -1
//            post.isLiked = !post.isLiked
//
//            // 8
//            guard let cell = self.tableView.cellForRow(at: indexPath) as? PostActionCell
//                else { return }
//
//            // 9
//            DispatchQueue.main.async {
//                self.configureCell(cell, with: post)
//            }
//        }
//    }

}

extension Profile3ViewController: UITextViewDelegate {

    func textViewDidChange(_ textView: UITextView) {
        /*
         According to article there is a UI bug, added code to fix it
         http://candycode.io/self-sizing-uitextview-in-a-uitableview-using-auto-layout-like-reminders-app/
         */
        let currentOffset = profile3TableView.contentOffset
        UIView.setAnimationsEnabled(false)
        profile3TableView.beginUpdates()
        profile3TableView.endUpdates()
        UIView.setAnimationsEnabled(true)
        profile3TableView.setContentOffset(currentOffset, animated: false)

        // update Firebase Database
    }

    func textViewDidEndEditing(_ textView: UITextView) {

        print("Editing ended")
    }

}

extension Profile3ViewController: UITextFieldDelegate {

//    func updateTextView(notification: Notification) {
//        let userInfo = notification.userInfo!
//
//        let keyboardEndFrameScreenCoordinates = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
//        let keyboardEndFrame = self.view.convert(keyboardEndFrameScreenCoordinates, to: view.window)
//        // now adjust the context of the textView
////        if notification.name == Notification.Name.UIKeyboardWillHide {
////            userTextView.contentInset = UIEdgeInset.zero
////
////        } else {
////            userTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardEndFrame.height, right: 0)
////            userTextView.scrollIndicatorInsets = userTextView.contentInset
////        }
////
////        userTextView.scrollRangeToVisible(userTextView.selectedRange)
//    }
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        UIView.animate(withDuration: 0.2) {
//            // animations that we want to happen
//            // keyboard is 258 points high
//
//            print("keyboardHeight: \(self.keyboardHeight)")
//
//            self.view.layoutIfNeeded() // update view
//        }
//    }
//
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        UIView.animate(withDuration: 0.5) {
//            // animations that we want to happen
//            // keyboard is 258 points high
//
//            self.view.layoutIfNeeded() // update view
//        }
//
//    }
}


