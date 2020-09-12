//
//  MainTopicViewController.swift
//  finalProject
//
//  Created by Andrew Jenson on 5/9/20.
//  Copyright © 2020 Andrew Jenson. All rights reserved.
//

import UIKit

class MainTopicViewController: UIViewController {
    private var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        let leftPanel = UserProfileViewController()
        let centerPanel = NowViewController()
        let rightPanel = ProfileViewController()



        scrollView = UIScrollView.makeHorizontal(
            with: [leftPanel, centerPanel, rightPanel],
            in: self
        )
        view.addSubview(scrollView)
        scrollView.fit(to: view)
    }

}
