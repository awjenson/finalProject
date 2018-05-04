//
//  UITableView+Utility.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

// Start by creating a new protocol that allows us to convert a custom UITableViewCell into it's identifier.
// Add the follow protocol above your UITableView extension.
// This protocol defines a cellIdentifier property that will return the cell identifier of each cell. We'll create a protocol extension to implement a default value for each UITableViewCell.
protocol CellIdentifiable {
    static var cellIdentifier: String { get }
}

// 1 We create an extension on our protocol CellIdentifiable. In our extension, we can define default values for our protocol properties and functions.
extension CellIdentifiable where Self: UITableViewCell {
    // 2 We define a default value for cellIdentifier. We return the name of the custom UITableViewCell class as a string using String(describing:). This prevents us from making typos when typing out the cell identifier as a String.
    static var cellIdentifier: String {
        return String(describing: self)
    }
}

// 3 We make sure that UITableViewCell implements the CellIdentifiable protocol. This will allow us to define constraints on our generic.
extension UITableViewCell: CellIdentifiable {

}

extension UITableView {
    // 1 We define a generic function that extensions UITableView. Notice that we can add constraints to our generic type. In our function declaration we specific that T must be of type UITableViewCell and conform to CellIdentifiable. This allows us to guarentee that we can access the cellIdentifier that we added with our CellIdentifiable protocol.
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: CellIdentifiable {
        // 2 We unwrap the custom UITableViewCell based on it's cellIdentifier and make sure the type conforms to T. In this line, we remove the need to type out the cell identifier as a String and force casting the type explicitly.
        guard let cell = dequeueReusableCell(withIdentifier: T.cellIdentifier) as? T else {
            // 3 If the identifier or casting fails, we crash the app but print a nice error message so we'll know which cell caused the issue.
            fatalError("Error dequeuing cell for identifier \(T.cellIdentifier)")
        }

        return cell
    }
}
