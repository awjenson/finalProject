//
//  Profile2TableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/6/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import WebKit // need this to display web media

// Drag and drop a new UILabel onto the cell. Set the new label’s Lines property (the number of lines the label can have at most) to 0 in the Identity Inspector.Setting the number of lines is very important for dynamically sized cells. A label with number of lines set to 0 will grow based on how much text it is showing. A label with number of lines set to any other number will truncate the text once it’s out of available lines.
// For TextViews, disabling scrolling is of similar importance to setting a label to 0 lines. With scrolling disabled, the text view knows to grow its size to fit all of its content, since the user won’t be able to scroll through the text.

class Profile2TableViewCell1: UITableViewCell {

    @IBOutlet weak var userTextView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
