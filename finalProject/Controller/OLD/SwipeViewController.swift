//
//  SwipeViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/6/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import SwipeCellKit

// This is a Super Class
class SwipeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SwipeTableViewCellDelegate {




    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: - Table View Data Source Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        // For SwipeCellKit, set the cell to be a SwipeTableViewCell
        // Update main.storyboard for this cell and change Class to SwipeTableViewCell and Module to SwipeCellKit.
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell

        // For SwipeCellKit, set the delegate property on SwipeTableViewCell
        cell.delegate = self

        return cell

    }

    // What happens when the user swipes on the cells
    // function below was copied from the SwipeCell GitHub website:
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {

        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            // handle action by updating model with deletion
            print("Delete Cell")

            // When our delete action happens, its going to call updateModel and pass in an indexPath
            // Our Super Class cannot know anything about its Child Classes.  So, create a function.
            self.updateModel(at: indexPath)

        }

        // customize the action appearance (You need to add this image in)
        deleteAction.image = UIImage(named: "delete")

        return [deleteAction]
    }

    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
        var options = SwipeTableOptions()
        options.expansionStyle = .destructive
        //        options.transitionStyle = .border
        return options
    }

    func updateModel(at indexPath: IndexPath) {
        // Update data model
        

    }


   
}
