//
//  MainTopicTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/9/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit

// The NowTableViewCell is the boss
protocol MainTopicTableViewCellDelegate {

}

class MainTopicTableViewCell: UITableViewCell {


    @IBOutlet weak var categoryView: UIView!

    @IBOutlet weak var title: UILabel!

    @IBOutlet weak var subTitle: UILabel!

    @IBOutlet weak var icon: UIImageView!

    var delegate: MainTopicTableViewCellDelegate?

    var mainTopicItem: MainTopic! //created because of delegate and protocol video
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(mainTopic: MainTopic) {

        mainTopicItem = mainTopic

        title.text = mainTopicItem.title
        subTitle.text = mainTopicItem.subTitle
        icon.image = UIImage(named: mainTopicItem.icon)


        }



    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
