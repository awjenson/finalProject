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

    var goalArray = ["Workout everyday", "Drink glass of water everyone morning", "mediate daily"]



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        goalsTableView.delegate = self
        goalsTableView.dataSource = self

    }

    // MARK: IB Actions

    @IBAction func addGoalButtonPressed(_ sender: UIButton) {

        var textField = UITextField() // has the scope of the entire IBAction

        let alert = UIAlertController(title: "Add Goal", message: "", preferredStyle: .alert)

        let action = UIAlertAction(title: "Add Goal", style: .default) { (action) in
            // What will happen once the user clicks the add item button on our UIAlert

            // TODO: Add more validation code if the user add an textField.text == nil
            self.goalArray.append(textField.text!)
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
        cell.textLabel?.text = goalArray[indexPath.row]
        return cell
    }

    // MARK: - Tableview Delegate Methods

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO
        print(goalArray[indexPath.row])
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        tableView.deselectRow(at: indexPath, animated: true)


    }



}

