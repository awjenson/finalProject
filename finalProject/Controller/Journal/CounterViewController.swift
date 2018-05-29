//
//  CounterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/19/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import Firebase
import ChameleonFramework

// RESOURCE: https://www.raywenderlich.com/187417/firebase-tutorial-getting-started-3
// RESOURCE TO IMPROVE FIREBASE CODE: http://jaronoff.com/Firebase-and-Swift/

class CounterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Outlets

    @IBOutlet weak var counterTableView: UITableView!

    // MARK: - Properties

    // an empty JournalMessage array to contain the user's messages
    var items: [GoalItem] = []
    // var items = [GoalItem]()

    // NEED THIS REF
    var ref: DatabaseReference!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("Counter View Controller Will Appear")
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

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("Counter View Controller Will Disappear")
    }

    func setupUI() {

        counterTableView.dataSource = self
        counterTableView.delegate = self

        counterTableView.allowsMultipleSelectionDuringEditing = false

        //            configureDatabase() // I don't think this is needed anymore
        retrieveGoalItems()
    }

    func configureDatabase() {
        // This is the path BEFORE .child("GoalItems").child(currentUID).child("typed goal")
        ref = Database.database().reference().child(FirebaseConstants.DbChild.GoalItems).child(User.current.uid)
    }

    func retrieveGoalItems() {
        GoalItemService.readGoals(for: User.current) { (newItems) in

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
//            // Code doesn't seem as efficient as code below to removeValue()
//            GoalItemService.deleteGoal(for: User.current, goal: goalItemRow, success: { (success) in
//                if success == true {
//                    print("SUCCESS WRITING GOAL: \(success)")
//                    return
//                }
//            })

            // Firebase (option B)
            goalItemRow.ref?.removeValue()
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
    }

    func increaseCellCount(_ cell: CounterTableViewCell, newNumber: Int) {
        cell.countLabel.text = " \(newNumber)"
        cell.bodyLabel.text = ""
    }

    // MARK: - IBActions

    @IBAction func addButtonTapped(_ sender: UIButton) {

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy"
        let currentDate = formatter.string(from: now)

        let alert = UIAlertController(title: "Add a New Goal to Track Daily",
                                      message: "",
                                      preferredStyle: .alert)

        // guard to make sure text is not nil ("")
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in

            guard let textField = alert.textFields?.first, textField.text != "",
                let text = textField.text else { return }

            let goalItem = GoalItem(name: text, timestamp: currentDate, count: 0)

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
        var textField = UITextField()
        alert.addTextField { (alertTextField) in
            textField = alertTextField
            textField.placeholder = "Add a New Goal"
        }

        alert.addAction(saveAction)
        alert.addAction(cancelAction)

        present(alert, animated: true, completion: nil)
    }


}
