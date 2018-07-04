//
//  JournalTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

// The trick to getting Auto Layout to work on a UITableViewCell is to ensure you have constraints to pin each subview on all sides — that is, each subview should have leading, top, trailing and bottom constraints. Then, the intrinsic height of the subviews will be used to dictate the height of each cell.

class JournalTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateLabelHeight: NSLayoutConstraint!

    @IBOutlet var messageBackground: UIView!
    @IBOutlet weak var messageLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        messageBackground.layer.cornerRadius = 12.5
    }
}
