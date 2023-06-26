//
//  ChecklistView.swift
//  finalProject
//
//  Created by Andrew Jenson on 6/3/23.
//  Copyright © 2023 Andrew Jenson. All rights reserved.
//

import UIKit

class ChecklistView: UIView {
    private var checklistItems: [String] = []

    init(frame: CGRect, checklistItems: [String]) {
        super.init(frame: frame)
        self.checklistItems = checklistItems
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .fill
        verticalStackView.spacing = 8.0

        for item in checklistItems {
            let checkboxLabel = UILabel()
            checkboxLabel.text = "☐"
            checkboxLabel.font = UIFont.systemFont(ofSize: 20.0)

            let itemLabel = UILabel()
            itemLabel.text = item
            itemLabel.font = UIFont.systemFont(ofSize: 16.0)

            let horizontalStackView = UIStackView(arrangedSubviews: [checkboxLabel, itemLabel])
            horizontalStackView.axis = .horizontal
            horizontalStackView.alignment = .center
            horizontalStackView.spacing = 8.0

            verticalStackView.addArrangedSubview(horizontalStackView)
        }

        addSubview(verticalStackView)

        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verticalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            verticalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            verticalStackView.topAnchor.constraint(equalTo: topAnchor),
            verticalStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

