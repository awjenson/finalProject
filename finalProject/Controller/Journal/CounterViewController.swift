//
//  CounterViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/19/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import RealmSwift
import Firebase
import ChameleonFramework

class CounterViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var counterTableView: UITableView!

    // the reason why this inialization could throw an error is that the first time you create a new realm instance it can fail if your resources are contstained, but this can only happen the first time a realm instance is created on a give thread.
//    // A collection of Results of Category objects
//    let realm = try! Realm()
//
//    // When using Realm, the data type of the objects that we get back are of type Results which is an auto-updating container type that comes from RealmSwift.
//    var goals: Results<Goal>?

    // an empty JournalMessage array to contain the user's messages
    var goalItemArray = [GoalItem]()


    // Tutorial
    var items: [GroceryItem] = []


    var itemArray = ["Gym", "Read", "Eat Healthy", "Meditate"]
    var countArray = [0,0,0,0]

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

        let currentUID = User.current.uid
        print("CurrentUID: \(currentUID)")

        // add .child(currentUID) so only current user can see their data

        // *** b/c of for loop, switch from .childAdded to .value
        _refHandle = ref.observe(.value) { (snapshot) in

            print("PATH:")
            print(self.ref)
            print("- - -")

            var newItems: [GroceryItem] = []
            for child in snapshot.children {
                if let snapshot = child as? DataSnapshot,
                    // This is where ref and key get added to the property
                    let groceryItem = GroceryItem(snapshot: snapshot) {

                    print("ENTER HERE?")

                    newItems.append(groceryItem)
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        let groceryItem = items[indexPath.row]

        cell.textLabel?.text = groceryItem.name

        // This data gets updated in DetailTextLabel Text
        increaseCellCount(cell, newNumber: groceryItem.count)

        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let groceryItem = items[indexPath.row]
            // groceryItem.ref should be the path all the way to the lowercase key name.
            groceryItem.ref?.removeValue()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        let groceryItem = items[indexPath.row]
        var countNumber = groceryItem.count
        countNumber += 1
        increaseCellCount(cell, newNumber: countNumber)
        groceryItem.ref?.updateChildValues([
            Constants.GoalItem.Count: countNumber
            ])
    }

    func increaseCellCount(_ cell: UITableViewCell, newNumber: Int) {
        cell.detailTextLabel?.text = "\(newNumber)"
    }









    // MARK: - MY ORIGINAL CODE

//    // MARK: - Table view data source
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
////        return goals?.count ?? 1
//        return goalItemArray.count
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
//
//        // Setup Cell
//        // Access the super class with 'super'. This will access the cell created inside the super class (a SwipeTableViewCell). It accesses the cell at the current indexPath.
//
//        // Modify Cell
//        // Take the cell and add some more things to it.
////        if let goal = goals?[indexPath.row] {
////
////            // .attribute of Entity, use the 'name' property to fill up the textLabel's .text property
////            cell.textLabel?.text = goal.name
////            cell.detailTextLabel?.text = "\(goal.count)"
////
////            guard let goalColor = UIColor(hexString: goal.color) else { fatalError("cellForRowAt") }
////
////            // Random color from ChameleonFramework
////            cell.backgroundColor = goalColor
////            cell.textLabel?.textColor = ContrastColorOf(goalColor, returnFlat: true)
////        }
//
//        cell.textLabel?.text = goalItemArray[indexPath.row].name
//        cell.detailTextLabel?.text = "\(goalItemArray[indexPath.row].count)"
//
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    // Table view delegate methods
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        // called each time user edits tableview
//        if editingStyle == UITableViewCellEditingStyle.delete {
//
////            self.updateModel(at: indexPath)
//
//            itemArray.remove(at: indexPath.row)
//            countArray.remove(at: indexPath.row)
//
//            // Remove ref from firebase
//            let selectedGoalItem = goalItemArray[indexPath.row]
//
//            let currentUID = User.current.uid
//            print("CurrentUID: \(currentUID)")
//
//            counterTableView.reloadData()
//            print("Delete Cell")
//        }
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(itemArray[indexPath.row])
//        tableView.deselectRow(at: indexPath, animated: true)
//        countArray[indexPath.row] += 1
//        print(countArray[indexPath.row])
//        tableView.reloadData()
//    }








    @IBAction func addButtonTapped(_ sender: UIButton) {

        let now = Date()
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "MMMM d, yyyy"
        let currentDate = formatter.string(from: now)



        let alert = UIAlertController(title: "Goal Item",
                                      message: "Add an Item",
                                      preferredStyle: .alert)

        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let textField = alert.textFields?.first,
                let text = textField.text else { return }

            let groceryItem = GroceryItem(name: text, timestamp: currentDate, count: 0)

            // *** This is creating the ref and key, right???

            let groceryItemRef = self.ref.child(text.lowercased())

            // write data toAnyObject() which will store data in properties inside Model Class
            groceryItemRef.setValue(groceryItem.toAnyObject())
        }

        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel)

        alert.addTextField()

        alert.addAction(saveAction)
        alert.addAction(cancelAction)

        present(alert, animated: true, completion: nil)





















        // MARK: - OLD CODE
//        var textField = UITextField()
//
//        let alert = UIAlertController(title: "Daily Goal", message: "Add a new goal", preferredStyle: .alert)
//
//        let cancelAction = UIAlertAction(title: "Cancel",
//                                         style: .cancel)
//
//        // new data (Category) gets created when we tap the "Add" button.
//
//        let saveAction = UIAlertAction(title: "Save",
//                                       style: .default) { _ in
//                                        // 1
//                                        guard let textField = alert.textFields?.first,
//                                            let text = textField.text else { return }
//
//                                        let now = Date()
//                                        let formatter = DateFormatter()
//                                        // initially set the format based on your datepicker date
//                                        formatter.dateFormat = "MMMM d, yyyy h:mm a"
//                                        let currentDate = formatter.string(from: now)
//
////                                        // 2
////                                        let groceryItem = GroceryItem(name: text, timestamp: "Today's Date", count: 0)
////                                        // 3
////                                        // Create a child reference using child(_:). The key value of this reference is the item’s name in lowercase, so when users add duplicate items (even if they capitalize it, or use mixed case) the database saves only the latest entry.
////                                        let groceryItemRef = self.ref.child(text.lowercased())
////                                        groceryItemRef.setValue(groceryItem.toAnyObject())
//                                        let pathString = text.lowercased()
//
//                                        let goalItemDictionary: [String : AnyObject] = [Constants.GoalItem.Name: text as NSString,
//                                                                                        Constants.GoalItem.Count: 0 as NSNumber,
//                                                                                        Constants.GoalItem.TimeStamp: currentDate as NSString]
//
//                                        self.sendGoalItem(child: pathString, goalItemDictionary)
//        }
//
//
//        // add the button to the UIAlert
//        alert.addAction(saveAction)
//        alert.addAction(cancelAction)
//
//        // In action, setup textField
//        alert.addTextField { (alertTextField) in
//            textField = alertTextField
//            textField.placeholder = "Add a New Goal"
//        }
//
//        // Display UIAlert
//        present(alert, animated: true, completion: nil)

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
