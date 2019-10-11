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

    @IBOutlet weak var tipIconView: UIView!
    @IBOutlet weak var tipNumberLabel: UILabel!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: ShadowLabel!
    @IBOutlet weak var sourceButton: UIButton!

    // For protocol, create a delegate variable here (the Boss) so we can set NowViewController as our delegate (the intern)
    var delegate: JournalTableViewCellDelegate?

     //set tipItem to tip so you can use it in other methods
    var tipItem: Hint!

    func configureCell(tip: Hint) {

         tipItem = tip

        tipIconView.layer.cornerRadius = tipIconView.frame.size.width/2
        tipIconView.clipsToBounds = true
        tipIconView.layer.borderWidth = 1
        tipIconView.layer.borderColor = UIColor.init(hexString: "2283F6")?.cgColor

        titleLabel.text = tip.title
        bodyLabel.text = tip.body

        //Underline effect for UIButton Title and left aligment
        let attributedString = NSMutableAttributedString(string: tip.sourceName)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributedString.length))
        sourceButton.contentHorizontalAlignment = .left

        sourceButton.setTitle(tip.sourceName, for: .normal)
        sourceButton.titleLabel?.attributedText = attributedString
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
        titleLabel.attributedText = attributedStringTitle
        bodyLabel.attributedText = attributedStringBody

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
        print("Hint sounce button tapped")

        delegate?.goToSourceURL(url: tipItem.sourceURL!)
    }

}
