//
//  FilterTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/3/23.
//  Copyright © 2023 Andrew Jenson. All rights reserved.
//

import UIKit


// The NowTableViewCell is the boss
protocol FilterTableViewCellDelegate {

    //YouTube: UIButton in UITableViewCell using Delegates and Protocols in Swift
    //https://www.youtube.com/watch?v=UPrBXUWPf6Q

    // Implement these functions in the NowViewController
    func goToSourceURL(url: String)
    //add a delegate variable below, assign it to the VC

    func goToActivityView(header: String, title: String, body: String)

    //Used in TableView Header

    func buttonTappedInSection(_ section: Int)



}

class FilterTableViewCell: UITableViewCell {

    @IBOutlet weak var boarderColorView: UIView!
    @IBOutlet weak var filterTipIconView: UIView!
    @IBOutlet weak var filterTipNumberLabel: UILabel!

    @IBOutlet weak var filterHeaderLabel: UILabel!
    @IBOutlet weak var filterTitleLabel: UILabel!
    @IBOutlet weak var filterBodyLabel: UILabel!
    @IBOutlet weak var filterSourceButton: UIButton!

    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var doneButton: BounceButton!


    //TEST
    var section: Int = 0 // Added this property to store the section index

    // For protocol, create a delegate variable here (the Boss) so we can set NowViewController as our delegate (the intern)
    var delegate: FilterTableViewCellDelegate?

    var tipItem: Tip! //created because of delegate and protocol video




    func configureCell(tip: Tip, section: Int) {

        //set tipItem to tip so you can use it in other methods
        tipItem = tip

        filterHeaderLabel.text = tip.header
        filterTitleLabel.text = tip.title
        filterBodyLabel.text = tip.body

        //DONE BUTTON
        //Check if tip's doneType is true/false
        doneButton.setTitle(tip.doneType ? Constants.DoneTypeIcon.checked : Constants.DoneTypeIcon.unchecked, for: .normal)


        //TEST
        self.section = section // Assign the section index to the property


        //Underline effect for UIButton Title and left aligment
        let attributedString = NSMutableAttributedString(string: tip.sourceName)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributedString.length))

        filterSourceButton.contentHorizontalAlignment = .left
        filterSourceButton.setTitle(tip.sourceName, for: .normal)
        filterSourceButton.titleLabel?.attributedText = attributedString
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
        filterTitleLabel.attributedText = attributedStringTitle
        filterBodyLabel.attributedText = attributedStringBody

        //Buy Button
        if verifyUrl(urlString: tip.buyURL) == true {
            //Sponsor URL exists, display buy button
            buyButton.isHidden = false

        } else {
            //Sponsor URL does not exists
            buyButton.isHidden = true
        }

    }

    // Swift 5
     func verifyUrl (urlString: String?) -> Bool {
        if let urlString = urlString {
            if let url = NSURL(string: urlString) {
                return UIApplication.shared.canOpenURL(url as URL)
            }
        }
        return false
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



    //BounceButton
    @IBAction func doneButtonTapped(_ sender: Any) {

        print("doneButtonTapped")

        print("DoneType before change: \(tipItem.doneType)")

        setUserDefaultsBoolValue(updateDoneType(tipItem.doneType), forKey: tipItem.doneKey)

        print("DoneType after change: \(tipItem.doneType)")
        print("DoneType after change key, value: \(defaults.bool(forKey: tipItem.doneKey))")





        //Check if button is checked

        //Update UserDefaults key,value

        //Get cell's tip's UserDefaults key,value

        //If unchecked, check the box, set the key's value to true
        //tip.doneType.
        //defaults.set(true, forKey: filmKey)

        //If checked, uncheck the box, set the key's value to false

        //Reload tableView Header

        //TEST
        //delegate?.buttonTappedInSection(section)

    }



    @IBAction func buyButtonTapped(_ sender: Any) {
        delegate?.goToSourceURL(url: tipItem.buyURL!)
    }

    @IBAction func shareButtonTapped(_ sender: Any) {
        //create activity view controller
        //activityItems is what you want to share (a tip)
        delegate?.goToActivityView(header: tipItem.header, title: tipItem.title, body: tipItem.body)
    }




}

