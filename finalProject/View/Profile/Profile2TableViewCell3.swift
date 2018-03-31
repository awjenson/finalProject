//
//  Profile2TableViewCell3.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/7/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import WebKit

class Profile2TableViewCell3: UITableViewCell {

    
    @IBOutlet weak var mediaImageView: UIImageView!
    @IBOutlet weak var mediaWebView: WKWebView!
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
