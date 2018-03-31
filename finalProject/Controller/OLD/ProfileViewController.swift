//
//  ProfileViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import RealmSwift


class ProfileViewController: SwipeViewController {

    @IBOutlet weak var visionTextView: UITextView!

    @IBOutlet weak var visionQuoteLabel: UILabel!
    @IBOutlet weak var visionQuoteSourceLabel: UILabel!


    @IBOutlet weak var goalsTableView: UITableView!

    @IBOutlet weak var goalsQuoteLable: UILabel!
    @IBOutlet weak var goalsQuoteSourceLabel: UILabel!

    // create an array of Goal objects

    // initialize a new access point to the Realm Database
    let realm = try! Realm()
    // create collection types (of Results)
    var vision: Results<Vision>?
    var goals: Results<Goal>?




    override func viewDidLoad() {
        super.viewDidLoad()

        // Fetch data from Realm
        loadVision()
        loadGoals()

        goalsTableView.rowHeight = 200.0


        goalsTableView.delegate = self
        goalsTableView.dataSource = self
    }

    // MARK: - Data Manipulation Methods

    // Save Data
    // Pass in the new category that we created
    func saveVision(vision: Vision) {
        do {
            // try to commit changes to Realm
            try realm.write {
                // the changes we want to make is we want to add our new vision to the realm database
                realm.add(vision)
            }
        } catch {
            print("saveCategories(): Error saving context \(error)")
        }

    }

    func saveGoal(goal: Goal) {
        do {
            // try to commit changes to Realm
            try realm.write {
                // the changes we want to make is we want to add our new goal to the realm database
                realm.add(goal)
            }
        } catch {
            print("saveGoal(): Error saving context \(error)")
        }
        // After save, update tableView
        goalsTableView.reloadData()
    }


    // Load Data
    // READ data here in our load functions
    // Method with Default Value listed inside loadItems(): = Item.fetchRequest() in case not parameter passed in (see viewDidLoad).
    func loadVision() {

        // We specify the type (Category.self), this will pull out ALL of items (objects) inside Realm that are of Category objects. The data type of the objects that we get back are of type Results which is a container type that comes from RealmSwift.
        vision = realm.objects(Vision.self)


        // Call all data source methods to update table view

    }

    func loadGoals() {

        // We specify the type (Category.self), this will pull out ALL of items (objects) inside Realm that are of Category objects. The data type of the objects that we get back are of type Results which is a container type that comes from RealmSwift.
        goals = realm.objects(Goal.self)

        // Call all data source methods to update table view
        goalsTableView.reloadData()
    }

    // MARK: - Delete Data From Swipe

    override func updateModel(at indexPath: IndexPath) {

        // ONLY if you want to execute code within the super class will you call the super class
        //super.updateModel(at: IndexPath)

        // Update Realm, inside a do, try, catch block
        if let goalToDelete = self.goals?[indexPath.row] {
            do {
                try self.realm.write {
                    // Update Realm with Delete of the selected goal
                    self.realm.delete(goalToDelete)
                }
            } catch {
                print("Error with deleting a goal, \(error)")
            }
        }
    }



    // MARK: - Tableview Datasource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals?.count ?? 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Access cell in Super Class at the current index path
        let cell = super.tableView(tableView, cellForRowAt: indexPath)


        // grab the current selected goal (goals?[indexPath.row])
        // reduce the number of times of having to type out goalArray[indexPath.row]
        if let goal = goals?[indexPath.row] {

            // When working with model objects (e.g. Goal), goalArray[indexPath.row] only returns a Goal object. So, we need to tap into the title property by adding .title
            cell.textLabel?.text = goal.title

            // use ternary operator to replace if statement: value = condition ? valueIfTrue : valueIfFalse
            cell.accessoryType = goal.done ? .checkmark : .none

        } else {
            cell.textLabel?.text = "No Goals Added"
        }

        return cell
    }

    // MARK: - Tableview Delegate Methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // Tells the delegate which is this class, ToDoListViewController

        // UPDATE (U in CRUD): Similar to WRITING Data
        // We check to see if the goal is not nil, if not, then we pick out the goal at indexPath.row and set the done checkmark to the opposite of what it was.
        // If we select any of the cells then we grab a reference to the 'item' property at the selected indexPath row.
        if let goal = goals?[indexPath.row] {
            // if not nil then we can access this goal object
            // Now what do you want to do when you tap the indexPath.row...
            do {
                // calling 'realm.write' will try to update our Realm database with whatever is inside the block of code below.
                try realm.write {
                    goal.done = !goal.done
                    // Deleting in realm is as simple as realm.delete(goal)
                    //realm.delete(goal)
                }
            } catch {
                print("Error saving done status, \(error)")
            }
        }

        // After update, reload table view in order to call the method 'cellForRowAt indexPath' to update the cells based on the done property (checkmark).
        goalsTableView.reloadData()

        goalsTableView.deselectRow(at: indexPath, animated: true)
    }




    // MARK: IB Actions

    @IBAction func addGoalButtonPressed(_ sender: UIButton) {

        var textField = UITextField() // has the scope of the entire IBAction

        let alert = UIAlertController(title: "Add Goal", message: "", preferredStyle: .alert)

        let action = UIAlertAction(title: "Add Goal", style: .default) { (action) in
            // What will happen once the user clicks the add item button on our UIAlert

            // TODO: Add more validation code if the user add an textField.text == nil
            // create a new Goal
            let newGoal = Goal()
            newGoal.title = textField.text!
            newGoal.dateCreated = Date()

            // Because Results is an auto-updating container type in Realm returned from object queries, we don't need to .append anymore.

            // save to Realm database (saveGoal includes reloading table view)
            self.saveGoal(goal: newGoal)

        }
        alert.addTextField { (alertTextField) in
            // This closure only gets triggers once the addTextField has been added to the alert.
            alertTextField.placeholder = "Add a new goal"
            textField = alertTextField
        }
        alert.addAction(action)

        // Display UIAlert
        present(alert, animated: true, completion: nil)
    }
}


//extension ProfileViewController: SwipeTableViewCellDelegate {
//
//    // What happens when the user swipes on the cells
//    // function below was copied from the SwipeCell GitHub website:
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
//
//        guard orientation == .right else { return nil }
//
//        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
//            // handle action by updating model with deletion
//            print("Delete Cell")
//
//            // Update Realm, inside a do, try, catch block
//            if let goalToDelete = self.goals?[indexPath.row] {
//                do {
//                    try self.realm.write {
//                        // Update Realm with Delete of the selected goal
//                        self.realm.delete(goalToDelete)
//                    }
//                } catch {
//                    print("Error with deleting a goal, \(error)")
//                }
//            }
//        }
//
//        // customize the action appearance (You need to add this image in)
//        deleteAction.image = UIImage(named: "delete")
//
//        return [deleteAction]
//    }
//
//    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
//        var options = SwipeTableOptions()
//        options.expansionStyle = .destructive
//        //        options.transitionStyle = .border
//        return options
//    }
//}


extension ProfileViewController {


}



