//
//  Profile3ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

// * Helen doesn't like the word "Vision"
// * Helen likes "Fears" instead of "Vision"

// Our timeline will retrieve post data from our database and display it to our user.

// Firebase push happens when use taps out of textView. But, when does the retrive happen.. in the viewDidLoad.

// Checkout Code With Chris's Question Bank Tutorial. Each question could be like each textView (Vision, Goals, etc.)

let bruceLee = ProfileSelectedPerson(name: "Bruce Lee", bio: "Actor, martial artist, philosopher, and founder of the martial art Jeet Kune Do", advice: "\"Do not pray for an easy life, pray for the strength to endure a difficult one.\"", adviceURL: "https://www.brucelee.com/podcast")

let markDivine = ProfileSelectedPerson(name: "Mark Devine", bio: "Former Navy SEAL, and founder of SEALFIT and Unbeatable Mind podcast", advice: "\"To live an uncommon life, one needs learn uncommon disciplines.\"", adviceURL: "https://unbeatablemind.com/podcast/")

let oprahWinfrey = ProfileSelectedPerson(name: "Oprah Winfrey", bio: "American television personality, actress, and entrepreneur", advice: "\"Turn your wounds into wisdom.\"", adviceURL: "https://www.youtube.com/results?search_query=oprah+winfrey")

let martinLutherKingJr = ProfileSelectedPerson(name: "Martin Luther King Jr.", bio: "an American minister and civil rights activist", advice: "What are you doing for others?", adviceURL: "https://www.youtube.com/results?search_query=martin+luther+king+jr")

let sophiaAmoruso = ProfileSelectedPerson(name: "Sophia Amoruso", bio: "founder of Nasty Gal and Girlboss", advice: "\"There are secret opportunities hidden inside every failure.\"", adviceURL: "https://www.girlboss.com/")

// Cells

// Bruce Lee

let bruceLeePassion = ProfileDataModel(category: "PASSION", title: "Real living is living for others...", body: "Bruce Lee became a cultural icon because he actively lived his philosophy of self-actualization. His energy captivated audiences and motivated people to lead their best lives.", url: "https://www.fastcompany.com/3065979/my-dad-was-bruce-lee-heres-how-he-still-inspires-me-and-others-to-innovate", headerUserTextLabel: "Your passion:")

let bruceLeePurpose = ProfileDataModel(category: "PURPOSE", title: "Your main purpose is to become your true self...", body: "\"Always be yourself; express yourself; have faith in yourself. Do not go out and look for a successful personality and duplicate it. Start from the very root of your being, which is \"how can I be me?\"", url: "https://www.brucelee.com/philosophies/", headerUserTextLabel: "Your purpose:")

let bruceLeeTop5Goals = ProfileDataModel(category: "GOALS", title: "He believed in setting big goals...", body: "\"A goal is not always meant to be reached, it often serves simply as something to aim at.\"", url: "https://www.brucelee.com/podcast", headerUserTextLabel: "Your top 5 goals:")

let bruceLeeVision = ProfileDataModel(category: "VISION", title: "At age 29, he wrote...", body: "\"My Definite Chief Aim: I, Bruce Lee, will be the first highest-paid oriental superstar in the United States. In return I will give the most exciting performances and render the best quality in the capacity of an actor. Starting 1970 I will achieve for fame and from then onward till the end of 1980 I will have in my possession $10,000,000. I will live the way I please and achieve inner harmony and happiness.\"", url: "https://qz.com/932799/bruce-lee-achieved-all-his-life-goals-by-32-by-committing-to-one-personality-trait/", headerUserTextLabel: "Your vision statement:")

// Mark Divine

let markDivinePassion = ProfileDataModel(category: "PASSION", title: "Drive provides a lifelong source of energy if focused on a passionate and worthy end.", body: "We can grow even stronger by driving passionately toward our targets and facing hard challenges, never quitting when the going gets unfathomable. \n\nWhat makes you feel as if your hair is on fire? This informs your purpose when intersected with your skills and talents.", url: "https://sealfit.com/", headerUserTextLabel: "Your passion:")

let markDivinePurpose = ProfileDataModel(category: "PURPOSE", title: "\"As a young man I felt lost...\"", body: "\"I had an MBA, a good job at a top-tier accounting firm, but was unhappy in spite of it. I stumbled into a matrial arts dojo, thinking it might help. Grinding my character down on the training floor was followed by polishing it in the meditation hall. \n\nSlowly and methodically I turned my body, mind, emotions, and intutition to a new vibration - one that allowed me to hear my inner voice. That voice told me I wasn't living my purpose, that my misery would endur until I could align with my purpose. \n\nWhat is it that you are really supposed to do with your life? What one thing would you focus on if you had nothing holding you back?\"", url: "https://sealfit.com/", headerUserTextLabel: "Your purpose:")

let markDivineTop5Goals = ProfileDataModel(category: "GOALS", title: "Set SMART Goals: Specific, Measurable, Achievable, Realistic (but Challenging, and Time-bound", body: "When facing a monster challenge like Navy SEAL's Hell Week, reduce it to micro-goals. You can bite-chuncks of of an elephant long before swallowing the whole thing at once.", url: "https://sealfit.com/", headerUserTextLabel: "Your top 5 goals:")

let markDivineVision = ProfileDataModel(category: "VISION", title: "A deeper awareness of what drives your behavior allow us to create a new vision and path that becomes our authentic destiny.", body: "Mark left behind the corporate world to pursue his vision to become an elite Navy SEAL officer. At 26 he graduated as honor-man (#1 ranked trainee) of his SEAL BUD/s class number 170. \n\n\"Hold a powerful vision of who you want to be at some time-certain future.  If you back the mental vision with massive action, do the work to root out negative blocks, and propel your vision with desire, belief and expectation, then surely you will become that person.\"", url: "https://sealfit.com/", headerUserTextLabel: "Your vision statement:")

// Oprah Winfrey

let oprahWinfreyPassion = ProfileDataModel(category: "PASSION", title: "If you don't know what your passion is, realize that one reason for your existence on earth is to find it.", body: "The opportunities for a girl born black in Mississippi in 1954 were limited. I wanted to be a teacher. And to be known for inspiring my students to be more than they thought they could be. I never imagined it would be on TV.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your passion:")

let oprahWinfreyPurpose = ProfileDataModel(category: "PURPOSE", title: "Everyone has a purpose...", body: "I believe there's a calling for all of us. I know that every human being has value and purpose. The real work of our lives is to become aware. And awakened. To answer the call.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your purpose:")

let oprahWinfreyTop5Goals = ProfileDataModel(category: "GOALS", title: "Oprah established goals by defining what she didn’t want...", body: "If you are stuck on establishing your next goal, take a look at your current situation–what are some things you want out of your life?", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your top 5 goals:")

let oprahWinfreyVision = ProfileDataModel(category: "VISION", title: "I had a vision of what living your best life could look like.", body: "Create the highest, grandest vision possible for your life, because you become what you believe.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your vision statement:")

// Martin Luther King, Jr

let martinLutherKingJrPassion = ProfileDataModel(category: "PASSION", title: "Put your passion to work...", body: "Through his activism and inspirational speeches King played a pivotal role in ending the legal segregation of African-American citizens in the United States. \n\nHe received the Nobel Peace Prize in 1964 and was assassinated in April 1968. \n\nKnow your own passion. What ideas and what kinds of activism fill you with strong, energetic emotions? These emotions may be pointing you toward your life’s work.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your passion:")

let martinLutherKingJrPurpose = ProfileDataModel(category: "PURPOSE", title: "Everyone has a purpose...", body: "I believe there's a calling for all of us. I know that every human being has value and purpose. The real work of our lives is to become aware. And awakened. To answer the call.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your purpose:")

let martinLutherKingJrTop5Goals = ProfileDataModel(category: "GOALS", title: "One of King's last speeches...", body: "I want to ask you a question, and that is: What is your life’s blueprint? \n\nNumber one in your life’s blueprint, should be a deep belief in your own dignity, your worth and your own somebodiness. Don’t allow anybody to make you fell that you’re nobody. Always feel that you count. \n\nSecondly, you must have the determination to achieve excellence. When you discover what you will be in your life, set out to do it as if God Almighty called you at this particular moment in history to do it. Don’t just set out to do a good job.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your top 5 goals:")

let martinLutherKingJrVision = ProfileDataModel(category: "VISION", title: "I Have a Dream...", body: "King had a vision of a society in which race was not an issue in how people were treated or in how they were allowed to live their lives. \n\nA key part of King’s vision, aside from a quest for racial equality, was the idea of non-violence; he refused to use violent actions in any of his protests, and taught his followers to do the same. This was a major influence on society at the time.", url: "https://www.youtube.com/results?search_query=oprah+winfrey", headerUserTextLabel: "Your vision statement:")

// Sophia Amoruso

let sophiaAmorusoPassion = ProfileDataModel(category: "PASSION", title: "Passion project...", body: "While she struggled with formal education, she had a passion for vintage clothing. At age 22 while working as a security guard, Amoruso opened an online eBay store, which she called Nasty Gal Vintage. \n\nIt quickly grew to be named one of \"the fastest growing companies\" by Inc. Magazine. However, Nasty Gal later filed for bankruptcy, decimating her fortune. In 2017, Amoruso founded Girlboss.", url: "https://www.girlboss.com/", headerUserTextLabel: "Your passion:")

let sophiaAmorusoPurpose = ProfileDataModel(category: "PURPOSE", title: "Be more purposeful...", body: "Amoruso says starting Girlboss was the first time in her life where she felt her opportunity in business and her purpose have been aligned. \"It's a really exciting thing, waking up every day to do that.\"", url: "https://www.girlboss.com/", headerUserTextLabel: "Your purpose:")

let sophiaAmorusoTop5Goals = ProfileDataModel(category: "GOALS", title: "Do things that terrify you...", body: "Continuing to move into the places that make us uncomfortable is what expands us and our capabilities. I've taken some really big risks in my life and I've seen great loss, but I have also seen great, great reward. Without saying yes to the things that we're terrified of and continuing to step into what life asks of us or create those big opportunities for ourselves, I think we're asleep at the wheel.", url: "https://www.girlboss.com/", headerUserTextLabel: "Your top 5 goals:")

let sophiaAmorusoVision = ProfileDataModel(category: "VISION", title: "Girlboss' vision...", body: "I want to entertain, educate and inform women to have conversations with us and with one another about redefining success. \n\nYes, that means work, money and productivity, but it also means health, personal care, mental health, relationships, sex and other topics that maybe historically weren’t what the dudes who built the paradigm of success that we all live in talk about.", url: "https://www.girlboss.com/", headerUserTextLabel: "Your vision statement:")


// View Controller

class Profile3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - IBOutlets

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var bioTextLabel: UILabel!
    @IBOutlet weak var quoteTextLabel: UILabel!

    @IBOutlet weak var profile3TableView: UITableView!

    @IBOutlet weak var profileHeaderView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var saveButton: EditButton!

    // MARK: - Properites
    var profileItem = ProfileItem(timestamp: "", passion: "", purpose: "", goals: "", fears: "")
    var profileItemArray: [String] = []

    var userList = [ProfileStatement]()
    var profileArray = [ProfileUserData]()
    var ref: DatabaseReference!
    fileprivate var _refHandle: DatabaseHandle!

    var canEditText = false

    var results = [ProfileDataResults]()
    var selectedResults = [ProfileDataModel]() // this will be used to stores the user's vision and goals

    // Time and Date
    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    // initial setup
    var selectedPersonProfile = ProfileSelectedPerson(name: "", bio: "", advice: "", adviceURL: "")

    // MARK: - Lifecycle Methods

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if internetConnected() {
            setupUI()
        } else {
            performUIUpdatesOnMain {
                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
            }
        }
    }

    // MARK: - Methods

    func setupUI() {

        SVProgressHUD.show()

        profileItemArray = [profileItem.passion,
                            profileItem.purpose,
                            profileItem.goals,
                            profileItem.fears]

        retrieveProfileUserData()

        dayOfWeekAndHour()

        profile3TableView.dataSource = self
        profile3TableView.delegate = self

        configureTableView()
        configureDatabase()
    }

    func dayOfWeekAndHour() {
        let dayOfWeek = calendar.component(.weekday, from: date)
//        let hour = calendar.component(.hour, from: date)

        switch dayOfWeek {
        case 1: // Sun
            print("today is Sunday")
            displaySelectedPersonProfile(person: martinLutherKingJr)
            selectedResults.append(martinLutherKingJrPassion)
            selectedResults.append(martinLutherKingJrPurpose)
            selectedResults.append(martinLutherKingJrTop5Goals)
            selectedResults.append(martinLutherKingJrVision)
        case 2:
            print("today is Monday")
            displaySelectedPersonProfile(person: bruceLee)
            selectedResults.append(bruceLeePassion)
            selectedResults.append(bruceLeePurpose)
            selectedResults.append(bruceLeeTop5Goals)
            selectedResults.append(bruceLeeVision)
        case 3:
            print("today is Tuesday")
            displaySelectedPersonProfile(person: oprahWinfrey)
            selectedResults.append(oprahWinfreyPassion)
            selectedResults.append(oprahWinfreyPurpose)
            selectedResults.append(oprahWinfreyTop5Goals)
            selectedResults.append(oprahWinfreyVision)
        case 4:
            print("today is Wednesday")
            displaySelectedPersonProfile(person: markDivine)
            selectedResults.append(markDivinePassion)
            selectedResults.append(markDivinePurpose)
            selectedResults.append(markDivineTop5Goals)
            selectedResults.append(markDivineVision)
        case 5:
            print("today is Thursday")
            displaySelectedPersonProfile(person: sophiaAmoruso)
            selectedResults.append(sophiaAmorusoPassion)
            selectedResults.append(sophiaAmorusoPurpose)
            selectedResults.append(sophiaAmorusoTop5Goals)
            selectedResults.append(sophiaAmorusoVision)
        case 6:
            print("today is Friday")
            displaySelectedPersonProfile(person: bruceLee)
            selectedResults.append(bruceLeePassion)
            selectedResults.append(bruceLeePurpose)
            selectedResults.append(bruceLeeTop5Goals)
            selectedResults.append(bruceLeeVision)
        case 7:
            print("today is Saturday")
            displaySelectedPersonProfile(person: oprahWinfrey)
            selectedResults.append(oprahWinfreyPassion)
            selectedResults.append(oprahWinfreyPurpose)
            selectedResults.append(oprahWinfreyTop5Goals)
            selectedResults.append(oprahWinfreyVision)
        default:
            print("error with dayAndHour")
        }
    }

    func displaySelectedPersonProfile(person: ProfileSelectedPerson) {
        // Randomize the selected profile
        selectedPersonProfile = person

        fullNameLabel.text = selectedPersonProfile.name
        bioTextLabel.text = selectedPersonProfile.bio
        quoteTextLabel.text = selectedPersonProfile.advice

    }

    // May not need this anymore
    func configureDatabase() {
        ref = Database.database().reference()
    }

    func retrieveProfileUserData() {
        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        // 2 Write the data by setting the value for the location specified

        // add .child(currentUID) so only current user can see their data

        ProfileService.readProfileItemAll(for: User.current) { (retrievedProfileItem) in
            self.profileItem = retrievedProfileItem

            // Update array with retrieved data
            self.profileItemArray = [self.profileItem.passion,
                                     self.profileItem.purpose,
                                     self.profileItem.goals,
                                     self.profileItem.fears]

            self.configureTableView()
            self.profile3TableView.reloadData()
            SVProgressHUD.dismiss()
        }
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

        setupHeightOfTableHeaderView()

    }

    func setupHeightOfTableHeaderView() {
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

    func changeTextViewBoarderColor(_ cell: ProfileTableViewCell) {

        print("changeTextViewBoarderColor()")
        if canEditText == true {
            cell.userTextView.layer.borderColor = UIColor.red.cgColor
            cell.userTextView.layer.borderWidth = 2
        }
    }

    // OLD CODE:
//    func sendProfileUserData(_ userDictionary: [String:String?]) {
//
//        let messagesDB = ref.child(FirebaseConstants.DbChild.ProfileUserData).child(User.current.uid)
//        // like specifying "/Messages/[some_auto_id]"
//        // Then, .setValue, sets a value to the key (key value pair)
//        messagesDB.childByAutoId().setValue(userDictionary) {
//            (error, reference) in
//            // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
//            if error != nil {
//                print(error!)
//            } else {
//                print("Message saved successfully")
//                print(reference)
//            }
//        }
//    }

    // Toggles button on/off
    func activateEditButton(bool: Bool) {
        canEditText = bool
        let title = bool ? "SAVE" : "EDIT"
        // enable textView to be editable
    }

    // MARK: - IBActions

    @IBAction func learnMoreButtonTapped(_ sender: UIButton) {

        print("Learn more button tapped")

        let app = UIApplication.shared

        if let url = selectedPersonProfile.adviceURL {

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

    @IBAction func saveButtonTapped(_ sender: UIButton) {

        activateEditButton(bool: !canEditText)

        if canEditText == true {
            print("EDITing is enabled")
            self.profile3TableView.reloadData()
            self.saveButton.setTitleColor(UIColor.red, for: .normal)
            self.saveButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        } else {
            print("stop all editing")
            self.view.endEditing(true)
            self.profileHeaderView.backgroundColor = UIColor.clear


            let now = Date()
            let formatter = DateFormatter()
            // initially set the format based on your datepicker date
            formatter.dateFormat = "MMMM d, yyyy"
            let currentDate = formatter.string(from: now)

            // Input array of user data into property, write to Firebase
            let newProfileItem = ProfileItem(timestamp: currentDate,
                                             passion: profileItemArray[0],
                                             purpose: profileItemArray[1],
                                             goals: profileItemArray[2],
                                             fears: profileItemArray[3])

            ProfileService.writeProfileItem(for: User.current, profileItem: newProfileItem, success: { (success) in
                if success == true {
                    print("SUCCESS WRITING PROFILE USER DATA: \(success)")
                } else if success == false {
                    self.createAlert(title: "Error", message: "Unable to write to database. Check your Internet connection and try again.")
                }
            })
        }
    }


    // MARK: - Table View Methods

    // As long as `total` is the last case in our TableSection enum,
    // this method will always be dynamically correct no mater how many table sections we add or remove.

    enum TableSection: Int {
        // I could use .count on the array of items
        case purpose = 0, passion, goals, fears, total
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableSection.total.rawValue
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell

        // Line separator (extend to left)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero

        // FAMOUS PERSON DATA
        cell.userTextView.layer.borderColor = UIColor.darkGray.cgColor
        cell.userTextView.layer.borderWidth = 2
        cell.userTextView.delegate = self

        cell.categoryLabel.text = selectedResults[indexPath.row].category
        cell.titleLabel.text = selectedResults[indexPath.row].title
        cell.bodyLabel.text = selectedResults[indexPath.row].body
        cell.headerUserTextViewLabel.text = selectedResults[indexPath.row].headerUserTextLabel

        // USER DATA - array
        cell.userTextView.text = profileItemArray[indexPath.row]

        // Set the delegate to be the VC when you create the cell
        cell.userTextView.delegate = self
        cell.userTextView.layer.borderWidth = 0.5
        changeTextViewBoarderColor(cell)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt indexPath")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


extension Profile3ViewController: UITextViewDelegate {

    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        if canEditText == false {
            return false
        } else {
            return true
        }
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
    }

    func textViewDidChange(_ textView: UITextView) {
        textViewWithDynamicHeightInsideTableViewCell()
    }

    func textViewWithDynamicHeightInsideTableViewCell () {
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
    }


    func textViewDidEndEditing(_ textView: UITextView) {
        print("textViewDidEndEditing")

        var v : UIView = textView
        repeat { v = v.superview! } while !(v is ProfileTableViewCell)
        let selectedCell = v as! ProfileTableViewCell // or UITableViewCell or whatever

        guard let selectedIndexPath = self.profile3TableView.indexPath(for: selectedCell) else {
            return
        }
        // and now we have the index path! update the model

        print("Selected Cell: \(selectedIndexPath.row)")
        print("Selected Cell: \(selectedCell.userTextView.text)")

        // Update Array with latest user textField.text
        profileItemArray[selectedIndexPath.row] = selectedCell.userTextView.text

        print("Print Updated Array: \(profileItemArray)")
    }

}





