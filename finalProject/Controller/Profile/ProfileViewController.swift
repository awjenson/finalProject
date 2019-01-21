//
//  Profile3ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
//import Firebase
//import SVProgressHUD
//
//class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    // MARK: - IBOutlets
//
//    @IBOutlet weak var fullNameLabel: UILabel!
//    @IBOutlet weak var bioTextLabel: UILabel!
//    @IBOutlet weak var quoteTextLabel: UILabel!
//
//    @IBOutlet weak var mediaTitleLabel: UILabel!
//
//    @IBOutlet weak var profileTableView: UITableView!
//    @IBOutlet weak var profileTableViewFooter: UIView!
//
//    @IBOutlet weak var profileHeaderView: UIView!
//    @IBOutlet weak var profileButton: UIButton!
//    @IBOutlet weak var saveButton: EditButton!
//
//    @IBOutlet weak var quoteCardView: CardView!
//    @IBOutlet weak var mediaCardView: CardView!
//
//
//
//
//    // MARK: - Properites
//    var userProfileItem = ProfileItem(timestamp: "", passion: "", purpose: "", goals: "", fears: "")
//    var userProfileArray: [String] = []
//
//    var userList = [ProfileStatement]()
//    var profileArray = [ProfileUserData]()
//
//    var canEditText = false
//
//    var results = [ProfileDataResults]()
//    var selectedResults = [ProfileDataModel]() // this will be used to stores the user's vision and goals
//
//    // Time and Date
//    let formatter = DateFormatter()
//    let date = Date()
//    let calendar = Calendar.current
//
//    // Card Color UI
//    var topicColor: UIColor?
//    var cellHeaderColor: [UIColor] = []
//
//
//    // initial setup
//    var selectedPersonProfile = ProfileSelectedPerson(name: "", bio: "", advice: "", description: "", time: "", url: "")
//
//    let refreshControl = UIRefreshControl()
//
//    var currentKeyboardHeight:CGFloat = 10
//
//    // MARK: - Lifecycle Methods
//
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//
//        let keyboardHeight = KeyboardService.keyboardHeight()
//        let keyboardSize = KeyboardService.keyboardSize()
//        currentKeyboardHeight = keyboardHeight
////
////        print("keyboardHeight \(keyboardHeight)")
////        profileTableViewFooter.frame.size.height = keyboardHeight
//
//        // Add notification observers
////        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)),
////                                               name: NSNotification.Name.UIKeyboardWillShow, object: nil)
////        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)),
////                                               name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        if internetConnected() {
//            // Will retrieve profile user data in beta version
////            retrieveProfileUserData()
//        } else {
//            performUIUpdatesOnMain {
//                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
//            }
//        }
//        setupUI()
//    }
//
////    override open func viewWillDisappear(_ animated: Bool) {
////        super.viewWillDisappear(true)
//////        NotificationCenter.default.removeObserver(self)
////    }
//
//    // MARK: - Methods
//
//    func setupUI() {
//
////        userProfileArray = [userProfileItem.passion,
////                            userProfileItem.purpose,
////                            userProfileItem.goals,
////                            userProfileItem.fears]
//
//        dayOfWeekAndHour()
//
//        profileTableView.dataSource = self
//        profileTableView.delegate = self
//
//        configureTableView()
//
//        setupRefreshControl()
//    }
//
//    func colorOfUI(_ hour: Int) {
//
//        switch hour {
//        case 0...4:
//            topicColor = NowConstants.HeaderIndigo.color900
//            cellHeaderColor = [NowConstants.HeaderIndigo.color800,
//                               NowConstants.HeaderIndigo.color700,
//                               NowConstants.HeaderIndigo.color600,
//                               NowConstants.HeaderIndigo.color500,
//                               NowConstants.HeaderIndigo.color400,
//                               NowConstants.HeaderIndigo.color300,
//                               NowConstants.HeaderIndigo.color200,]
//        case 5...8:
//            topicColor = NowConstants.HeaderAmber.color900
//            cellHeaderColor = [NowConstants.HeaderAmber.color800,
//                               NowConstants.HeaderAmber.color700,
//                               NowConstants.HeaderAmber.color600,
//                               NowConstants.HeaderAmber.color500,
//                               NowConstants.HeaderAmber.color400,
//                               NowConstants.HeaderAmber.color300,
//                               NowConstants.HeaderAmber.color200,]
//        case 9..<11:
//            topicColor = NowConstants.HeaderGreen.color900
//            cellHeaderColor = [NowConstants.HeaderGreen.color800,
//                               NowConstants.HeaderGreen.color700,
//                               NowConstants.HeaderGreen.color600,
//                               NowConstants.HeaderGreen.color500,
//                               NowConstants.HeaderGreen.color400,
//                               NowConstants.HeaderGreen.color300,
//                               NowConstants.HeaderGreen.color200,]
//        case 11..<14:
//            topicColor = NowConstants.HeaderCyan.color900
//            cellHeaderColor = [NowConstants.HeaderCyan.color800,
//                               NowConstants.HeaderCyan.color700,
//                               NowConstants.HeaderCyan.color600,
//                               NowConstants.HeaderCyan.color500,
//                               NowConstants.HeaderCyan.color400,
//                               NowConstants.HeaderCyan.color300,
//                               NowConstants.HeaderCyan.color200,]
//        case 14...16:
//            topicColor = NowConstants.HeaderTeal.color900
//            cellHeaderColor = [NowConstants.HeaderTeal.color800,
//                               NowConstants.HeaderTeal.color700,
//                               NowConstants.HeaderTeal.color600,
//                               NowConstants.HeaderTeal.color500,
//                               NowConstants.HeaderTeal.color400,
//                               NowConstants.HeaderTeal.color300,
//                               NowConstants.HeaderTeal.color200,]
//        case 17...20:
//            topicColor = NowConstants.HeaderRed.color900
//            cellHeaderColor = [NowConstants.HeaderRed.color800,
//                               NowConstants.HeaderRed.color700,
//                               NowConstants.HeaderRed.color600,
//                               NowConstants.HeaderRed.color500,
//                               NowConstants.HeaderRed.color400,
//                               NowConstants.HeaderRed.color300,
//                               NowConstants.HeaderRed.color200,]
//        case 21..<24:
//            topicColor = NowConstants.HeaderBlue.color900
//            cellHeaderColor = [NowConstants.HeaderBlue.color800,
//                               NowConstants.HeaderBlue.color700,
//                               NowConstants.HeaderBlue.color600,
//                               NowConstants.HeaderBlue.color500,
//                               NowConstants.HeaderBlue.color400,
//                               NowConstants.HeaderBlue.color300,
//                               NowConstants.HeaderBlue.color200,]
//        default:
//            print("ERROR with TopicColor and cellHeaderColor")
//        }
//    }
//
//    func setupRefreshControl() {
//
//        // add pull to refresh
//        refreshControl.addTarget(self, action: #selector(reloadProfile), for: .valueChanged)
//        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
//        profileTableView.addSubview(refreshControl)
//    }
//
//    @objc func reloadProfile() {
//
//        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
//        if self.refreshControl.isRefreshing {
//            // Reload time based array. Currently not using this (will add for beta release)
////            retrieveProfileUserData()
//            self.refreshControl.endRefreshing()
//        }
//        self.profileTableView.reloadData()
//    }
//
//    func dayOfWeekAndHour() {
//        let dayOfWeek = calendar.component(.weekday, from: date)
//        let hour = calendar.component(.hour, from: date)
//
//        colorOfUI(hour)
//
//        switch dayOfWeek {
//        case 1: // Sun
//            print("today is Sunday")
//            displaySelectedPersonProfile(person: AdviceData.martinLutherKingJr)
//            selectedResults.append(AdviceData.martinLutherKingJrPassion)
//            selectedResults.append(AdviceData.martinLutherKingJrPurpose)
//            selectedResults.append(AdviceData.martinLutherKingJrTop5Goals)
//            selectedResults.append(AdviceData.martinLutherKingJrVision)
//        case 2:
//            print("today is Monday")
//            displaySelectedPersonProfile(person: AdviceData.bruceLee)
//            selectedResults.append(AdviceData.bruceLeePassion)
//            selectedResults.append(AdviceData.bruceLeePurpose)
//            selectedResults.append(AdviceData.bruceLeeTop5Goals)
//            selectedResults.append(AdviceData.bruceLeeVision)
//        case 3:
//            print("today is Tuesday")
//            displaySelectedPersonProfile(person: AdviceData.oprahWinfrey)
//            selectedResults.append(AdviceData.oprahWinfreyPassion)
//            selectedResults.append(AdviceData.oprahWinfreyPurpose)
//            selectedResults.append(AdviceData.oprahWinfreyTop5Goals)
//            selectedResults.append(AdviceData.oprahWinfreyVision)
//        case 4:
//            print("today is Wednesday")
//            displaySelectedPersonProfile(person: AdviceData.markDivine)
//            selectedResults.append(AdviceData.markDivinePassion)
//            selectedResults.append(AdviceData.markDivinePurpose)
//            selectedResults.append(AdviceData.markDivineTop5Goals)
//            selectedResults.append(AdviceData.markDivineVision)
//        case 5:
//            print("today is Thursday")
//            displaySelectedPersonProfile(person: AdviceData.sophiaAmoruso)
//            selectedResults.append(AdviceData.sophiaAmorusoPassion)
//            selectedResults.append(AdviceData.sophiaAmorusoPurpose)
//            selectedResults.append(AdviceData.sophiaAmorusoTop5Goals)
//            selectedResults.append(AdviceData.sophiaAmorusoVision)
//        case 6:
//            print("today is Friday")
//            displaySelectedPersonProfile(person: AdviceData.bruceLee)
//            selectedResults.append(AdviceData.bruceLeePassion)
//            selectedResults.append(AdviceData.bruceLeePurpose)
//            selectedResults.append(AdviceData.bruceLeeTop5Goals)
//            selectedResults.append(AdviceData.bruceLeeVision)
//        case 7:
//            print("today is Saturday")
//            displaySelectedPersonProfile(person: AdviceData.oprahWinfrey)
//            selectedResults.append(AdviceData.oprahWinfreyPassion)
//            selectedResults.append(AdviceData.oprahWinfreyPurpose)
//            selectedResults.append(AdviceData.oprahWinfreyTop5Goals)
//            selectedResults.append(AdviceData.oprahWinfreyVision)
//        default:
//            print("error with dayAndHour")
//        }
//    }
//
//    func displaySelectedPersonProfile(person: ProfileSelectedPerson) {
//        selectedPersonProfile = person
//
//        // Quote
//        fullNameLabel.text = selectedPersonProfile.name
//        bioTextLabel.text = selectedPersonProfile.bio
//        quoteTextLabel.text = selectedPersonProfile.advice
//
//        // Media
//        mediaTitleLabel.text = selectedPersonProfile.description
//    }
//
//
//    func retrieveProfileUserData() {
//
//        SVProgressHUD.show()
//        // listen for new messages in the firebase database with 'observe'
//        // Configure database to sync messages
//        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
//        // ask Firebase to 'observe' for any new child's events ('childAdded')
//
//        // 2 Write the data by setting the value for the location specified
//
//        // add .child(currentUID) so only current user can see their data
//
//        ProfileService.readProfileItemAll(for: User.current) { (retrievedProfileItem) in
//
//            self.userProfileItem = retrievedProfileItem
//
//            // Update array with retrieved data
//            self.userProfileArray = [self.userProfileItem.passion,
//                                     self.userProfileItem.purpose,
//                                     self.userProfileItem.goals,
//                                     self.userProfileItem.fears]
//
//            self.configureTableView()
//            self.profileTableView.reloadData()
//            SVProgressHUD.dismiss()
//        }
//    }
//
//
//
//
//    func configureTableView() {
//        profileTableView.estimatedRowHeight = 50
//        profileTableView.rowHeight = UITableViewAutomaticDimension
//        profileTableView.allowsSelection = false
//        profileTableView.separatorStyle = .none
//
//    }
//
//    // viewDidLayoutSubviews()
//    // Called to notify the view controller that its view has just laid out its
//    // subviews.
//    // When the bounds change for a view controller's view, the view adjusts
//    // the positions of its subviews and then the system calls this method.
//    // However, this method being called does not indicate that the individual
//    // layouts of the view's subviews have been adjusted. Each subview is
//    // responsible for adjusting its own layout.
//    // Your view controller can override this method to make changes after the
//    // view lays out its subviews.
//    // The default implementation of this method does nothing.
//    /*
//     https://useyourloaf.com/blog/variable-height-table-view-header/
//     */
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        setupHeightOfTableHeaderView()
//
//    }
//
//    func setupHeightOfTableHeaderView() {
//        guard let headerView = profileTableView.tableHeaderView else {
//            return
//        }
//
//        // The table view header is created with the frame size set in
//        // the Storyboard. Calculate the new size and reset the header
//        // view to trigger the layout.
//        // Calculate the minimum height of the header view that allows
//        // the text label to fit its preferred width.
//        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
//
//        if headerView.frame.size.height != size.height {
//            headerView.frame.size.height = size.height
//
//            // Need to set the header view property of the table view
//            // to trigger the new layout. Be careful to only do this
//            // once when the height changes or we get stuck in a layout loop.
//            profileTableView.tableHeaderView = headerView
//
//            // Now that the table view header is sized correctly have
//            // the table view redo its layout so that the cells are
//            // correcly positioned for the new header size.
//            // This only seems to be necessary on iOS 9.
//            profileTableView.layoutIfNeeded()
//        }
//
//
//    }
//
//    func changeTextViewBoarderColor(_ cell: ProfileTableViewCell) {
//        if canEditText == true {
//            cell.userTextView.layer.borderColor = UIColor.red.cgColor
//            cell.userTextView.layer.borderWidth = 2
//        }
//    }
//
//    // Toggles button on/off
//    func activateEditButton(bool: Bool) {
//        canEditText = bool
//        print("canEditText \(canEditText)")
//    }
//
//    //MARK: - getKayboardHeight
////    // Source: http://www.iostutorialjunction.com/2017/07/Programmatically-get-height-of-keyboard-in-swift-3-language-in-iOS-app-Tutorial.html
////    @objc func keyboardWillShow(notification: Notification) {
////        let userInfo:NSDictionary = notification.userInfo! as NSDictionary
////        let keyboardFrame:NSValue = userInfo.value(forKey: UIKeyboardFrameEndUserInfoKey) as! NSValue
////        let keyboardRectangle = keyboardFrame.cgRectValue
////        let keyboardHeight = keyboardRectangle.height
////        // do whatever you want with this keyboard height
////        print("currentKeyboardHeight: \(keyboardHeight)")
////        profileTableViewFooter.frame.size.height = keyboardHeight
////    }
////
////    @objc func keyboardWillHide(notification: Notification) {
////        // keyboard is dismissed/hidden from the screen
////        profileTableViewFooter.frame.size.height = 10
////    }
//
//
//    // MARK: - IBActions
//
//    @IBAction func learnMoreButtonTapped(_ sender: UIButton) {
//
//        print("Learn more button tapped")
//
//        let app = UIApplication.shared
//
//        if let url = selectedPersonProfile.url {
//
//            // print: true or false
//            print("verifyURL: \(verifyUrl(urlString: url))")
//
//            if verifyUrl(urlString: url) == true {
//                performUIUpdatesOnMain {
//                    app.open(URL(string:url)!)
//                }
//            } else {
//                performUIUpdatesOnMain {
//                    self.createAlert(title: "Could not open URL", message: "Check Internet connection and try again.")
//                }
//            }
//        }
//    }
//
////    @IBAction func saveButtonTapped(_ sender: UIButton) {
////
////        activateEditButton(bool: !canEditText)
////
////
////
////        if canEditText {
////            profileTableViewFooter.frame.size.height = currentKeyboardHeight
////            profile3TableView.reloadData()
////            saveButton.setTitleColor(UIColor.red, for: .normal)
////            saveButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
////        } else {
////            profileTableViewFooter.frame.size.height = 10
////            view.endEditing(true)
////            saveButton.setTitleColor(UIColor.init(red: 0, green: 122/255, blue: 1, alpha: 1), for: .normal)
////            saveButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
////
////            let now = Date()
////            let formatter = DateFormatter()
////            // initially set the format based on your datepicker date
////            formatter.dateFormat = "MMMM d, yyyy h:mm a"
////            let currentDate = formatter.string(from: now)
////
////            // Input array of user data into property, write to Firebase
////            let newProfileItem = ProfileItem(timestamp: currentDate,
////                                             passion: userProfileArray[0],
////                                             purpose: userProfileArray[1],
////                                             goals: userProfileArray[2],
////                                             fears: userProfileArray[3])
////
////            ProfileService.writeProfileItem(for: User.current, profileItem: newProfileItem, success: { (success) in
////                if success == true {
////                    return
////                } else if success == false {
////                    self.createAlert(title: "Error", message: "Unable to write to database. Check your Internet connection and try again.")
////                }
////            })
////        }
////    }
//
//
//    // MARK: - Table View Methods
//
//    // As long as `total` is the last case in our TableSection enum,
//    // this method will always be dynamically correct no mater how many table sections we add or remove.
//
//    enum TableSection: Int {
//        // I could use .count on the array of items
//        case purpose = 0, passion, goals, fears, total
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return TableSection.total.rawValue
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileTableViewCell
//
//        // Line separator (extend to left)
////        cell.preservesSuperviewLayoutMargins = false
////        cell.separatorInset = UIEdgeInsets.zero
////        cell.layoutMargins = UIEdgeInsets.zero
//
//        // FAMOUS PERSON DATA
////        cell.userTextView.layer.borderColor = UIColor.darkGray.cgColor
////        cell.userTextView.layer.borderWidth = 2
////        cell.userTextView.delegate = self
//
//        cell.categoryLabel.text = selectedResults[indexPath.row].category
//        cell.titleLabel.text = selectedResults[indexPath.row].title
//        cell.bodyLabel.text = selectedResults[indexPath.row].body
//
//        // MARK: - Removed because I'm no longer including user text
////        cell.headerUserTextViewLabel.text = selectedResults[indexPath.row].headerUserTextLabel
//
////        // USER DATA - array
////        cell.userTextView.text = userProfileArray[indexPath.row]
////        // Set the delegate to be the VC when you create the cell
////        cell.userTextView.delegate = self
////        cell.userTextView.layer.borderWidth = 0.5
////        changeTextViewBoarderColor(cell)
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//
//    // MARK: - TableViewCellDelegate methods
//
//
//
//
//
//}
//
//
//extension ProfileViewController: UITextViewDelegate {
//
//    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
//        if canEditText == false {
//            return false
//        } else {
//            return true
//        }
//    }
//
//    func textViewDidChange(_ textView: UITextView) {
//        textViewWithDynamicHeightInsideTableViewCell()
//    }
//
//    func textViewWithDynamicHeightInsideTableViewCell () {
//        /*
//         According to article there is a UI bug, added code to fix it
//         http://candycode.io/self-sizing-uitextview-in-a-uitableview-using-auto-layout-like-reminders-app/
//         */
//        let currentOffset = profileTableView.contentOffset
//        UIView.setAnimationsEnabled(false)
//        profileTableView.beginUpdates()
//        profileTableView.endUpdates()
//        UIView.setAnimationsEnabled(true)
//        profileTableView.setContentOffset(currentOffset, animated: false)
//    }
//
//    func textViewDidBeginEditing(_ textView: UITextView) {
//
//        // Only created this code to test (print statement)
//        var v : UIView = textView
//        repeat { v = v.superview! } while !(v is ProfileTableViewCell)
//        let selectedCell = v as! ProfileTableViewCell // or UITableViewCell or whatever
//
//        guard let selectedIndexPath = self.profileTableView.indexPath(for: selectedCell) else {
//            return
//        }
//
//        print("Entered IndexPath: \(selectedIndexPath)")
//    }
//
//    func textViewDidEndEditing(_ textView: UITextView) {
//
//        print("$$$")
//        print("textViewDidEndEditing (Exited IndexPath)")
//        var v : UIView = textView
//        repeat { v = v.superview! } while !(v is ProfileTableViewCell)
//        let selectedCell = v as! ProfileTableViewCell // or UITableViewCell or whatever
//
//        print("%%%")
//        print(selectedCell)
//        print("&&&")
//        guard let selectedIndexPath = self.profileTableView.indexPath(for: selectedCell) else {
//            return
//        }
//
//        print("Exited IndexPath: \(selectedIndexPath)")
//
//        // Update Array with latest user textField.text
//        userProfileArray[selectedIndexPath.row] = selectedCell.userTextView.text
//        print(userProfileArray)
//        print("^^^")
//    }
//}
