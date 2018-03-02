//
//  HomeViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 2/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeSearchBar: UISearchBar!

    @IBOutlet weak var homeCollectionView: UICollectionView!

    @IBOutlet weak var homeTableView: UITableView!

    var titleArray = ["Gym", "Mediate", "Journal", "Dinner", "Home", "Bedtime", "Date", "Bar"]

    var adviceArray = ["Tip #1: Eat Veggies", "Tip #2: Drink a glass of water", "Tip #3: Avoid drinking coffee after 2PM", "Tip #4: Ask yourself, what's one thing that you're grateful for?", "Tip #5: Take a deep breath through your nose to calm you down.", "Tip 7: Avoid drink soda and eating candy.","Tip #8: When you stand up to walk, visualize yourself as a superhero and walk how a superhero would walk", "Tip 9: Call your family to stay in touch with them.", "Tip 10: Use self talk at the gym when you get tired to keep your body from quitting too early."]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        


    }


}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell

        cell.titleLabel.text = titleArray[indexPath.row]

        return cell
    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return adviceArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        cell.textLabel?.text = adviceArray[indexPath.row]
        return cell
    }




}
