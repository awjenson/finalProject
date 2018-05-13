//
//  Profile3ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase

// * Helen doesn't like the word "Vision"
// * Helen likes "Fears" instead of "Vision"

// Our timeline will retrieve post data from our database and display it to our user.

// Firebase push happens when use taps out of textView. But, when does the retrive happen.. in the viewDidLoad.

// Checkout Code With Chris's Question Bank Tutorial. Each question could be like each textView (Vision, Goals, etc.)

class Profile3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var bioTextLabel: UILabel!
    @IBOutlet weak var quoteTextLabel: UILabel!

    @IBOutlet weak var profile3TableView: UITableView!

    @IBOutlet weak var profileHeaderView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    
//    let keyboardHeight = KeyboardService.keyboardHeight()
//    let keyboardSize = KeyboardService.keyboardSize()

    var noteArray = [[String:String]]() //an array of dicts, tableView datasource
    var initialLoad = true

    // code to load the data initially and then watch for added messages

//    messagesRef.observeEventType(.ChildAdded, withBlock: { snapshot in
//
//    let dict = [String: String]()
//    dict["date"] = snapshot.value("date")
//    dict["msg"] = snapshot.value("message")
//    dict["sender"] = snapshot.value("sender")
//
//    self.messagesArray.append(dict)
//
//    if ( self.initialLoad == false ) { //upon first load, don't reload the tableView until all children are loaded
//    self.itemsTableView.reloadData()
//    }
//    })
//
//    //this .Value event will fire AFTER the child added events to reload the tableView
//    //  the first time and to set subsequent childAdded events to load after each child
//    //   is added in the future
//    messagesRef.observeSingleEventOfType(.Value, withBlock: { snapshot in
//
//    print("inital data loaded so reload tableView!  \(snapshot.childrenCount)")
//    self.messagesTableView.reloadData()
//    self.initialLoad = false
//    })


    var posts = [Post]()

//    var statementArray = [ProfileStatement]()
//    var dailyRoutine3 = ProfileStatement(sender: "Andrew", statement: "My one year goals are to do x, y, and z.")
//    var oneYearGoals2 = ProfileStatement(sender: "Andrew", statement: "My one year goals are to do x, y, and z.")
//    var lifetime1 = ProfileStatement(sender: "Andrew", statement: "My lifetime goals will be to accomplish these x, y, and z.")
//    var vision0 = ProfileStatement(sender: "Andrew", statement: "My vision is to...")


    // Same property
    var userList = [ProfileStatement]()
    var profileArray = [ProfileUserData]()
    var ref: DatabaseReference!
    fileprivate var _refHandle: DatabaseHandle!



    var results = [ProfileDataResults]()
    var selectedResults = [ProfileDataModel]() // this will be used to stores the user's vision and goals





    // NEW USER LIST
    var myNewUserList = NewUserList()
    var newUserListArray: [String] = []


    let bruceLee = ProfileSelectedPerson(name: "Bruce Lee", bio: "Actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", advice: "\"Do not pray for an easy life, pray for the strength to endure a difficult one.\"", adviceURL: "www.a.com")

    let markDivine = ProfileSelectedPerson(name: "Mark Devine", bio: "Former Navy SEAL, and founder of SEALFIT and Unbeatable Mind podcast", advice: "\"To live an uncommon life, one needs learn uncommon disciplines.\"", adviceURL: "https://unbeatablemind.com/podcast/")

    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = markDivine.name
        bioTextLabel.text = markDivine.bio
        quoteTextLabel.text = markDivine.advice

        // NEW USER LIST
        newUserListArray = [myNewUserList.dailyRoutine, myNewUserList.oneYearGoal, myNewUserList.lifetimeGoal, myNewUserList.vision]



        // Header
//        profileHeaderView.layer.cornerRadius = 10
//        profileHeaderView.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
//        profileHeaderView.layer.shadowColor = UIColor.gray.cgColor
//        profileHeaderView.layer.shadowOffset = CGSize(width: 0, height: 8)
//        profileHeaderView.layer.shadowOpacity = 0.7
//        profileHeaderView.layer.shadowRadius = 4
//        profileHeaderView.layer.masksToBounds = false
//
//        // Profile Button
//        profileButton.layer.cornerRadius = 10
//        profileButton.layer.borderWidth = 1.0

//        UserService.posts(for: User.current) { (posts) in
//            self.posts = posts
//            self.tableView.reloadData()
//        }

//        statementArray.append(dailyRoutine3)
//        statementArray.append(oneYearGoals2)
//        statementArray.append(lifetime1)
//        statementArray.append(vision0)
//
//        print(statementArray)
//        print("???")
//        print(statementArray[0])
//        print(statementArray[1])
//        print(statementArray[2])
//        print(statementArray[3])


        profile3TableView.dataSource = self
        profile3TableView.delegate = self


        // Add profileArray indexes
        // Check order of statementArray[n] to make sure pulling correct text

        // Bruce Lee

        let bruceLeePassion = ProfileDataModel(category: "PASSION", title: "Bruce Lee: real living is living for others...", body: "Bruce Lee became a cultural icon because he actively lived his philosophy of self-actualization. His energy captivated audiences and motivated people to lead their best lives.", url: "https://www.fastcompany.com/3065979/my-dad-was-bruce-lee-heres-how-he-still-inspires-me-and-others-to-innovate", headerUserTextLabel: "Your passion:")

        let bruceLeePurpose = ProfileDataModel(category: "PURPOSE", title: "Your main purpose is to become your true self...", body: "\"Always be yourself; express yourself; have faith in yourself. Do not go out and look for a successful personality and duplicate it. Start from the very root of your being, which is \"how can I be me?\"", url: "https://www.brucelee.com/philosophies/", headerUserTextLabel: "Your purpose:")

        let bruceLeeTop5Goals = ProfileDataModel(category: "GOALS", title: "He believed in setting big goals...", body: "\"A goal is not always meant to be reached, it often serves simply as something to aim at.\"", url: "https://www.brucelee.com/podcast", headerUserTextLabel: "Your top 5 goals:")

        let bruceLeeVision = ProfileDataModel(category: "VISION", title: "At age 29, he wrote...", body: "\"My Definite Chief Aim: I, Bruce Lee, will be the first highest-paid oriental superstar in the United States. In return I will give the most exciting performances and render the best quality in the capacity of an actor. Starting 1970 I will achieve for fame and from then onward till the end of 1980 I will have in my possession $10,000,000. I will live the way I please and achieve inner harmony and happiness.\"", url: "https://qz.com/932799/bruce-lee-achieved-all-his-life-goals-by-32-by-committing-to-one-personality-trait/", headerUserTextLabel: "Your vision statement:")

        // Mark Divine

        let markDivinePassion = ProfileDataModel(category: "PASSION", title: "Drive provides a lifelong source of energy if focused on a passionate and worthy end.", body: "We can grow even stronger by driving passionately toward our targets and facing hard challenges, never quitting when the going gets unfathomable. \n\nWhat makes you feel as if your hair is on fire? This informs your purpose when intersected with your skills and talents.", url: "https://sealfit.com/", headerUserTextLabel: "Your passion:")

        let markDivisinPurpose = ProfileDataModel(category: "PURPOSE", title: "\"As a young man I felt lost...\"", body: "\"I had an MBA, a good job at a top-tier accounting firm, but was unhappy in spite of it. I stumbled into a matrial arts dojo, thinking it might help. Grinding my character down on the training floor was followed by polishing it in the meditation hall. \n\nSlowly and methodically I turned my body, mind, emotions, and intutition to a new vibration - one that allowed me to hear my inner voice. That voice told me I wasn't living my purpose, that my misery would endur until I could align with my purpose. \n\nWhat is it that you are really supposed to do with your life? What one thing would you focus on if you had nothing holding you back?\"", url: "https://sealfit.com/", headerUserTextLabel: "Your purpose:")

        let markDivineTop5Goals = ProfileDataModel(category: "GOALS", title: "Set SMART Goals: Specific, Measurable, Achievable, Realistic (but Challenging, and Time-bound", body: "When facing a monster challenge like Navy SEAL's Hell Week, reduce it to micro-goals. You can bite-chuncks of of an elephant long before swallowing the whole thing at once.", url: "https://sealfit.com/", headerUserTextLabel: "Your top 5 goals:")

        let markDivineVision = ProfileDataModel(category: "VISION", title: "A deeper awareness of what drives your behavior allow us to create a new vision and path that becomes our authentic destiny.", body: "Mark left behind the corporate world to pursue his vision to become an elite Navy SEAL officer. At 26 he graduated as honor-man (#1 ranked trainee) of his SEAL BUD/s class number 170. \n\n\"Hold a powerful vision of who you want to be at some time-certain future.  If you back the mental vision with massive action, do the work to root out negative blocks, and propel your vision with desire, belief and expectation, then surely you will become that person.\"", url: "https://sealfit.com/", headerUserTextLabel: "Your vision statement:")

        selectedResults.append(markDivinePassion)
        selectedResults.append(markDivisinPurpose)
        selectedResults.append(markDivineTop5Goals)
        selectedResults.append(markDivineVision)

        configureTableView()
        configureDatabase() // is the needed?
        retrieveProfileUserData()

    }

    func configureDatabase() {
        ref = Database.database().reference()
    }

//    func fetchUserList() {
//
//        _refHandle = ref.child(Constants.DbChild.ProfileUserData).observe(.childAdded) { (snapshot) in
//            if let dictionary = snapshot.value as? [String: AnyObject] {
//
//                print("Print Dictionary")
//                print(dictionary)
//                let user = ProfileStatement()
//                // Set it to the values we're getting from our dictionary
//                user.setValuesForKeys(dictionary)
//                self.userList.append(user) // add to the list
//
//                // display UI in main queue
//                performUIUpdatesOnMain({
//
//                    self.configureTableView()
//                    self.profile3TableView.reloadData()
//                })
//            }
//
//            print("Nil")
//        }
//    }

    func retrieveProfileUserData() {
        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        // 2 Write the data by setting the value for the location specified
        let currentUID = User.current.uid
        print(currentUID)

        // add .child(currentUID) so only current user can see their data

        _refHandle = ref.child(Constants.DbChild.ProfileUserData).child(currentUID).observe(.childAdded) { (snapshot) in
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
            let editedProfileUserData = NewUserList()
            editedProfileUserData.sender = sender
            editedProfileUserData.dailyRoutine = dailyRoutine
            editedProfileUserData.oneYearGoal = oneYearGoal
            editedProfileUserData.lifetimeGoal = lifetimeGoal
            editedProfileUserData.vision = vision
            editedProfileUserData.timestamp = timeStamp ?? ""

            self.newUserListArray = [editedProfileUserData.dailyRoutine,
                                     editedProfileUserData.oneYearGoal,
                                     editedProfileUserData.lifetimeGoal,
                                     editedProfileUserData.vision]

            print("Profile Array is SUCCESS: \(self.newUserListArray.count)")

            // re-configure table view and reload data in table view
            self.configureTableView()
            self.profile3TableView.reloadData()

        }
        print("Profile Array if ERROR: \(self.newUserListArray.count)")
    }

    func configureTableView() {
        profile3TableView.estimatedRowHeight = 50
        profile3TableView.rowHeight = UITableViewAutomaticDimension
    }

    // viewDidLayoutSubviews()
    // Called to notify the view controller that its view has just laid out its
    // subviews.
    // When the bounds change for a view controller's view, the view adjusts
    // the positions of its subviews and then the system calls this method.
    // However, this method being called does not indicate that the individual
    // layouts of the view's subviews have been adjusted. Each subview is
    // responsible for adjusting its own layout.
    // Your view controller can override this method to make changes after the
    // view lays out its subviews.
    // The default implementation of this method does nothing.
    /*
     https://useyourloaf.com/blog/variable-height-table-view-header/
     */
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        guard let headerView = profile3TableView.tableHeaderView else {
            return
        }

        // The table view header is created with the frame size set in
        // the Storyboard. Calculate the new size and reset the header
        // view to trigger the layout.
        // Calculate the minimum height of the header view that allows
        // the text label to fit its preferred width.
        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)

        if headerView.frame.size.height != size.height {
            headerView.frame.size.height = size.height

            // Need to set the header view property of the table view
            // to trigger the new layout. Be careful to only do this
            // once when the height changes or we get stuck in a layout loop.
            profile3TableView.tableHeaderView = headerView

            // Now that the table view header is sized correctly have
            // the table view redo its layout so that the cells are
            // correcly positioned for the new header size.
            // This only seems to be necessary on iOS 9.
            profile3TableView.layoutIfNeeded()
        }
    }


    @IBAction func learnMoreButtonTapped(_ sender: UIButton) {

        print("Learn more button tapped")
    }



    @IBAction func saveButtonTapped(_ sender: UIButton) {
        print("Print array count: \(newUserListArray.count)")
        print(newUserListArray)

//        let indexPath1 = NSIndexPath(row: 1, section: 0)
//        let cell1 = profile3TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath1 as IndexPath) as! ProfileTableViewCell
//
//        let indexPath2 = NSIndexPath(row: 2, section: 0)
//        let cell2 = profile3TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath2 as IndexPath) as! ProfileTableViewCell
//
//        let indexPath3 = NSIndexPath(row: 3, section: 0)
//        let cell3 = profile3TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath3 as IndexPath) as! ProfileTableViewCell
//
//        let indexPath4 = NSIndexPath(row: 4, section: 0)
//        let cell4 = profile3TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath4 as IndexPath) as! ProfileTableViewCell
//
//        print("Cell 1: \(cell1.userTextView.text)") // Currently, it prints the default text from the Main.Storyboard's textView
//        print("Cell 2: \(cell2.userTextView.text)") // Currently, it prints the default text from the Main.Storyboard's textView
//        print("Cell 3: \(cell3.userTextView.text)") // Currently, it prints the default text from the Main.Storyboard's textView
//        print("Cell 4: \(cell4.userTextView.text)") // Currently, it prints the default text from the Main.Storyboard's textView

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy"
        let currentDate = formatter.string(from: now)

        // data we want to save in our database
        let userDictionary = [
            Constants.ProfileUserData.Sender: Auth.auth().currentUser?.email,
            Constants.ProfileUserData.DailyRoutine: newUserListArray[0],
            Constants.ProfileUserData.OneYearGoal: newUserListArray[1],
            Constants.ProfileUserData.LifetimeGoal: newUserListArray[3],
            Constants.ProfileUserData.Vision: newUserListArray[3],
            Constants.ProfileUserData.TimeStamp: currentDate]

        sendProfileUserData(userDictionary)
    }

    func sendProfileUserData(_ userDictionary: [String:String?]) {

        let currentUID = User.current.uid
        print(currentUID)

        let messagesDB = ref.child(Constants.DbChild.ProfileUserData).child(currentUID)
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



    // This is the size of our header sections that we will use later on.
    let SectionHeaderHeight: CGFloat = 25

    enum TableSection: Int {
        case dailyRoutine = 0, oneYearGoal, lifetimeGoal, vision, total
    }

     var data = [TableSection: [[String: String]]]()

    // Data is an array of Dictionary of type [String: String]
    let UserData = [
        ["type": "dailyRoutine", "statement": "textDaily"],
        ["type": "oneYearGoal", "statement": "textOne"],
        ["type": "lifetimeGoal", "statement": "textLife"],
        ["type": "vision", "statement": "textVision"]
    ]






    func sortData() {
        data[.dailyRoutine] = UserData.filter({ $0["type"] == "dailyRoutine" })
        data[.oneYearGoal] = UserData.filter({ $0["type"] == "oneYearGoal" })
        data[.lifetimeGoal] = UserData.filter({ $0["type"] == "lifetimeGoal" })
        data[.vision] = UserData.filter({ $0["type"] == "vision" })
    }



    // As long as `total` is the last case in our TableSection enum,
    // this method will always be dynamically correct no mater how many table sections we add or remove.
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return TableSection.total.rawValue
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Using Swift's optional lookup we first check if there is a valid section of table.
        // Then we check that for the section there is data that goes with.
//        if let tableSection = TableSection(rawValue: section), let userData = data[tableSection] {
//            return userData.count
//        }
//
//        print("In here?")
//        return 0
        print("HOW MANY ROWS?")
        print(newUserListArray)
        print(newUserListArray.count)

        return TableSection.total.rawValue
    }

//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        // If we wanted to always show a section header regardless of whether or not there were rows in it,
//        // then uncomment this line below:
//        //return SectionHeaderHeight
//        // First check if there is a valid section of table.
//        // Then we check that for the section there is more than 1 row.
//        if let tableSection = TableSection(rawValue: section), let userData = data[tableSection], userData.count > 0 {
//            return SectionHeaderHeight
//        }
//
//        print("Are we here?")
//        return 0
//    }

//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: SectionHeaderHeight))
//        view.backgroundColor = UIColor(red: 253.0/255.0, green: 240.0/255.0, blue: 196.0/255.0, alpha: 1)
//        let label = UILabel(frame: CGRect(x: 15, y: 0, width: tableView.bounds.width - 30, height: SectionHeaderHeight))
//        label.font = UIFont.boldSystemFont(ofSize: 15)
//        label.textColor = UIColor.black
//        if let tableSection = TableSection(rawValue: section) {
//            switch tableSection {
//            case .dailyRoutine:
//                label.text = "Action"
//            case .oneYearGoal:
//                label.text = "Comedy"
//            case .lifetimeGoal:
//                label.text = "Drama"
//            case .vision:
//                label.text = "Indie"
//            default:
//                label.text = ""
//            }
//        }
//        view.addSubview(label)
//        return view
//    }

//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        // Similar to above, first check if there is a valid section of table.
//        // Then we check that for the section there is a row.
//        if let tableSection = TableSection(rawValue: indexPath.section), let statement = data[tableSection]?[indexPath.row] {
//            if let titleLabel = cell.viewWithTag(10) as? UILabel {
//                titleLabel.text = statement["statement"]
//            }
//            if let subtitleLabel = cell.viewWithTag(20) as? UILabel {
//                subtitleLabel.text = statement["statement"]
//            }
//        }
//        return cell
//    }




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
        cell.titleLabel.text = selectedResults[indexPath.row].title
        cell.bodyLabel.text = selectedResults[indexPath.row].body
        cell.headerUserTextViewLabel.text = selectedResults[indexPath.row].headerUserTextLabel

        cell.userTextView.text = newUserListArray[indexPath.row]
        // Set the delegate to be the VC when you create the cell
        cell.userTextView.delegate = self
        cell.userTextView.layer.borderWidth = 0.5

        // Line separator (extend to left)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero

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

        var v : UIView = textView
        repeat { v = v.superview! } while !(v is ProfileTableViewCell)
        let selectedCell = v as! ProfileTableViewCell // or UITableViewCell or whatever
        let selectedIndexPath = self.profile3TableView.indexPath(for: selectedCell)!
        // and now we have the index path! update the model

        print("Selected Row: \(selectedIndexPath.row)")
        print(selectedCell.userTextView.text)

        // Update Array
        newUserListArray[selectedIndexPath.row] = selectedCell.userTextView.text

        print("Print Updated Array: \(newUserListArray)")

    }

}

extension Profile3ViewController: UITextFieldDelegate {


}


