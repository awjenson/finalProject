//
//  HomeViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var homeSearchBar: UISearchBar!
  
    @IBOutlet weak var homeTableView: UITableView!

    // MARK: - Properties

    

    var titleArray = ["Gym", "Mediate", "Journal", "Dinner", "Home", "Bedtime", "Date", "Bar"]

    var adviceArray = ["Tip #1: Eat Veggies", "Tip #2: Drink a glass of water", "Tip #3: Avoid drinking coffee after 2PM", "Tip #4: Ask yourself, what's one thing that you're grateful for?", "Tip #5: Take a deep breath through your nose to calm you down.", "Tip 7: Avoid drink soda and eating candy.","Tip #8: When you stand up to walk, visualize yourself as a superhero and walk how a superhero would walk", "Tip 9: Call your family to stay in touch with them.", "Tip 10: Use self talk at the gym when you get tired to keep your body from quitting too early."]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        homeTableView.dataSource = self
        homeTableView.delegate = self
    }


}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (adviceArray.count + 1)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCategoryTableViewCell", for: indexPath) as! HomeCategoryTableViewCell

            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTipTableViewCell", for: indexPath) as! HomeTipTableViewCell

            cell.textLabel?.text = (adviceArray)[indexPath.row - 1]
            return cell
        }
    }
}

extension HomeViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        switch indexPath.row {
//        case 0:
//
//            return 100
//
//        case 1:
//
//            return 90
//        default:
//            return UITableViewAutomaticDimension
//        }
//    }
}

