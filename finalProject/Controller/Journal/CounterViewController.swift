//
//  CounterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/19/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase

// RESOURCE: https://www.raywenderlich.com/187417/firebase-tutorial-getting-started-3
// RESOURCE TO IMPROVE FIREBASE CODE: http://jaronoff.com/Firebase-and-Swift/

class CounterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Outlets

    @IBOutlet weak var counterTableView: UITableView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!

    @IBOutlet weak var rewardLabel: UILabel!

    // MARK: - Properties

    // Time and Date
    let formatter = DateFormatter()
    let date = Date()
    let calendar = Calendar.current

    // an empty JournalMessage array to contain the user's messages
    var items: [GoalItem] = []
    var quote = CounterAdvice(quote: "", source: "")
    var selectedEmoji = ""

//    // NEED THIS REF
//    var ref: DatabaseReference!

    // pull to refresh tableView
    let refreshControl = UIRefreshControl()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("Counter View Controller Will Appear")
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

        print("Counter View Controller Will Disappear")
    }

    func setupUI() {

        counterTableView.dataSource = self
        counterTableView.delegate = self
        counterTableView.allowsMultipleSelectionDuringEditing = false

        dayOfWeekAndHour()
        setupQuote()

        setupRefreshControl()

        selectedEmoji = "😴"
        rewardLabel.text = "Your Daily Result: \(selectedEmoji)"
    }

    var counter = 0

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
        case 10:
            selectedEmoji = "💥💯🏆🎊🥇🎉"
            rewardLabel.text = "Your Daily Result: \(selectedEmoji)"

        default:
            print("ERROR: error with increaseEmoji")

        }
    }

    func setupQuote() {
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

    // MARK: Quotes


    // NEW
    let am0 = CounterAdvice(quote: "\"I am not a product of my circumstances. I am a product of my decisions.\"", source: "Stephen R. Covey")

    let pm0 = CounterAdvice(quote: "\"Don't judge each day by the harvest you reap but by the seeds that you plant.\"", source: "Robert Louis Stevenson")

    let pm1 = CounterAdvice(quote: "\"I made a commitment to myself that anything I do or engage with has to be tied to what drives me and motivates me.\"", source: "Andre Agassi")

    let am1 = CounterAdvice(quote: "\"The way to be a better comic was to create better jokes and the way to create better jokes was to write every day. Don't break the chain. After a few days you'll have a chain. Just keep at it and the chain will grow longer every day. You'll like seeing that chain, especially when you get a few weeks under your belt. Your only job next is to not break the chain.\"", source: "Jerry Seinfeld")

    let am2 = CounterAdvice(quote: "\"We are what we repeatedly do. Excellence, then is not an act, but a habit.\"", source: "Aristotle")

    let pm2 = CounterAdvice(quote: "\"Your net worth to the world is usually determined by what remains after your bad habits are subtracted from your good ones.\"", source: "Bejamin Franklin")

    let am3 = CounterAdvice(quote: "\"On average, it takes 66 days to develop a new habit.\"", source: "University College London")

    let pm3 = CounterAdvice(quote: "\"Whenever you are angry, be assured that it is not only a present evil, but that you have increased a habit.\"", source: "Epictetus")

    let am4 = CounterAdvice(quote: "\"Cultivate only the habits that you are willing should master you.\"", source: "Elbert Hubbard")

    let pm4 = CounterAdvice(quote: "\"I never could have done what I have done without the habits of punctuality, order, and diligence, without the determination to concentrate myself on one subject at a time.\"", source: "Charles Dickens")

    let am5 = CounterAdvice(quote: "\"Happiness is a habit - cultivate it\"", source: "Elbert Hubbard")

    let pm5 = CounterAdvice(quote: "\"You’ll never change your life until you change something you do daily. The secret of your success is found in your daily routine.\"", source: "John C. Maxwell")

    let am6 = CounterAdvice(quote: "\"I can predict the long-term outcome of your success if you show me your daily habits.\"", source: "John Maxwell")

    let pm6 = CounterAdvice(quote: "\"Good habits are the key to all success.\"", source: "Og Mandino")

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
        case 0..<14:
            print("Sunday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am0
        case 14...24:
            print("Sunday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm0
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func monday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Monday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am1
        case 14...24:
            print("Monday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm1
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func tuesday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Tuesday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am2
        case 14...24:
            print("Tuesday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm2
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func wednesday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Wednesday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am3
        case 14...24:
            print("Wednesday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm3
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func thursday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Thursday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am4
        case 14...24:
            print("Thursday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm4
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func friday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Friday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am5
        case 14...24:
            print("Friday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm5
        default:
            print("ERROR: INVALID HOUR!")
        }
    }

    func saturday(_ hour: Int) {
        switch hour {
        case 0..<14:
            print("Saturday, Very Early Morning")
            // call function to display 9 time-based topics
            quote = am6
        case 14...24:
            print("Saturday, Afternoon")
            // call function to display 9 time-based topics
            quote = pm6
        default:
            print("ERROR: INVALID HOUR!")
        }
    }



    // MARK: - Database Methods

    func retrieveGoalItems() {
        GoalItemService.readGoals(for: User.current) { (newItems) in

            if newItems.isEmpty {
                print("retrievedMessages count: \(newItems.count)")
                return
            }
            self.items = newItems
            print("Inside GoalItemService.readGoals")
            self.counterTableView.reloadData()
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

        cell.titleLabel.text = goalItemRow.name
        cell.bodyLabel.text = goalItemRow.why

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
//        cell.bodyLabel.text = ""
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
                                      message: "Include a strong reason WHY to keep yourself motivated",
                                      preferredStyle: .alert)

        // guard to make sure text is not nil ("")
        let doAction = UIAlertAction(title: "Save as a DO", style: .default) { _ in

            guard let textField1 = self.alert?.textFields?.first, textField1.text != "", let text1 = textField1.text, let textField2 = self.alert?.textFields?.last, let text2 = textField2.text else {
                print("$$$")
                return }

            let goalItem = GoalItem(name: "DO: \(text1)", why: text2, timestamp: currentDate, count: 0)

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
        let dontAction = UIAlertAction(title: "Save as a DON'T", style: .default) { (action) -> Void in

            guard let textField1 = self.alert?.textFields?.first, textField1.text != "", let text1 = textField1.text, let textField2 = self.alert?.textFields?.last, let text2 = textField2.text else {
                print("$$$")
                return }

            let goalItem = GoalItem(name: "DON'T: \(text1)", why: text2, timestamp: currentDate, count: 0)

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
        doAction.isEnabled = false
        dontAction.isEnabled = false

        alert?.addAction(doAction)
        alert?.addAction(dontAction)
        alert?.addAction(cancelAction)

        present(alert!, animated: true, completion: nil)
    }
}
