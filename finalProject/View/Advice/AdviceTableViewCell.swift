//
//  AdviceTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 10/5/19.
//  Copyright © 2019 Andrew Jenson. All rights reserved.
//

import UIKit
import ChameleonFramework

// The NowTableViewCell is the boss
protocol AdviceTableViewCellDelegate {

    //YouTube: UIButton in UITableViewCell using Delegates and Protocols in Swift
    //https://www.youtube.com/watch?v=UPrBXUWPf6Q

    // Implement these functions in the NowViewController
    func goToSourceURL(url: String)
    //add a delegate variable below, assign it to the VC
}

class AdviceTableViewCell: UITableViewCell {

    // For protocol, create a delegate variable here (the Boss) so we can set NowViewController as our delegate (the intern)
    var delegate: AdviceTableViewCellDelegate?

    @IBOutlet weak var boarderColorView: UIView!

    @IBOutlet weak var adviceTipIconView: UIView!
    @IBOutlet weak var adviceTipNumberLabel: UILabel!



    @IBOutlet weak var adviceTitleLabel: UILabel!
    @IBOutlet weak var adviceBodyLabel: UILabel!
    @IBOutlet weak var adviceSourceButton: UIButton!

    var tipItem: Tip! //created because of delegate and protocol video

    func configureCell(tip: Tip) {

        //set tipItem to tip so you can use it in other methods
        tipItem = tip


        adviceTipIconView.layer.cornerRadius = adviceTipIconView.frame.size.width/2
        adviceTipIconView.clipsToBounds = true
        adviceTipIconView.layer.borderWidth = 1
        adviceTipIconView.layer.borderColor = UIColor.init(hexString: "42A67A")?.cgColor


        adviceTitleLabel.text = tip.title
        adviceBodyLabel.text = tip.body

        //Underline effect for UIButton Title and left aligment
        let attributedString = NSMutableAttributedString(string: tip.sourceName)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributedString.length))
        adviceSourceButton.contentHorizontalAlignment = .left

        adviceSourceButton.setTitle(tip.sourceName, for: .normal)
        adviceSourceButton.titleLabel?.attributedText = attributedString
        // Display UI of CELL Boarder

        // Increase-line-spacing-in-uilabel
        // https://stackoverflow.com/questions/39158604/how-to-increase-line-spacing-in-uilabel-in-swift
        // *** Create attributedString constants
        let attributedStringTitle = NSMutableAttributedString(string: tip.title)
        let attributedStringBody = NSMutableAttributedString(string: tip.body)


        // *** Create instance of `NSMutableParagraphStyle`
        let paragraphStyleTitle = NSMutableParagraphStyle()
        let paragraphStyleBody = NSMutableParagraphStyle()

        // *** set LineSpacing property in points ***
        paragraphStyleTitle.lineSpacing = 2 // Whatever line spacing you want in points
        paragraphStyleBody.lineSpacing = 5

        // *** Apply attribute to strings ***
        attributedStringTitle.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyleTitle, range:NSMakeRange(0, attributedStringTitle.length))

        attributedStringBody.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyleBody, range:NSMakeRange(0, attributedStringBody.length))

        // *** Set Attributed String to your label ***
        adviceTitleLabel.attributedText = attributedStringTitle
        adviceBodyLabel.attributedText = attributedStringBody

        boarderColorView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        boarderColorView.layer.shadowOpacity = 0.2
        boarderColorView.layer.shadowOffset = CGSize(width: 0, height: 2)
        boarderColorView.layer.shadowRadius = 0.75

        boarderColorView.layer.masksToBounds = false

    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    @IBAction func sourceButtonTapped(_ sender: Any) {

        delegate?.goToSourceURL(url: tipItem.sourceURL!)
    }



}
