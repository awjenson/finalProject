//
//  JournalTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

protocol JournalTableViewCellDelegate {
    // Implement these functions in the NowViewController
    func goToSourceURL(url: String)
}

// The trick to getting Auto Layout to work on a UITableViewCell is to ensure you have constraints to pin each subview on all sides — that is, each subview should have leading, top, trailing and bottom constraints. Then, the intrinsic height of the subviews will be used to dictate the height of each cell.

class JournalTableViewCell: UITableViewCell {

    @IBOutlet weak var boarderColorView: UIView!
    @IBOutlet weak var titleLabel: ShadowLabel!
    @IBOutlet weak var bodyLabel: ShadowLabel!
    @IBOutlet weak var sourceLabel: ShadowLabel!

    // For protocol, create a delegate variable here (the Boss) so we can set NowViewController as our delegate (the intern)
    var delegate: NowTableViewCellDelegate?

    var tipItem: JournalTip!

    func configureCell(tip: JournalTip) {
        // Display summarized text in
        tipItem = tip
        titleLabel.text = tip.title
        bodyLabel.text = tip.body
        sourceLabel.text = tip.sourceName
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        // cell
        backgroundColor = UIColor.clear

//        // UIView
//        boarderColorView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
    }
}
