//
//  CounterTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/23/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class CounterTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
