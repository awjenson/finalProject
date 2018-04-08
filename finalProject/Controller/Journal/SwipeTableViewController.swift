//
//  SwipeTableViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/6/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import SwipeCellKit

// Our Parent / Super class for Swipe functionality. The Children classes will be CategoryViewController and ToDoListViewController. The Super Class cannot know anything about their child classes.

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Make room for delete-icon
        tableView.rowHeight = 80.0

    }

    // MARK: - Table View Data Source Methods

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Downcast as! SwipeTableViewCell
        // Remember to update cell link in Main.storyboard
        // And update reuseIdentifier because multiple VC's will access this super cell.

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell

        // set delegate for SwipeTableViewCell as SwipeTableViewController. REMEMBER, anytime we are setting a delegate on anything, we have to add the protocol to the class defintion.
        cell.delegate = self

        // .attribute of Entity, use the 'name' property to fill up the textLabel's .text property

        return cell

    }


    // copied from https://github.com/SwipeCellKit/SwipeCellKit

    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {

        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion

            // Code to delete 'category' or 'item' are located in the child classes.  REMEMBER, the Parent Class cannot know anything about the Child Classes (CategoryVC and ToDoListVC).
            self.updateModel(at: indexPath)

            print("Delete Cell")
        }

        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")

        return [deleteAction]
    }


    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        return options
    }

    func updateModel(at indexPath: IndexPath) {
        // Update our data model.
        // This method will be overrided in child class, CategoryViewController, and delete code will be added there. We do this because we can't call 'category' or 'categores' inside the Super Class.
    }






}
