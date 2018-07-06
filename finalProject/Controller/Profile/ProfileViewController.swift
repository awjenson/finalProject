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

class Profile3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - IBOutlets

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var bioTextLabel: UILabel!
    @IBOutlet weak var quoteTextLabel: UILabel!

    @IBOutlet weak var mediaTitleLabel: UILabel!

    @IBOutlet weak var profile3TableView: UITableView!
    @IBOutlet weak var profileTableViewFooter: UIView!

    @IBOutlet weak var profileHeaderView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var saveButton: EditButton!



    // MARK: - Properites
    var userProfileItem = ProfileItem(timestamp: "", passion: "", purpose: "", goals: "", fears: "")
    var userProfileArray: [String] = []

    var userList = [ProfileStatement]()
    var profileArray = [ProfileUserData]()

    var canEditText = false

    var results = [ProfileDataResults]()
    var selectedResults = [ProfileDataModel]() // this will be used to stores the user's vision and goals

    // Time and Date
    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    // initial setup
    var selectedPersonProfile = ProfileSelectedPerson(name: "", bio: "", advice: "", description: "", time: "", url: "")

    let refreshControl = UIRefreshControl()

    var currentKeyboardHeight:CGFloat = 10

    // MARK: - Lifecycle Methods

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        let keyboardHeight = KeyboardService.keyboardHeight()
        let keyboardSize = KeyboardService.keyboardSize()
        currentKeyboardHeight = keyboardHeight

        print("keyboardHeight \(keyboardHeight)")
        profileTableViewFooter.frame.size.height = keyboardHeight

        // Add notification observers
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)),
                                               name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if internetConnected() {
            SVProgressHUD.show()
            retrieveProfileUserData()
        } else {
            performUIUpdatesOnMain {
                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
            }
        }
        setupUI()
    }

    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Methods

    func setupUI() {

        userProfileArray = [userProfileItem.passion,
                            userProfileItem.purpose,
                            userProfileItem.goals,
                            userProfileItem.fears]

        dayOfWeekAndHour()

        profile3TableView.dataSource = self
        profile3TableView.delegate = self

        configureTableView()

        setupRefreshControl()
    }

    func setupRefreshControl() {

        // add pull to refresh
        refreshControl.addTarget(self, action: #selector(reloadProfile), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        profile3TableView.addSubview(refreshControl)
    }

    @objc func reloadProfile() {

        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
        if self.refreshControl.isRefreshing {
            // Reload time based array
            retrieveProfileUserData()
            self.refreshControl.endRefreshing()
        }
        self.profile3TableView.reloadData()
    }

    func dayOfWeekAndHour() {
        let dayOfWeek = calendar.component(.weekday, from: date)

        switch dayOfWeek {
        case 1: // Sun
            print("today is Sunday")
            displaySelectedPersonProfile(person: FamousPerson.martinLutherKingJr)
            selectedResults.append(FamousPerson.martinLutherKingJrPassion)
            selectedResults.append(FamousPerson.martinLutherKingJrPurpose)
            selectedResults.append(FamousPerson.martinLutherKingJrTop5Goals)
            selectedResults.append(FamousPerson.martinLutherKingJrVision)
        case 2:
            print("today is Monday")
            displaySelectedPersonProfile(person: FamousPerson.bruceLee)
            selectedResults.append(FamousPerson.bruceLeePassion)
            selectedResults.append(FamousPerson.bruceLeePurpose)
            selectedResults.append(FamousPerson.bruceLeeTop5Goals)
            selectedResults.append(FamousPerson.bruceLeeVision)
        case 3:
            print("today is Tuesday")
            displaySelectedPersonProfile(person: FamousPerson.oprahWinfrey)
            selectedResults.append(FamousPerson.oprahWinfreyPassion)
            selectedResults.append(FamousPerson.oprahWinfreyPurpose)
            selectedResults.append(FamousPerson.oprahWinfreyTop5Goals)
            selectedResults.append(FamousPerson.oprahWinfreyVision)
        case 4:
            print("today is Wednesday")
            displaySelectedPersonProfile(person: FamousPerson.markDivine)
            selectedResults.append(FamousPerson.markDivinePassion)
            selectedResults.append(FamousPerson.markDivinePurpose)
            selectedResults.append(FamousPerson.markDivineTop5Goals)
            selectedResults.append(FamousPerson.markDivineVision)
        case 5:
            print("today is Thursday")
            displaySelectedPersonProfile(person: FamousPerson.sophiaAmoruso)
            selectedResults.append(FamousPerson.sophiaAmorusoPassion)
            selectedResults.append(FamousPerson.sophiaAmorusoPurpose)
            selectedResults.append(FamousPerson.sophiaAmorusoTop5Goals)
            selectedResults.append(FamousPerson.sophiaAmorusoVision)
        case 6:
            print("today is Friday")
            displaySelectedPersonProfile(person: FamousPerson.bruceLee)
            selectedResults.append(FamousPerson.bruceLeePassion)
            selectedResults.append(FamousPerson.bruceLeePurpose)
            selectedResults.append(FamousPerson.bruceLeeTop5Goals)
            selectedResults.append(FamousPerson.bruceLeeVision)
        case 7:
            print("today is Saturday")
            displaySelectedPersonProfile(person: FamousPerson.oprahWinfrey)
            selectedResults.append(FamousPerson.oprahWinfreyPassion)
            selectedResults.append(FamousPerson.oprahWinfreyPurpose)
            selectedResults.append(FamousPerson.oprahWinfreyTop5Goals)
            selectedResults.append(FamousPerson.oprahWinfreyVision)
        default:
            print("error with dayAndHour")
        }
    }

    func displaySelectedPersonProfile(person: ProfileSelectedPerson) {
        selectedPersonProfile = person

        // Quote
        fullNameLabel.text = selectedPersonProfile.name
        bioTextLabel.text = selectedPersonProfile.bio
        quoteTextLabel.text = selectedPersonProfile.advice

        // Media
        mediaTitleLabel.text = selectedPersonProfile.description

    }


    func retrieveProfileUserData() {
        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        // 2 Write the data by setting the value for the location specified

        // add .child(currentUID) so only current user can see their data

        ProfileService.readProfileItemAll(for: User.current) { (retrievedProfileItem) in

            self.userProfileItem = retrievedProfileItem

            // Update array with retrieved data
            self.userProfileArray = [self.userProfileItem.passion,
                                     self.userProfileItem.purpose,
                                     self.userProfileItem.goals,
                                     self.userProfileItem.fears]

            self.configureTableView()
            self.profile3TableView.reloadData()
            SVProgressHUD.dismiss()
        }
    }




    func configureTableView() {
        profile3TableView.estimatedRowHeight = 50
        profile3TableView.rowHeight = UITableViewAutomaticDimension
        profile3TableView.allowsSelection = false

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
        if canEditText == true {
            cell.userTextView.layer.borderColor = UIColor.red.cgColor
            cell.userTextView.layer.borderWidth = 2
        } 
    }

    // Toggles button on/off
    func activateEditButton(bool: Bool) {
        canEditText = bool
        print("canEditText \(canEditText)")
    }

    //MARK: - getKayboardHeight
    // Source: http://www.iostutorialjunction.com/2017/07/Programmatically-get-height-of-keyboard-in-swift-3-language-in-iOS-app-Tutorial.html
    @objc func keyboardWillShow(notification: Notification) {
        let userInfo:NSDictionary = notification.userInfo! as NSDictionary
        let keyboardFrame:NSValue = userInfo.value(forKey: UIKeyboardFrameEndUserInfoKey) as! NSValue
        let keyboardRectangle = keyboardFrame.cgRectValue
        let keyboardHeight = keyboardRectangle.height
        // do whatever you want with this keyboard height
        print("currentKeyboardHeight: \(keyboardHeight)")
        profileTableViewFooter.frame.size.height = keyboardHeight
    }

    @objc func keyboardWillHide(notification: Notification) {
        // keyboard is dismissed/hidden from the screen
        profileTableViewFooter.frame.size.height = 10
    }


    // MARK: - IBActions

    @IBAction func learnMoreButtonTapped(_ sender: UIButton) {

        print("Learn more button tapped")

        let app = UIApplication.shared

        if let url = selectedPersonProfile.url {

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



        if canEditText {
            profileTableViewFooter.frame.size.height = currentKeyboardHeight
            profile3TableView.reloadData()
            saveButton.setTitleColor(UIColor.red, for: .normal)
            saveButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        } else {
            profileTableViewFooter.frame.size.height = 10
            view.endEditing(true)
            saveButton.setTitleColor(UIColor.init(red: 0, green: 122/255, blue: 1, alpha: 1), for: .normal)
            saveButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)

            let now = Date()
            let formatter = DateFormatter()
            // initially set the format based on your datepicker date
            formatter.dateFormat = "MMMM d, yyyy h:mm a"
            let currentDate = formatter.string(from: now)

            // Input array of user data into property, write to Firebase
            let newProfileItem = ProfileItem(timestamp: currentDate,
                                             passion: userProfileArray[0],
                                             purpose: userProfileArray[1],
                                             goals: userProfileArray[2],
                                             fears: userProfileArray[3])

            ProfileService.writeProfileItem(for: User.current, profileItem: newProfileItem, success: { (success) in
                if success == true {
                    return
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
        cell.userTextView.text = userProfileArray[indexPath.row]

        // Set the delegate to be the VC when you create the cell
        cell.userTextView.delegate = self
        cell.userTextView.layer.borderWidth = 0.5
        changeTextViewBoarderColor(cell)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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

    func textViewDidBeginEditing(_ textView: UITextView) {

        // Only created this code to test (print statement)
        var v : UIView = textView
        repeat { v = v.superview! } while !(v is ProfileTableViewCell)
        let selectedCell = v as! ProfileTableViewCell // or UITableViewCell or whatever

        guard let selectedIndexPath = self.profile3TableView.indexPath(for: selectedCell) else {
            return
        }

        print("Entered IndexPath: \(selectedIndexPath)")
    }

    func textViewDidEndEditing(_ textView: UITextView) {

        print("$$$")
        print("textViewDidEndEditing (Exited IndexPath)")
        var v : UIView = textView
        repeat { v = v.superview! } while !(v is ProfileTableViewCell)
        let selectedCell = v as! ProfileTableViewCell // or UITableViewCell or whatever

        print("%%%")
        print(selectedCell)
        print("&&&")
        guard let selectedIndexPath = self.profile3TableView.indexPath(for: selectedCell) else {
            return
        }

        print("Exited IndexPath: \(selectedIndexPath)")

        // Update Array with latest user textField.text
        userProfileArray[selectedIndexPath.row] = selectedCell.userTextView.text
        print(userProfileArray)
        print("^^^")
    }
}
