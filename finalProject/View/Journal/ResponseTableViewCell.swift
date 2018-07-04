//
//  ResponseTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/30/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class ResponseTableViewCell: UITableViewCell {

    @IBOutlet weak var responseBackground: UIView!
    @IBOutlet weak var responseLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
