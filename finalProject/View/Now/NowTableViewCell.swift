//
//  NowTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit
import ChameleonFramework

// The NowTableViewCell is the boss
protocol NowTableViewCellDelegate {

    //YouTube: UIButton in UITableViewCell using Delegates and Protocols in Swift
    //https://www.youtube.com/watch?v=UPrBXUWPf6Q

    // Implement these functions in the NowViewController
    func goToSourceURL(url: String)
    //add a delegate variable below, assign it to the VC
}

class NowTableViewCell: UITableViewCell {

    // For protocol, create a delegate variable here (the Boss) so we can set NowViewController as our delegate (the intern)
    var delegate: NowTableViewCellDelegate?

    @IBOutlet weak var boarderColorView: UIView!

//    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var tipIconView: UIView!
    @IBOutlet weak var tipNumberLabel: UILabel!


//    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var sourceButton: UIButton!

    var tipItem: Tip! //created because of delegate and protocol video

    func configureCell(tip: Tip) {

        //set tipItem to tip so you can use it in other methods
        tipItem = tip


        tipIconView.layer.cornerRadius = tipIconView.frame.size.width/2
        tipIconView.clipsToBounds = true

       

//        setupProfileImage(stringName: "coffee")

//        headerImageView.image = UIImage(named: "coffee")
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

        //background color for text
        //        attributedStringTitle.addAttributes([ NSAttributedString.Key.backgroundColor: UIColor.black ], range:NSMakeRange(0, attributedStringTitle.length))

        attributedStringBody.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyleBody, range:NSMakeRange(0, attributedStringBody.length))

        // *** Set Attributed String to your label ***
        titleLabel.attributedText = attributedStringTitle
        bodyLabel.attributedText = attributedStringBody








//        boarderColorView.layer.borderColor = UIColor.init(hexString: UIColor.lightGray.hexValue(), withAlpha: 0.8)?.cgColor
//
//        boarderColorView.layer.borderWidth = 2


//        boarderColorView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor

        boarderColorView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        boarderColorView.layer.shadowOpacity = 0.2
        boarderColorView.layer.shadowOffset = CGSize(width: 0, height: 2)
        boarderColorView.layer.shadowRadius = 0.75
//        boarderColorView.layer.cornerRadius = 11

//        boarderColorView.layer.borderWidth = 1
        boarderColorView.layer.masksToBounds = false

        // Display summarized text in
//        tipItem = tip
//        headerLabel.text = ""





        




    }


    func setupProfileImage(stringName: String) {
        print("***")
        print(stringName)

        userProfileImageView.loadImageUsingString(stringName)
    }

    let userProfileImageView: CustomImageView = {
        let imageView = CustomImageView()
        imageView.image = UIImage(named: "day1")
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

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


