//
//  Profile3TableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/8/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class Profile3TableViewCell: UITableViewCell {

    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var userTextView: UITextView!

    @IBOutlet weak var quoteTextView: UITextView!

    @IBOutlet weak var authorLabel: UILabel!

    @IBOutlet weak var mediaImageView: UIImageView!

    @IBOutlet weak var mediaTitleLabel: UILabel!
    

    @IBOutlet weak var mediaSourceLabel: UILabel!






    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
