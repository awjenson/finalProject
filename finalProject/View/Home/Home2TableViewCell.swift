//
//  Home2TableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

protocol Home2TableViewCellDelegate {
    // Implement these functions in the HomeViewController
    func goToSourceURL(url: String)
}

class Home2TableViewCell: UITableViewCell {

    // For protocol, create a delegate variable here (the Boss) so we can set HomeViewController as our delegate (the intern)
    var delegate: Home2TableViewCellDelegate?


    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var bodyLabel: UILabel!

    @IBOutlet weak var sourceLabel: UILabel!

    @IBOutlet weak var sponsorButton: RoundButton!
    

    var tipItem: Tip!

    func configureCell(tip: Tip) {

        // Display summarized text in
        tipItem = tip
        titleLabel.text = tip.title
        bodyLabel.text = tip.body
        sourceLabel.text = tip.sourceName
        sponsorButton.setBackgroundImage(UIImage(named: tip.sponsorLogo), for: .normal)
        sponsorButton.setTitle("", for: .normal)
        if sponsorButton.titleLabel?.text == "" {
            sourceLabel.text = ""
        }


        // set text view delegate
        





    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func sponsorButtonTapped(_ sender: Any) {

        print("Sponsor Button Tapped, tell intern, HomeViewController, to execute goToSourceURL() and tell it the url to open up")
        delegate?.goToSourceURL(url: tipItem.sponsorURL)
    }
}


