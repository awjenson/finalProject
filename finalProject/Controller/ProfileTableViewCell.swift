//
//  Profile3TableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/7/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import WebKit

class ProfileTableViewCell: UITableViewCell, UITextViewDelegate {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var userTextView: UITextView!
    @IBOutlet weak var adviceTextLabel: UILabel!
    @IBOutlet weak var adviceAuthorLabel: UILabel!
    @IBOutlet weak var adviceURLButton: UIButton!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        userTextView.delegate = self

        adviceURLButton.layer.cornerRadius = 10
        adviceURLButton.layer.borderWidth = 1.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.userTextView.resignFirstResponder()
    }

    @IBAction func adviceURLButtonTapped(_ sender: Any) {
        // Display webview

    }

    func textViewDidEndEditing(_ textView: UITextView) {

    }

    
    

    





}
