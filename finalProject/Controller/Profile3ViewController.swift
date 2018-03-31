//
//  Profile3ViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class Profile3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {




    
    @IBOutlet weak var profile3TableView: UITableView!
    

    var results = [Profile3DataResults]()
    var selectedResults = [Profile3DataModel]()

    let dailyRoutine = Profile3DataModel(categoryHeader: "Daily Routine", userDataInput: "My daily routine...", quoteText: "\"A good daily routine is...\"", quoteSource: "by Andrew Jenson", mediaImage: "mediaImage1", mediaTitle: "Watch this to build a daily routine", mediaSource: "by Tim Ferris, Lifehacker")

    let vision = Profile3DataModel(categoryHeader: "Vision Statment", userDataInput: "My vision...", quoteText: "\"A good vision statement is...\"", quoteSource: "by Matt Jenson", mediaImage: "mediaImage2", mediaTitle: "Watch this to build a vision statement", mediaSource: "by Startup Foundry")

    let oneYearGoals = Profile3DataModel(categoryHeader: "One Year Goals", userDataInput: "My one year goals are...", quoteText: "\"A good one year goal is...\"", quoteSource: "by Dave Jenson", mediaImage: "mediaImage3", mediaTitle: "Watch this to build one year goals", mediaSource: "by Harvard Business Review")



    override func viewDidLoad() {
        super.viewDidLoad()

        profile3TableView.dataSource = self
        profile3TableView.delegate = self

        // Do any additional setup after loading the view.
        selectedResults.append(dailyRoutine)
        selectedResults.append(vision)
        selectedResults.append(oneYearGoals)

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedResults.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Profile3TableViewCell

        cell.userTextView.layer.borderColor = UIColor.darkGray.cgColor
        cell.userTextView.layer.borderWidth = 1

        cell.categoryLabel.text = selectedResults[indexPath.row].categoryHeader
        cell.userTextView.text = selectedResults[indexPath.row].userDataInput
        cell.quoteTextView.text = selectedResults[indexPath.row].quoteText
        cell.authorLabel.text = selectedResults[indexPath.row].quoteSource
        cell.mediaTitleLabel.text = selectedResults[indexPath.row].mediaTitle
        cell.mediaSourceLabel.text = selectedResults[indexPath.row].mediaSource

        return cell
    }
    



}
