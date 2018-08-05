//
//  CounterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/19/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

// RESOURCE: https://www.raywenderlich.com/187417/firebase-tutorial-getting-started-3
// RESOURCE TO IMPROVE FIREBASE CODE: http://jaronoff.com/Firebase-and-Swift/

class CounterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Outlets

    @IBOutlet weak var counterTableView: UITableView!

    @IBOutlet weak var habitCardView: CardView!

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!

    // Removed
    @IBOutlet weak var factQuote: UILabel!
    @IBOutlet weak var factAuthor: UILabel!


    @IBOutlet weak var rewardCardView: CardView!
    @IBOutlet weak var rewardLabel: UILabel!

    @IBOutlet weak var footerKeyLabel: UILabel!

    // MARK: - Properties

    // Time and Date
    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    // an empty JournalMessage array to contain the user's messages

    var items: [GoalItem] = []
    var quote = CounterAdvice(quote: "", source: "")
    var fact = CounterAdvice(quote: "", source: "")
    var selectedEmoji = ""
    var counter = 0

//    // NEED THIS REF
//    var ref: DatabaseReference!

    // pull to refresh tableView
    let refreshControl = UIRefreshControl()


    // Card Color UI
    var topicColor: UIColor?
    var cellHeaderColor: [UIColor] = []


    // MARK: - Lifecycle Methods

    override func viewDidLayoutSubviews() {
        // Code to adjust size of tableviewHeader
        // Source: https://useyourloaf.com/blog/variable-height-table-view-header/
        super.viewDidLayoutSubviews()
        guard let headerView = counterTableView.tableHeaderView else {
            return
        }
        let size = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
        if headerView.frame.size.height != size.height {
            headerView.frame.size.height = size.height
            counterTableView.tableHeaderView = headerView
            counterTableView.layoutIfNeeded()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        

        if internetConnected() {
            retrieveGoalItems()
        } else {
            performUIUpdatesOnMain {
                self.createAlert(title: "No Internet Connection", message: "Not able to retrieve data from database. Please connect to the Internet and try again.")
            }
        }
        setupUI()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if SVProgressHUD.isVisible() {
            SVProgressHUD.dismiss()
        }

        print("Counter View Controller Will Disappear")
    }

    func setupUI() {

        counterTableView.dataSource = self
        counterTableView.delegate = self
        counterTableView.allowsMultipleSelectionDuringEditing = false

        dayOfWeekAndHour()

//        configureCards()
        
        setupQuotes()

        setupRefreshControl()

        selectedEmoji = "😴"
        rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        footerKeyLabel.text = ""
    }



    func increaseEmoji(count: Int) {
        print("Refresh COUNTER table view")
        switch count {
        case 1:
            selectedEmoji = "🙂"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"

        case 2:
            selectedEmoji = "😀"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"

        case 3:
            selectedEmoji = "😎"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 4:
            selectedEmoji = "👍👍"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 5:
            selectedEmoji = "👏👏"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 6:
            selectedEmoji = "💪💪"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 7:
            selectedEmoji = "🔥👍"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 8:
            selectedEmoji = "🔥🔥👏🥉"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 9:
            selectedEmoji = "🔥🔥🔥💪🥈"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        case 10...Int.max:
            selectedEmoji = "💥💯🏆🎊🥇🎉"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
        default:
            print("ERROR: error with increaseEmoji")
        }
    }



    func setupQuotes() {
        // Inspirational Quote
        quoteLabel.text = quote.quote
        sourceLabel.text = quote.source
    }

//    func configureDatabase() {
//        // This is the path BEFORE .child("GoalItems").child(currentUID).child("typed goal")
//        ref = Database.database().reference().child(FirebaseConstants.DbChild.GoalItems).child(User.current.uid)
//    }

    // MARK: - Refresh Control Methods

    func setupRefreshControl() {
        // add pull to refresh
        refreshControl.addTarget(self, action: #selector(reloadGoals), for: .valueChanged)
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        counterTableView.addSubview(refreshControl)
    }

    @objc func reloadGoals() {

        // the method also checks if the refreshControl is refreshing. This will stop and hide the acitivity indicator of the refresh control if it is currently being displayed to the user.
        if self.refreshControl.isRefreshing {
            // Reload time based array
            retrieveGoalItems()
            self.refreshControl.endRefreshing()
        }
    }



    // MARK: Time-based Methods

    func dayOfWeekAndHour() {
        print("Refresh COUNTER table view")
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
        case 0...9:
            quote = HabitQuote.am1
        case 10...14:
            quote = HabitFact.am1
        case 15...19:
            quote = HabitQuote.pm1
        case 20...24:
            quote = HabitFact.pm1
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func monday(_ hour: Int) {
        switch hour {
        case 0...9:
            quote = HabitQuote.am2
        case 10...14:
            quote = HabitFact.am2
        case 15...19:
            quote = HabitQuote.pm2
        case 20...24:
            quote = HabitFact.pm2
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func tuesday(_ hour: Int) {
        switch hour {
        case 0...9:
            quote = HabitQuote.am3
        case 10...14:
            quote = HabitFact.am3
        case 15...19:
            quote = HabitQuote.pm3
        case 20...24:
            quote = HabitFact.pm3
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func wednesday(_ hour: Int) {
        switch hour {
        case 0...9:
            quote = HabitQuote.am4
        case 10...14:
            quote = HabitFact.am4
        case 15...19:
            quote = HabitQuote.pm4
        case 20...24:
            quote = HabitFact.pm4
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func thursday(_ hour: Int) {
        switch hour {
        case 0...9:
            quote = HabitQuote.am5
        case 10...14:
            quote = HabitFact.am5
        case 15...19:
            quote = HabitQuote.pm5
        case 20...24:
            quote = HabitFact.pm5
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func friday(_ hour: Int) {
        switch hour {
        case 0...9:
            quote = HabitQuote.am6
        case 10...14:
            quote = HabitFact.am6
        case 15...19:
            quote = HabitQuote.pm6
        case 20...24:
            quote = HabitFact.pm6
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func saturday(_ hour: Int) {
        switch hour {
        case 0...9:
            quote = HabitQuote.am7
        case 10...14:
            quote = HabitFact.am7
        case 15...19:
            quote = HabitQuote.pm7
        case 20...24:
            quote = HabitFact.pm7
        default:
            print("ERROR: INVALID HOUR!")
        }
    }



    // MARK: - Database Methods

    func retrieveGoalItems() {

        SVProgressHUD.show()
        GoalItemService.readGoals(for: User.current) { (newItems) in

            if newItems.isEmpty {
                print("retrievedMessages count: \(newItems.count)")
                SVProgressHUD.dismiss()
                return
            }
            self.items = newItems
            print("Inside GoalItemService.readGoals")
            self.counterTableView.reloadData()
            self.footerKeyLabel.text = Constants.Habits.footerKey
            SVProgressHUD.dismiss()
        }
    }


    // MARK: UITableView Delegate methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    // Future Idea: Each sunday, the color/word cycle starts over. Increases until Saturday.
    // Goal would be to encourge people to take a bite out of a big goal, and provide encouragement for accomplishing something each week.
    // And if they don't do something in an entire week, to not discouraged them from trying.
    // Each week is a clean new slate to try and work toward improvement.
    // Make it fun to tap the cell of a goal, display an image/badge/emojoi after X-counts.
    // Make the user enjoy visiting this VC.

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! CounterTableViewCell


        let goalItemRow = items[indexPath.row]

        cell.configureCell(habit: goalItemRow)


        // This data gets updated in DetailTextLabel Text
        increaseCellCount(cell, newNumber: goalItemRow.count)


        // Line separator (extend to left)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero

        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {

            let goalItemRow = items[indexPath.row]

            // Firebase (option A)
            // Code doesn't seem as efficient as code below to removeValue()
//            GoalItemService.deleteGoal(for: User.current, goal: goalItemRow, success: { (success) in
//                if success == true {
//                    print("SUCCESS WRITING GOAL: \(success)")
//                    print(self.items)
//                    print(self.items.count)
//                    return
//                }
//            })

            // Firebase (option B, seems more simple)
            goalItemRow.ref?.removeValue()
            items.remove(at: indexPath.row)
            counterTableView.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }

        let goalItemRow = items[indexPath.row]
        var countNumber = goalItemRow.count
        countNumber += 1
        increaseCellCount(cell as! CounterTableViewCell, newNumber: countNumber)

        // Firebase
        goalItemRow.ref?.updateChildValues([
            FirebaseConstants.GoalItem.Count: countNumber
            ])

        counter += 1
        increaseEmoji(count: counter)
    }


    func increaseCellCount(_ cell: CounterTableViewCell, newNumber: Int) {
        cell.countLabel.text = " \(newNumber)"
    }

    // MARK: - IBActions

    var alert: UIAlertController?

    @objc func alertTextFieldDidChange(_ sender: UITextField) {

            alert?.actions[0].isEnabled = sender.text!.count > 0
            alert?.actions[1].isEnabled = sender.text!.count > 0
    }

    @IBAction func addButtonTapped(_ sender: UIButton) {

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy h:mm a"
        let currentDate = formatter.string(from: now)

        // 1. Create the alert controller
        alert = UIAlertController(title: "Add New Habit",
                                  message: "Include a strong reason WHY to keep yourself motivated.",
                                  preferredStyle: .alert)

        // guard to make sure text is not nil ("")
        let doAction = UIAlertAction(title: "SAVE", style: .default) { _ in

            guard let textField1 = self.alert?.textFields?.first, textField1.text != "", let text1 = textField1.text, let textField2 = self.alert?.textFields?.last, let text2 = textField2.text else {
                print("$$$")
                return }

            let goalItem = GoalItem(name: "♦️\(text1)", why: text2, timestamp: currentDate, count: 0)

            // Firebase
            GoalItemService.writeGoal(for: User.current, goal: goalItem, success: { (success) in
                if success == true {
                    print("SUCCESS WRITING GOAL: \(success)")
                    return
                } else if success == false {
                    self.createAlert(title: "ERROR", message: "Unable to write to database. Check your internet connection and try again.")
                }
            })
        }

        // guard to make sure text is not nil ("")
//        let dontAction = UIAlertAction(title: "SAVE as a DON'T", style: .default) { (action) -> Void in
//
//            guard let textField1 = self.alert?.textFields?.first, textField1.text != "", let text1 = textField1.text, let textField2 = self.alert?.textFields?.last, let text2 = textField2.text else {
//                print("$$$")
//                return }
//
//            let goalItem = GoalItem(name: "DON'T: \(text1)", why: text2, timestamp: currentDate, count: 0)
//
//            // Firebase
//            GoalItemService.writeGoal(for: User.current, goal: goalItem, success: { (success) in
//                if success == true {
//                    print("SUCCESS WRITING GOAL: \(success)")
//                    return
//                } else if success == false {
//                    self.createAlert(title: "ERROR", message: "Unable to write to database. Check your internet connection and try again.")
//                }
//            })
//        }

        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel)

        // In action, setup textField
        var textField1 = UITextField()
        var textField2 = UITextField()

        alert?.addTextField { (alertTextField) in
            textField1 = alertTextField
            textField1.placeholder = "Habit (Your WHAT)"
            textField1.addTarget(self, action: #selector(self.alertTextFieldDidChange(_:)), for: .editingChanged)
        }

        alert?.addTextField { (alertTextField) in
            textField2 = alertTextField
            textField2.placeholder = "Because (Your WHY)"
            textField2.addTarget(self, action: #selector(self.alertTextFieldDidChange(_:)), for: .editingChanged)
        }

        // Do and Don't buttons initally disabled
//        dontAction.isEnabled = false
        doAction.isEnabled = false


        alert?.addAction(doAction)
        // Removed Don't since it's a little confusing to new users
//        alert?.addAction(dontAction)
        alert?.addAction(cancelAction)

        present(alert!, animated: true, completion: nil)
    }

}
