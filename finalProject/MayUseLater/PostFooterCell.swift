//
//  PostFooterCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 4/25/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

// Handling Like Button Events. We'll start by creating a delegate for our PostActionCell to communicate with our NowViewController. Whenever the likeButton on the PostActionCell is tapped, it'll notify it's delegate to handle the event.
// The PostFooterCellDelegate allows us to define a protocol that any delegate of PostFooterCell must conform to. This will allow the delegate to handle the event of the quoteButton being tapped.
protocol PostFooterCellDelegate: class {
    func didTapQuoteButton(_ quoteButton: UIButton, on cell: PostFooterCell)
}

class PostFooterCell: UITableViewCell {


    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    @IBOutlet weak var quoteButton: UIButton!

    // Next, we'll add a delegate property of type PostFooterCellDelegate?
    // MARK: - Properties
    weak var delegate: PostFooterCellDelegate?



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        quoteButton.layer.borderColor = UIColor.lightGray.cgColor
        quoteButton.layer.borderWidth = 1
        quoteButton.layer.cornerRadius = 6
        quoteButton.clipsToBounds = true
        quoteButton.setTitle("Learn More", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func quoteButtonTapped(_ sender: UIButton) {
        print("Learn more button tapped")
        // Last, to notify the delegate when a user taps the quote button, we'll call the delegate's didTapQuoteButton(_:on:) whenever quoteButtonTapped is executed:
        delegate?.didTapQuoteButton(sender, on: self)
    }


}
