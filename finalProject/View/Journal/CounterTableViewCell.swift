//
//  CounterTableViewCell.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/23/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class CounterTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!

    var habitItem: GoalItem!

    func configureCell(habit: GoalItem) {
        // Display summarized text in
        habitItem = habit
        titleLabel.text = habit.name
        bodyLabel.text = habit.why
        countLabel.text = String(habit.count)
        emojiLabel.text = displayEmoji(habit.count)

    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func displayEmoji(_ count: Int) -> String {
        switch count {
        case 0:
            return "😴"
        case 1...2:
            return "🙂"
        case 3...9:
            return "😀"
        case 10...24:
            return "😎"
        case 25...65:
            return "💪"
        case 66...99:
            return "🙌"
        case 100...199:
            return "🔥"
        case 200...299:
            return "🥉"
        case 300...399:
            return "🥈"
        case 400...499:
            return "🏆"
        case 500...Int.max:
            return "🦄"
        default:
            return "🌟"
        }
    }

}
