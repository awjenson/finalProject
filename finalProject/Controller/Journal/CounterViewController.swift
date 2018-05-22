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

    @IBOutlet weak var counterTableView: UITableView!

    // an empty JournalMessage array to contain the user's messages
    var items: [GoalItem] = []

    var ref: DatabaseReference!
    fileprivate var _refHandle: DatabaseHandle!
    fileprivate var _authHandle: AuthStateDidChangeListenerHandle!

    override func viewDidLoad() {
        super.viewDidLoad()

        signedInStatus(isSignedIn: true)

//        loadGoals()

        // Remove cell line seperators



    }

    func signedInStatus(isSignedIn: Bool) {
        if (isSignedIn) {

            counterTableView.dataSource = self
            counterTableView.delegate = self

            counterTableView.allowsMultipleSelectionDuringEditing = false

            configureDatabase()
            retrieveGoalItems()

        }
    }

    func configureDatabase() {

        let currentUID = User.current.uid
        print("CurrentUID: \(currentUID)")

        // This is the path BEFORE .child("GoalItems").child(currentUID).child("typed goal")
        ref = Database.database().reference().child(Constants.DbChild.GoalItems).child(currentUID)
    }

    // Create the retrieveMessages method
    func retrieveGoalItems() {
        // listen for new messages in the firebase database with 'observe'
        // Configure database to sync messages
        // .reference() gets a DatabaseReference for the root of the app's Firebase Database
        // ask Firebase to 'observe' for any new child's events ('childAdded')

        // add .child(currentUID) so only current user can see their data

        // *** b/c of for loop, switch from .childAdded to .value
        _refHandle = ref.observe(.value) { (snapshot) in

            print("PATH:")
            print(self.ref)
            print("- - -")

            var newItems: [GoalItem] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                    // This is where ref and key get added to the property
                    let goalItem = GoalItem(snapshot: snapshot) {

                    print("ENTER HERE?")

                    newItems.append(goalItem)
                    print("NEW ITEMS")
                    print(newItems)
                    print("- - -")
                }
            }
            print("SNAPSHOT")
            print(snapshot)
            print("- - -")

            self.items = newItems
            print("ITEMS")
            print(self.items)
            print("- - -")
            self.counterTableView.reloadData()







//            // grab data from snapshot and format it into a custom JournalMessage object
//            // we know what 'value' type we will receive from the DB because we created it above that contains a [String:String]
//            let snapshotValue = snapshot.value as! Dictionary<String,AnyObject>
//
//            // use snapshotValue to pull-out values of keys
//            let name = snapshotValue[Constants.GoalItem.Name]!
//            let count = snapshotValue[Constants.GoalItem.Count]!
//            let timeStamp = snapshotValue[Constants.GoalItem.TimeStamp]
//
//            // now save these values into a new GoalItem object
//            let newGoalItem = GoalItem()
//            newGoalItem.name = name as! String
//            newGoalItem.count = count as! Int
//            newGoalItem.timestamp = timeStamp as? String ?? ""
//
//            self.goalItemArray.append(newGoalItem)
//
//            // TODO: Add response messages here based on button tapped
//
//            // re-configure table view and reload data in table view
//            performUIUpdatesOnMain {
////                self.configureTableView()
//                self.counterTableView.reloadData()
//            }
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        let goalItemRow = items[indexPath.row]

        cell.textLabel?.text = goalItemRow.name

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
            print("GROCERY ITEM TO DELETE")
            print(goalItemRow.ref)
            print("- - -")
            // goalItemRow.ref should be the path all the way to the lowercase key name.
            goalItemRow.ref?.removeValue()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        let goalItemRow = items[indexPath.row]
        var countNumber = goalItemRow.count
        countNumber += 1
        increaseCellCount(cell, newNumber: countNumber)
        goalItemRow.ref?.updateChildValues([
            Constants.GoalItem.Count: countNumber
            ])
    }

    func increaseCellCount(_ cell: UITableViewCell, newNumber: Int) {
        cell.detailTextLabel?.text = "\(newNumber)"
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

            // *** This is creating the ref and key, right???

            let goalItemRef = self.ref.child(text.lowercased())

            // write data toAnyObject() which will store data in properties inside Model Class
            goalItemRef.setValue(goalItem.toAnyObject())
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

    func sendGoalItem(child pathString: String, _ goalItemDictionary: [String:AnyObject?]) {

        let currentUID = User.current.uid
        print("CurrentUID: \(currentUID)")

        let goalItemsDB = ref.child(Constants.DbChild.GoalItems).child(currentUID)
        // like specifying "/Messages/[some_auto_id]"
        // Then, .setValue, sets a value to the key (key value pair)
        goalItemsDB.child(pathString).setValue(goalItemDictionary) {
            (error, reference) in
            // save our messageDictionary inside our messageDB under a random unique identifier. Add a trailing closure
            if error != nil {
                print(error!)
            } else {
                print("Goal Item saved successfully")
            }
        }
    }


}
