//
//  SwipeViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/19/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit


//class SwipeViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Make room for delete-icon
//        tableView.rowHeight = 80.0
//
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    // MARK: - Table View Data Source Methods
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        // Downcast as! SwipeTableViewCell
//        // Remember to update cell link in Main.storyboard
//        // And update reuseIdentifier because multiple VC's will access this super cell.
//
//
//
//        // set delegate for SwipeTableViewCell as SwipeTableViewController. REMEMBER, anytime we are setting a delegate on anything, we have to add the protocol to the class defintion.
//
//
//        // .attribute of Entity, use the 'name' property to fill up the textLabel's .text property
//
//        return cell
//
//    }
//
//
//    // copied from https://github.com/SwipeCellKit/SwipeCellKit
//
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
//
//        guard orientation == .right else { return nil }
//
//        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
//            // handle action by updating model with deletion
//
//            // Code to delete 'category' or 'item' are located in the child classes.  REMEMBER, the Parent Class cannot know anything about the Child Classes (CategoryVC and ToDoListVC).
//
//        }
//
//        // customize the action appearance
//        deleteAction.image = UIImage(named: "delete-icon")
//
//        return [deleteAction]
//    }
//
//
//    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
//        var options = SwipeTableOptions()
//        options.expansionStyle = .destructive
//        return options
//    }
//
//    func updateModel(at indexPath: IndexPath) {
//        // Update our data model.
//        // This method will be overrided in child class, CategoryViewController, and delete code will be added there. We do this because we can't call 'category' or 'categores' inside the Super Class.
//    }
//
//}

