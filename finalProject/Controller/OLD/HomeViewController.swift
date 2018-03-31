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

//    var morningArray = ["Gym", "Mediate", "Journal","Communte"]
//    var dayArray = ["Work", "Lunch", "Driving","Meeting"]
//    var nightArray = ["Dinner", "Gym", "Date", "Bar", "Movie","Snack"]

//    fileprivate var searches = [FlickrSearchResults]()
//    fileprivate let flickr = Flickr()





    



  

    var headerArray = ["Morning", "Lunch", "Night"]
    var selectedHeader = [String]()

    var morningAdviceArray = ["Tip #1: Eat Veggies", "Tip #2: Drink a glass of water", "Tip #3: Avoid drinking coffee after 2PM", "Tip #4: Ask yourself, what's one thing that you're grateful for?", "Tip #5: Take a deep breath through your nose to calm you down.", "Tip 6: Avoid drink soda and eating candy.","Tip #7: When you stand up to walk, visualize yourself as a superhero and walk how a superhero would walk", "Tip 8: Call your family to stay in touch with them.", "Tip 9: Use self talk at the gym when you get tired to keep your body from quitting too early."]

    var lunchAdviceArray = ["Tip #11: Eat Veggies", "Tip #12: Drink a glass of water", "Tip #13: Avoid drinking coffee after 2PM", "Tip #14: Ask yourself, what's one thing that you're grateful for?", "Tip #15: Take a deep breath through your nose to calm you down.", "Tip 16: Avoid drink soda and eating candy.","Tip #17: When you stand up to walk, visualize yourself as a superhero and walk how a superhero would walk", "Tip 18: Call your family to stay in touch with them.", "Tip 19: Use self talk at the gym when you get tired to keep your body from quitting too early."]

    var nightAdviceArray = ["Tip #31: Eat Veggies", "Tip #32: Drink a glass of water", "Tip #33: Avoid drinking coffee after 2PM", "Tip #34: Ask yourself, what's one thing that you're grateful for?", "Tip #35: Take a deep breath through your nose to calm you down.", "Tip 36: Avoid drink soda and eating candy.","Tip #37: When you stand up to walk, visualize yourself as a superhero and walk how a superhero would walk", "Tip 38: Call your family to stay in touch with them.", "Tip 39: Use self talk at the gym when you get tired to keep your body from quitting too early."]

    var selectedNumber = 2

    var homeTableViewData = [String]()

    var collectionViewCategoryArray = [[String]]()



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        homeTableView.dataSource = self
        homeTableView.delegate = self

        homeSearchBar.delegate = self

        // Load intial Table View data



        collectionViewCategoryArray = [morningAdviceArray, lunchAdviceArray, nightAdviceArray]
        homeTableViewData = collectionViewCategoryArray[selectedNumber]
    }

    override func viewWillAppear(_ animated: Bool) {
        homeTableView.estimatedRowHeight = CGFloat(44.0)
        homeTableView.rowHeight = UITableViewAutomaticDimension

    }


}

extension HomeViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerArray[selectedNumber]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

//        let sectionType = sections[section]
//        switch sectionType {
//        case .Morning:
//            return morningArray.count
//        case .Day:
//            return dayArray.count
//        case .Night:
//            return nightArray.count
//        }

        // may need to add +1 to each
        if selectedNumber == 0 {
            return homeTableViewData.count + 1
        } else if selectedNumber == 1 {
            return homeTableViewData.count + 1
        } else {
            return homeTableViewData.count + 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCategoryTableViewCell", for: indexPath) as! HomeCategoryTableViewCell

            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTipTableViewCell", for: indexPath) as! HomeTipTableViewCell

            if selectedNumber == 0 {
                cell.textLabel?.text = homeTableViewData[indexPath.row - 1]
            } else if selectedNumber == 1 {
                cell.textLabel?.text = homeTableViewData[indexPath.row - 1]
            } else {
                cell.textLabel?.text = homeTableViewData[indexPath.row - 1]
            }

            //cell.textLabel?.text = (adviceArray)[indexPath.row - 1]
            return cell
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // removes gray highlight
        homeTableView.deselectRow(at: indexPath, animated: true)
    }

}

//extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let category = categoryArray[indexPath.row]
//        myAPI(category.id)
//    }
//
//    func myAPI(categoryID:String) {
//        //pass the categoryID into the parameter to get corresponding data.
//        callAPI {
//            if success {
//                tableArray = dataFromServer
//                tableView.reloadData()
//            } else {
//                //some error occurred
//            }
//        }
//    }
//}

// MARK: - Private
// photoForIndexPath is a convenience method that will get a specific photo related to an index path in your collection view. You’re going to access a photo for a specific index path a lot, and you don’t want to repeat code.
//private extension HomeViewController {
//    func photoForIndexPath(indexPath: IndexPath) -> FlickrPhoto {
//        return searches[(indexPath as NSIndexPath).section].searchResults[(indexPath as IndexPath).row]
//    }
//}


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

// MARK: - Search bar methods

extension HomeViewController: UISearchBarDelegate {



    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // send Firebase request with String searched
        // Also, display searchable text options.
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        searchBar.addSubview(activityIndicator)
        activityIndicator.frame = searchBar.bounds
        activityIndicator.startAnimating()

        /*
         flickr.searchFlickrForTerm(searchBar.text!) {
         results, error in

         activityIndicator.removeFromSuperview()

         if let error = error {

         activityIndicator.removeFromSuperview()


         if let error = error {
         // 2
         print("Error searching : \(error)")
         return
         }

         if let results = results {
         // 3
         print("Found \(results.searchResults.count) matching \(results.searchTerm)")
         self.searches.insert(results, at: 0)

         // 4
         self.collectionView?.reloadData()
         }
         }

         textField.text = nil
         textField.resignFirstResponder()
         return true

         */
        searchBar.text = nil
        searchBar.resignFirstResponder()

    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text?.count == 0 {
            // load time based data into table view, basically refresh table view

            DispatchQueue.main.async {
                searchBar.resignFirstResponder()
            }
        }
    }

}

