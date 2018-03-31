//
//  JournalViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 3/9/18.
//  Copyright © 2018 Andrew Jenson. All rights reserved.
//

import UIKit

class JournalViewController: UIViewController {

    @IBOutlet weak var journalTitleLabel: UILabel!

    @IBOutlet weak var journalTitleTextView: UITextView!

    @IBOutlet weak var journalTitleButton: UIButton!

    @IBOutlet weak var journalTableView: UITableView!

    var expandingCellHeight: CGFloat = 200
    let expandingIndexRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        journalTableView.dataSource = self
        journalTableView.delegate = self

        registerKeyboardNotifications()

    }

}
extension JournalViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if let expandingCell = cell as? JournalTableViewCell {
            print("Entered in here")
            expandingCell.delegate = self
        }

        return cell
    }
}

extension JournalViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == expandingIndexRow {
            return expandingCellHeight
        } else {
            return 100
        }
    }
}

extension JournalViewController: ExpandingCellDelegate {

    func updated(height: CGFloat) {
        expandingCellHeight = height

        // Disabling animations gives us our desired behaviour
        UIView.setAnimationsEnabled(false)
        /* These will causes table cell heights to be recaluclated,
         without reloading the entire cell */
        journalTableView.beginUpdates()
        journalTableView.endUpdates()
        // Re-enable animations
        UIView.setAnimationsEnabled(true)

        let indexPath = IndexPath(row: expandingIndexRow, section: 0)

        journalTableView.scrollToRow(at: indexPath, at: .bottom, animated: false)
    }
}

fileprivate extension JournalViewController {

    fileprivate func registerKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: .UIKeyboardWillChangeFrame, object: nil)
    }

    @objc func keyboardWillShow(notification: NSNotification) {

        guard let userInfo = notification.userInfo,
            let keyBoardValueBegin = (userInfo[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue,
            let keyBoardValueEnd = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue, keyBoardValueBegin != keyBoardValueEnd else {
                return
        }

        let keyboardHeight = keyBoardValueEnd.height

        journalTableView.contentInset.bottom = keyboardHeight
    }
}
