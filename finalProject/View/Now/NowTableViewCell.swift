//
//  NowTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

protocol NowTableViewCellDelegate {
    // Implement these functions in the NowViewController
    func goToSourceURL(url: String)
}

class NowTableViewCell: UITableViewCell {

    // For protocol, create a delegate variable here (the Boss) so we can set NowViewController as our delegate (the intern)
    var delegate: NowTableViewCellDelegate?

    @IBOutlet weak var boarderColorView: UIView!

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!

    var tipItem: Tip!

    func configureCell(tip: Tip) {

        // Display UI of CELL Boarder

        boarderColorView.layer.borderColor = UIColor.lightGray.cgColor

        boarderColorView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        boarderColorView.layer.shadowOpacity = 0.4
        boarderColorView.layer.shadowOffset = CGSize(width: 0, height: 6)
        boarderColorView.layer.shadowRadius = 0.5
        boarderColorView.layer.cornerRadius = 11

//        boarderColorView.layer.borderWidth = 1
        boarderColorView.layer.masksToBounds = false

        // Display summarized text in
        tipItem = tip
        headerLabel.text = tip.header
        headerLabel.layer.opacity = 0.75
        titleLabel.text = tip.title
        bodyLabel.text = tip.body
        sourceLabel.text = tip.sourceName
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}


