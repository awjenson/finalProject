//
//  Profile3TableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/7/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import WebKit

/*
 May want to break up this design with header, body, and footer cells (3). See this tutorial:
 https://www.makeschool.com/online-courses/tutorials/build-a-photo-sharing-app-9f153781-8df0-4909-8162-bb3b3a2f7a81/improving-the-ui
 */

class ProfileTableViewCell: UITableViewCell, UITextViewDelegate {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var headerUserTextViewLabel: UILabel!
    @IBOutlet weak var userTextView: UITextView! // TEXTVIEW
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userTextView.delegate = self

        // BUTTON UI
//        adviceURLButton.layer.cornerRadius = 10
//        adviceURLButton.layer.borderWidth = 1.0

        userTextView.layer.cornerRadius = 5
        


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.userTextView.resignFirstResponder()
    }



    func textViewDidEndEditing(_ textView: UITextView) {

    }

    
    

    





}
