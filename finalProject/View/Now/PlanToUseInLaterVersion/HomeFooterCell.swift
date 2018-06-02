//
//  HomeFooterCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/18/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class HomeFooterCell: UITableViewCell {

    @IBOutlet weak var sponsorLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    /* I'll keep this button in for now because I eventually hope to get sponsors for this app and to use this button to link to the sponsor's website. */
    @IBAction func sponsorLogoButtonTapped(_ sender: UIButton) {
        print("Go to Sponsor's Website")
    }

}
