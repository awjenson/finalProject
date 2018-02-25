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

    let goalArray = ["Workout everyday", "Drink glass of water everyone morning", "mediate daily"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        goalsTableView.delegate = self
        goalsTableView.dataSource = self

    }

    // MARK: Tableview Datasource Methods

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

