//
//  HomeTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/5/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class HomeCategoryTableViewCell: UITableViewCell {

    // added collection view within Table View Cell
    // This is a standard IBOutlet, except I marked it as private. This is to create a separation of concerns – our view controller shouldn’t be accessing the collection view through the table view cell.

    @IBOutlet weak var homeCollectionView: UICollectionView!

//    var categories = ["Category"]
//
    var morningTitleArray = ["Morning", "Gym", "Meditate", "Journal", "Breakfast", "Commute"]

    var lunchTitleArray = ["Lunch", "Exercise", "Career", "Leadership", "Snack", "Exercise"]

    var nightTitleArray = ["Night", "Gym", "Date", "Bar", "Dinner", "Bedtime", "Journal"]

    var selectedNumber = 0




    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

//        if let layout = homeCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            layout.sectionInset = UIEdgeInsetsMake(
//                Constant.offset,    // top
//                Constant.offset,    // left
//                Constant.offset,    // bottom
//                Constant.offset     // right
//            )
//
//            layout.minimumInteritemSpacing = Constant.minItemSpacing
//            layout.minimumLineSpacing = Constant.minLineSpacing
//        }
//        homeCollectionView.isScrollEnabled = false
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self

        

    }
}


extension HomeCategoryTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if selectedNumber == 0 {
            return morningTitleArray.count
        } else if selectedNumber == 1 {
            return lunchTitleArray.count
        } else {
            return nightTitleArray.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell

        let bcolor : UIColor = UIColor.black

        cell.layer.borderColor = bcolor.cgColor
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 3

        cell.backgroundColor=UIColor.white

        if selectedNumber == 0 {
            cell.categoryLabel.text = morningTitleArray[indexPath.row]
        } else if selectedNumber == 1 {
            cell.categoryLabel.text = lunchTitleArray[indexPath.row]
        } else if selectedNumber == 2 {
            cell.categoryLabel.text = nightTitleArray[indexPath.row]
        }

        return cell
    }
}

//extension HomeCategoryTableViewCell: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let itemWidth = Constant.getItemWidth(boundWidth: collectionView.bounds.size.width)
//
//        return CGSize(width: itemWidth, height: itemWidth)
//    }
//}

extension HomeCategoryTableViewCell: UICollectionViewDelegate {

}

