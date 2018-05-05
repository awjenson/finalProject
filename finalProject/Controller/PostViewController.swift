//
//  PostViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {

    @IBOutlet weak var postTableView: UITableView!


    // MARK: - Properties

//    var posts = [Post]()
    var posts = ["Hi", "Hello", "Hey"]

    override func viewDidLoad() {
        super.viewDidLoad()

        postTableView.rowHeight = UITableViewAutomaticDimension
        postTableView.estimatedRowHeight = 44
        postTableView.dataSource = self
        postTableView.delegate = self

        configureTableView()

//        UserService.posts(for: User.current) { (posts) in
//            self.posts = posts
//            self.postTableView.reloadData()
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureTableView() {

        postTableView.estimatedRowHeight = 50
        postTableView.rowHeight = UITableViewAutomaticDimension

        // remove separators for empty cells
        postTableView.tableFooterView = UIView()
        // remove separators from cells
        postTableView.separatorStyle = .none
    }


}

// MARK: - UITableViewDataSource

extension PostViewController: UITableViewDataSource {

    // Only display the numbers of sections (Goals, Vision, etc)
    func numberOfSections(in tableView: UITableView) -> Int {
//        return posts.count
        return 3
    }

    // Header, Body, Footer cells (3)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.section]

        switch indexPath.row {
        case 0:
            let cell: PostHeaderCell = postTableView.dequeueReusableCell()

            // OLD CODE
//            let cell = tableView.dequeueReusableCell(withIdentifier: "PostHeaderCell") as! PostHeaderCell

            cell.headerLabel.text = "Header Title"

            return cell

        case 1:
            let cell: PostUserTextCell = postTableView.dequeueReusableCell()

            // OLD CODE
//            let cell = tableView.dequeueReusableCell(withIdentifier: "PostUserTextCell") as! PostUserTextCell

            // make call to correct call to user's goals, vision
//            let imageURL = URL(string: post.imageURL)
            cell.userTextView.text = "User text, text."
            return cell

        case 2:

            let cell: PostFooterCell = postTableView.dequeueReusableCell()

            // OLD CODE
//            let cell = tableView.dequeueReusableCell(withIdentifier: "PostFooterCell") as! PostFooterCell

            // set the delegate after setting the PostViewController as the delegate of PostFooterCell.
            cell.delegate = self

            // Update with configreCell() and put this code in the PostFooterCell
            configureCell(cell, with: post)


            return cell

        default:
            fatalError("Error: unexpected indexPath.")
        }
    }

    // TODO: Function should really be (need to fix Post model):
    // func configureCell(_ cell: PostActionCell, with post: Post) {
    // Replace String with Post inside ()'s below:
    // We'll move the configuring of our cell outside into another method so we can reference it later to refresh the UI of our cell.
    func configureCell(_ cell: PostFooterCell, with post: String) {
        cell.quoteAuthorLabel.text = "Author's Name Here"
        cell.quoteTextLabel.text = "Advice from a famous person here. Unique advice for each section."
        cell.quoteButton.titleLabel?.text = "Learn More"
    }
}

extension PostViewController: UITableViewDelegate {

    // Implementing this method returns the height that each cell should be given an index path. This allows us to have cells that are varying heights within the same table view.
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        let post = posts[indexPath.row]
////
////        return post.imageURL
//    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

// MARK: - Extensions

// Now that we can set our PostViewController as the delegate of PostFooterCell, we'll need to implement the protocol PostFooterCellDelegate and set the delegate.
extension PostViewController: PostFooterCellDelegate {
    func didTapQuoteButton(_ quoteButton: UIButton, on cell: PostFooterCell) {

        /*
         Link shows how to change like button for selected button at an indexPath.
         https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/liking-posts

         First we make sure that an index path exists for the the given cell. We'll need the index path of the cell later on to reference the correct post.

         guard let indexPath = tableView.indexPath(for: cell)
         else { return }

         Reference the correct post corresponding with the PostActionCell that the user tapped.

         let post = posts[indexPath.section]

         Basic error handling if something goes wrong with our network request.

         guard let cell = self.tableView.cellForRow(at: indexPath) as? PostActionCell
         else { return }

         Get a reference to the current cell.

         guard let cell = self.tableView.cellForRow(at: indexPath) as? PostActionCell
         else { return }
         */

        print("did tap quote button")
    }
}
