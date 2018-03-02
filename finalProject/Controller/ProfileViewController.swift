//
//  ProfileViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var visionTextView: UITextView!

    @IBOutlet weak var visionQuoteLabel: UILabel!
    @IBOutlet weak var visionQuoteSourceLabel: UILabel!


    @IBOutlet weak var goalsTableView: UITableView!

    @IBOutlet weak var goalsQuoteLable: UILabel!
    @IBOutlet weak var goalsQuoteSourceLabel: UILabel!

    // create an array of Goal objects
    var goalArray = [Goal]()



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        goalsTableView.delegate = self
        goalsTableView.dataSource = self

        // link to model
        var newGoal1 = Goal()
        newGoal1.title = "Find Mike"
        goalArray.append(newGoal1)

        var newGoal2 = Goal()
        newGoal2.title = "Find Amy"
        goalArray.append(newGoal2)

        var newGoal3 = Goal()
        newGoal3.title = "Find Don"
        goalArray.append(newGoal3)


    }

    // MARK: IB Actions

    @IBAction func addGoalButtonPressed(_ sender: UIButton) {

        var textField = UITextField() // has the scope of the entire IBAction

        let alert = UIAlertController(title: "Add Goal", message: "", preferredStyle: .alert)

        let action = UIAlertAction(title: "Add Goal", style: .default) { (action) in
            // What will happen once the user clicks the add item button on our UIAlert

            // TODO: Add more validation code if the user add an textField.text == nil
            // create a new Goal
            var newGoal = Goal()
            newGoal.title = textField.text!

            self.goalArray.append(newGoal)

            self.goalsTableView.reloadData()

        }
        alert.addTextField { (alertTextField) in
            // This closure only gets triggers once the addTextField has been added to the alert.
            alertTextField.placeholder = "Crate a new goal"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }


}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {

    // MARK: - Tableview Datasource Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goalArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath)

        // reduce the number of times of having to type out goalArray[indexPath.row]
        let goal = goalArray[indexPath.row]

        // When working with model objects (e.g. Goal), goalArray[indexPath.row] only returns a Goal object. So, we need to tap into the title property by adding .title
        cell.textLabel?.text = goal.title

        // use ternary operator to replace if statement: value = condition ? valueIfTrue : valueIfFalse
        cell.accessoryType = goal.done ? .checkmark : .none

        return cell
    }

    // MARK: - Tableview Delegate Methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO
        
        print(goalArray[indexPath.row])

        // set the done property of the selected goal in the goalArray to the opposite of what it is now. So true to false and false to true.

        goalArray[indexPath.row].done = !goalArray[indexPath.row].done

        tableView.deselectRow(at: indexPath, animated: true)

        // reload table view how do we get the delegate method 'cellForRowAt indexPath' to trigger again after we've changed the goalArray[indexPath.row].done property. Calling reloadData() calls the datasource methods again to reload the data.
        goalsTableView.reloadData()

    }



}

