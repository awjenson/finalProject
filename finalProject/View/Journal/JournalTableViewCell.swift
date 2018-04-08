//
//  JournalTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//


import UIKit

//protocol ExpandingCellDelegate {
//    func updated(height: CGFloat)
//}

// The trick to getting Auto Layout to work on a UITableViewCell is to ensure you have constraints to pin each subview on all sides — that is, each subview should have leading, top, trailing and bottom constraints. Then, the intrinsic height of the subviews will be used to dictate the height of each cell.

class JournalTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet var messageBackground: UIView!
    @IBOutlet weak var messageLabel: UILabel!

    // Not used, but may use later
//    @IBOutlet var avatarImageView: UIImageView!
//    @IBOutlet var messageBody: UILabel!
//    @IBOutlet var senderUsername: UILabel!

//    var delegate: ExpandingCellDelegate?

    @IBOutlet weak var journalTextView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()

//        journalTextView.delegate = self
        messageBackground.layer.cornerRadius = 10
//        messageBackground.layer.borderWidth = 1.0
//        messageBackground.layer.borderColor = UIColor.black.cgColor
    }
}

//extension JournalTableViewCell: UITextViewDelegate {
//
//    func textViewDidChange(_ textView: UITextView) {
//
//        let height = textView.newHeight(withBaseHeight: 200)
//
//        delegate?.updated(height: height)
//    }
//}

